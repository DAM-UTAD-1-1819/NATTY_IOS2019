//
//  TopsCafeviewController.swift
//  APPTRABAJO
//
//  Created by NATALIA PAVAN SOTO on 21/5/19.
//  Copyright © 2019 NATALIA PAVAN SOTO. All rights reserved.
//

import UIKit



class CafeviewController: UIViewController {

var Cafes = ["Cafe1", "cafe2", " cafe3", "cafe4", "cafe5" ]


    @IBOutlet weak var TableView: UITableView!
    override  func viewDidLoad() {
        super.viewDidLoad()
    
    
        func didReceiveMemoryWarning(){
            super.didReceiveMemoryWarning()
        }
        
        
        
        
        
        
        extension  ViewController:UITableViewDelegate, UITableViewDataSource{
            
            
            func tableView(_TableView: UITableView, numberOfRowsinSection: Int )-> Int{
                return photo.count
                
            }
            
            
            func tableView(_)
            
            
        }
        
}
}

        
      
        
        

        
        
        
    
    
     
        
        
    
    
    
    
    
    





