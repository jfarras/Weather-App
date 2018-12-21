//
//  Weather.swift
//  Weather
//
//  Created by Jordi Farras Mañe on 20/12/2018.
//  Copyright © 2018 Jordi. All rights reserved.
//

import Foundation
import UIKit
enum WeatherIcon {
    
    var image : UIImage{
        
        switch self {
            case .clearDay: return UIImage(named: "sunny")!
            case .rain: return UIImage(named: "cloud")!
        default:
            return UIImage(named: "cloud")!
        }
    }
    case clearDay
    case clearNight
    case rain
    case fog
    
    init(icon: String){
        switch icon{
        case "clear-day": self = .clearDay
        case "clear-night": self = .clearNight
        
        default:
        self = .clearDay
            
        }
    }
}


