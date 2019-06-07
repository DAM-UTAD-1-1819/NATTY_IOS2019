//
//  Instrucciones.swift
//  APPTRABAJO
//
//  Created by NATALIA PAVAN SOTO on 29/5/19.
//  Copyright © 2019 NATALIA PAVAN SOTO. All rights reserved.
//


import Foundation

//Clase Preparacion
public class Preparacion: CustomStringConvertible {
    public var description: String = ""
    
    var photo: String?
    var name: String?
    var preparation: String?

    
    

    convenience init(photo: String? = nil, name: String? = nil, description: String? = nil, preparation: String? = nil) {
        self.init()
        
        self.photo = photo
        self.name = name
        self.preparation = preparation
        
        
        
}


}















