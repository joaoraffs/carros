//
//  Model.swift
//  LiveTouchCars
//
//  Created by João Raffs on 08/07/20.
//  Copyright © 2020 Joao Raffs. All rights reserved.
//

import Foundation

class Model{
    
    private init(){
        self.getCars()
    }
    
    public static var instance = Model()
    
    public var allCars = [Car]()
    public func getCars(){
        let session = URLSession.shared
               
               let quoteURL = URL(string: "https://carros-springboot.herokuapp.com/api/v1/carros")
               
               let dataTask = session.dataTask(with: quoteURL!) {
                   (data: Data?, response: URLResponse?, error: Error?) in
                   
                   if let error = error{
                       print("error")
                   }else{
                       print("entra no else")
                       if let data = data{
                           let dataString = String(data: data, encoding: String.Encoding.utf8)
                           if let jsonObj = try? JSONSerialization.jsonObject(with: data, options: .allowFragments) as? [NSDictionary]{
                                for obj in jsonObj{
                                     
                                    let decoder = JSONDecoder()
                                    decoder.keyDecodingStrategy = .convertFromSnakeCase
                                    let dataExample : NSData = NSKeyedArchiver.archivedData(withRootObject:obj) as NSData
                                    if let car : Car = try? decoder.decode(Car.self, from: dataExample as Data){
                                        self.allCars.append(car)
                                        print(car)
                                    }else{
                                        
                                    }
                                }
                           }else{
                               print("")
                           }
                       }else{
                        
                    }
                   }
               }
               dataTask.resume()
    }
}
