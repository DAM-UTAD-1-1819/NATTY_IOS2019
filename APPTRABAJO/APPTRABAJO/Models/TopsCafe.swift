//
//  TopsCafé.swift
//  APPTRABAJO
//
//  Created by NATALIA PAVAN SOTO on 21/5/19.
//  Copyright © 2019 NATALIA PAVAN SOTO. All rights reserved.
//

import UIKit

class TopsCafe: CustomStringConvertible {
    
    var description: String = ""
    var photo: String?
    var name: String?
    var country: String?
    var nivel: String?
    
    
    init(description:String, photo:String, name: String, country:String, nivel:String){
    
    self.description = description
    self.photo = photo
    self.name = name
    self.country = country
    self.nivel = nivel
    
    
    }
    
    
    
    
    

}
