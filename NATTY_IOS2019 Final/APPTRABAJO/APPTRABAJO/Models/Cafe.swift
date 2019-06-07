//
//  Cafe.swift
//  APPTRABAJO
//
//  Created by NATALIA PAVAN SOTO on 28/5/19.
//  Copyright © 2019 NATALIA PAVAN SOTO. All rights reserved.
//

import Foundation

class Cafe: NSObject{
    
    var photo: String?
    var name: String?
    var country: String?
    
    
    
    
    public var  Description: String {
        return """
       Cafe:
        name: \(String(describing: name))
        country: \(String(describing: country))
       """
    }
    
    
    
    convenience init(photo:String?, name: String?, country:String?) {

        self.init()
        self.photo = photo
        self.name = name
        self.country = country
        
        
    }
}
    



   



    
    
    
    


