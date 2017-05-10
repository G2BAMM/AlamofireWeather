//
//  WeatherTable.swift
//  RainyShinyCloudy
//
//  Created by Brian McAulay on 10/05/2017.
//  Copyright © 2017 Brian McAulay. All rights reserved.
//

import UIKit

class WeatherTable: UITableView {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "WeatherCell", for: indexPath)
        print("New cell \(cell.index)")
        return cell
    }


}
