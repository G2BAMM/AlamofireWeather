//
//  Constants.swift
//  RainyShinyCloudy
//
//  Created by Brian McAulay on 10/05/2017.
//  Copyright © 2017 Brian McAulay. All rights reserved.
//

import Foundation

let BASE_URL = "http://api.openweathermap.org/data/2.5/weather?"
let LATITUDE = "lat="
let LONGITUDE = "&lon="
let APP_ID = "&appid="
let API_KEY = "63b871ac8bf576ff8e956984441dd547"
typealias DownloadComplete = () -> ()

let CURRENT_WEATHER_URL = "\(BASE_URL)\(LATITUDE)55.8651500\(LONGITUDE)-4.2576300\(APP_ID)\(API_KEY)"
let FORECAST_URL = "http://api.openweathermap.org/data/2.5/forecast?lat=55.8651500&lon=-4.2576300&appid=63b871ac8bf576ff8e956984441dd547"




