//
//  Cafe.swift
//  APPTRABAJO
//
//  Created by NATALIA PAVAN SOTO on 28/5/19.
//  Copyright © 2019 NATALIA PAVAN SOTO. All rights reserved.
//

import Foundation

class Cafe:CustomStringConvertible  {
    var description: String = ""
    var photo: String?
    var name: String?
    var country: String?
    
    
   convenience init(photo:String? = nil, description:String? = nil, name:String?=nil, country:String?=nil, Cafes: [Cafe]? = nil, TopsCafe: [TopsCafe]? = nil){
        self.init()
        
        self.photo = photo
        self.name = name
        self.country = country
        self.description = description!
        
        
        
    }
    
    
    
    

        
    }
    
    


    


   



    
    
    
    


