//
//  ViewController.swift
//  RainyShinyCloudy
//
//  Created by Brian McAulay on 05/05/2017.
//  Copyright © 2017 Brian McAulay. All rights reserved.
//

import UIKit

class WeatherVC: UIViewController, UITableViewDataSource, UITableViewDelegate  {

    @IBOutlet weak var vwMainView: UIView!
    @IBOutlet weak var lblDate: UILabel!
    @IBOutlet weak var lblTemperature: UILabel!
    @IBOutlet weak var lblLocation: UILabel!
    @IBOutlet weak var imgWeatherIcon: UIImageView!
    @IBOutlet weak var lblWeatherType: UILabel!
    @IBOutlet weak var tvTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //tvTableView.delegate = WeatherTable!.self as? UITableViewDelegate
        //tvTableView.dataSource = WeatherTable!.self as? UITableViewDataSource
        // Do any additional setup after loading the view, typically from a nib.
        tvTableView.delegate = self
        tvTableView.dataSource = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "WeatherCell", for: indexPath)
        print("New cell \(cell)")
        return cell
    }

}

