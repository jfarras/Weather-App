//
//  JSONDownloader.swift
//  Weather
//
//  Created by Jordi Farras Mañe on 21/12/2018.
//  Copyright © 2018 Jordi. All rights reserved.
//

import Foundation

class JSONDownloader {
    
    let session: URLSession
    
    init(configuration:URLSessionConfiguration){
        
        self.session = URLSession(configuration: configuration)
    }
    
    convenience init(){
        self.init(configuration: .default)
    }
    
    typealias JSON = [String: AnyObject]
    
    func jsonTask(request: URLRequest,completion: @escaping (JSON, DarkSkyError?)->Void) ->URLSessionTask {
        
        let task = session.dataTask(with: request){(data,response,error) in
            
            guard let httpResponse = response as? HTTPURLResponse else{
            return
            }
            
        }
        return task
    }
}

