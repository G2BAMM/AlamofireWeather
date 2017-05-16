//
//  Constants.swift
//  RainyShinyCloudy
//
//  Created by Brian McAulay on 10/05/2017.
//  Copyright © 2017 Brian McAulay. All rights reserved.
//

import Foundation

let BASE_URL = "http://samples.openweathermap.org/data/2.5/weather?"
let LATITUDE = "lat="
let LONGITUDE = "&lon="
let APP_ID = "&appid="
let API_KEY = "63b871ac8bf576ff8e956984441dd547"
typealias DownloadComplete = () -> ()

let CURRENT_WEATHER_URL = "\(BASE_URL)\(LATITUDE)-36\(LONGITUDE)123\(APP_ID)\(API_KEY)"





