//
//  ViewController.swift
//  RainyShinyCloudy
//
//  Created by Brian McAulay on 05/05/2017.
//  Copyright © 2017 Brian McAulay. All rights reserved.
//

import UIKit
import Alamofire
import CoreLocation

class WeatherVC: UIViewController, UITableViewDataSource, UITableViewDelegate, CLLocationManagerDelegate  {

    @IBOutlet weak var vwMainView: UIView!
    @IBOutlet weak var lblDate: UILabel!
    @IBOutlet weak var lblTemperature: UILabel!
    @IBOutlet weak var lblLocation: UILabel!
    @IBOutlet weak var imgWeatherIcon: UIImageView!
    @IBOutlet weak var lblWeatherType: UILabel!
    @IBOutlet weak var tvTableView: UITableView!
    
    let locationManager = CLLocationManager()
    var currentLocation: CLLocation!
    var currentWeather: CurrentWeather!
    var forecast: Forecast!
    var forecasts = [Forecast]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tvTableView.delegate = self
        tvTableView.dataSource = self
        locationManager.delegate = self
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.requestWhenInUseAuthorization()
        locationManager.startMonitoringSignificantLocationChanges()
        currentWeather = CurrentWeather()
        
    }
    
    
    override func viewDidAppear(_ animated: Bool) {
        //This is where we build our weather stuff
        super.viewDidAppear(animated)
        locationAuthStatus()
        print(CURRENT_WEATHER_URL)
        print(FORECAST_URL)
        


    }

    func locationAuthStatus(){
        if CLLocationManager.authorizationStatus() == .authorizedWhenInUse{
            currentLocation = locationManager.location
            Location.sharedInstance.latitude = currentLocation.coordinate.latitude
            Location.sharedInstance.longitude = currentLocation.coordinate.longitude
            //Now we have our location, we can go an retrieve the 'today' detail
            currentWeather.downloadWeatherDetail {
                self.downloadForecastData{
                self.updateMainUI()
            }
        }

        } else{
            locationManager.requestWhenInUseAuthorization()
            locationAuthStatus()
        }
    }

    
    func downloadForecastData(completed: @escaping DownloadComplete){
        let forecastURL = URL(string: FORECAST_URL)!
        Alamofire.request(forecastURL).responseJSON{ response in
            let result = response.result
            if let dict = result.value as? Dictionary<String, Any>{
                if let list = dict["list"] as? [Dictionary<String, Any>]{
                    for obj in list {
                        let forecast = Forecast(weatherDict: obj)
                        self.forecasts.append(forecast)
                        print(obj)
                    }
                    self.tvTableView.reloadData()
                }
            }
         completed()
        }
        
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return forecasts.count
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if let cell = tableView.dequeueReusableCell(withIdentifier: "WeatherCell", for: indexPath) as? WeatherCell{
           cell.configureCell(forecast: forecasts[indexPath.row])
            return cell
        }else{
            return WeatherCell()
        }
        
        
    }
    
    func updateMainUI(){
        print("Called build UI function")
        lblLocation.text = currentWeather.cityName
        lblWeatherType.text = currentWeather.weatherType
        lblTemperature.text = "\(currentWeather.currentTemp)°C"
        imgWeatherIcon.image = UIImage(named: currentWeather.weatherType)
        lblDate.text = currentWeather.date
    }

}

