//
//  WeatherCell.swift
//  RainyShinyCloudy
//
//  Created by Brian McAulay on 08/05/2017.
//  Copyright © 2017 Brian McAulay. All rights reserved.
//

import UIKit

class WeatherCell: UITableViewCell {
    
    @IBOutlet weak var lblWeatherType: UILabel!
    @IBOutlet weak var lblMinTemp: UILabel!
    @IBOutlet weak var imgWeatherIcon: UIImageView!
    @IBOutlet weak var lblMaxTemp: UILabel!
    @IBOutlet weak var lblDayOfWeek: UILabel!
    
    func configureCell(forecast: Forecast){
        lblWeatherType.text = forecast.weatherType
        lblMinTemp.text = "\(forecast.lowTemp)°C"
        lblMaxTemp.text = "\(forecast.highTemp)°C"
        lblDayOfWeek.text = forecast.date + ", " + forecast.forecastTime
        imgWeatherIcon.image = UIImage(named: forecast.weatherType + " Mini")
    }
    

}
