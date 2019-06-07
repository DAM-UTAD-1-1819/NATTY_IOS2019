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
    var top: String?
 
 
  
    
    
    convenience init(photo:String? = nil, name: String?  = nil,  top:String? = nil){
     self.init()
   
    self.photo = photo
    self.name = name
    self.top = top
  
    
    }
    
    
    
    
    

}
