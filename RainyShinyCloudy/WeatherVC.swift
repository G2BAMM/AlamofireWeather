//
//  ViewController.swift
//  RainyShinyCloudy
//
//  Created by Brian McAulay on 05/05/2017.
//  Copyright © 2017 Brian McAulay. All rights reserved.
//

import UIKit

class WeatherVC: UIViewController {

    @IBOutlet weak var vwMainView: UIView!
    @IBOutlet weak var lblDate: UILabel!
    @IBOutlet weak var lblTemperature: UILabel!
    @IBOutlet weak var lblLocation: UILabel!
    @IBOutlet weak var imgWeatherIcon: UIImageView!
    @IBOutlet weak var lblWeatherType: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

