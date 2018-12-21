//
//  currentWeatherViewModel.swift
//  Weather
//
//  Created by Jordi Farras Mañe on 20/12/2018.
//  Copyright © 2018 Jordi. All rights reserved.
//

import Foundation
import UIKit

struct CurrentWeatherViewModel {
    
    let temperature : String
    let humidity: String
    
    init (model:CurrentWeather){
        
        let temperatureRounded = Int(model.temperature)
        let humidityRounded = Int(model.humidity * 100)
    
        self.temperature = String(temperatureRounded)
        self.humidity = String(humidityRounded)

    }
    
    
    
}
