//
//  Location.swift
//  RainyShinyCloudy
//
//  Created by Brian McAulay on 27/05/2017.
//  Copyright © 2017 Brian McAulay. All rights reserved.
//

import Foundation
import CoreLocation

class Location{
    static var sharedInstance = Location()
    private init(){}
    
    var longitude: Double! = 55.86515
    var latitude: Double! = -4.25763
    
}
