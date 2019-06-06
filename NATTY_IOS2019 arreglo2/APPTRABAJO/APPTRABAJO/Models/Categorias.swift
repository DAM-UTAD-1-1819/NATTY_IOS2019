//
//  Categorias.swift
//  APPTRABAJO
//
//  Created by NATALIA PAVAN SOTO on 21/5/19.
//  Copyright © 2019 NATALIA PAVAN SOTO. All rights reserved.
//




import Foundation

//Clase Categorias
public class Categorias: CustomStringConvertible {
    var photo: String?
    var title: String?
    
    
 
    public var description: String {
      
        return """
        Categorias:
        title: \(String(describing: title))
        """
    }
    
    convenience init(photo: String? = nil, title: String? = nil) {
        self.init()
        
       self.photo = photo
        self.title = title

}

        
}
    
    
    
    
    
    

            

        
        
        
        


