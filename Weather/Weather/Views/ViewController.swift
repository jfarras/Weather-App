//
//  ViewController.swift
//  Weather
//
//  Created by Jordi on 19/12/2018.
//  Copyright © 2018 Jordi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var currentTemp: UILabel!
    @IBOutlet weak var currentHumidity: UILabel!
    let apiKey = "xxxxxxxxxxxxxx"

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let currentWeather = CurrentWeather( temperature: 22, humidity :0.33,wind:0.2)
        let currentWeatherViewModel = CurrentWeatherViewModel(model: currentWeather)
        displayWeather(currentWeatherViewModel:currentWeatherViewModel)
        
        let baseUrl = URL(string: "https://api.darksky.net/forecast/\(apiKey)/")
        guard let url = URL(string: "37.8267,-122.4233", relativeTo: baseUrl) else{
            return
        }
        
        let session = URLSession(configuration: URLSessionConfiguration.default)
        let request = URLRequest(url: url)
        
        let task = session.dataTask(with: request){(data,response,error) in
            
            let jsonDict = try! JSONSerialization.jsonObject(with: data!, options: []) as! [String: Any]
            let current = jsonDict["current"] as! [String:Any]
            print(data)
        }
        
        task.resume()
    }
    
    func displayWeather( currentWeatherViewModel:CurrentWeatherViewModel){
        
        currentTemp.text = currentWeatherViewModel.temperature
        currentHumidity.text = currentWeatherViewModel.humidity
    }
    
}

