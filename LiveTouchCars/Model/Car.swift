//
//  Car.swift
//  LiveTouchCars
//
//  Created by João Raffs on 08/07/20.
//  Copyright © 2020 Joao Raffs. All rights reserved.
//

import Foundation

class Car: Decodable{
    
    internal init(id: String, nome: String, tipo: String, descricao: String, urlFoto: String, urlVideo: String, latitude: String, longitude: String) {
        self.id = id
        self.nome = nome
        self.tipo = tipo
        self.descricao = descricao
        self.urlFoto = urlFoto
        self.urlVideo = urlVideo
        self.latitude = latitude
        self.longitude = longitude
    }
    
    

    
    var id: String
    var nome: String
    var tipo: String
    var descricao: String
    var urlFoto: String
    var urlVideo: String
    var latitude: String
    var longitude: String
    
}
