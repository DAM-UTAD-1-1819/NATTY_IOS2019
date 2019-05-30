//
//  TopsCafeviewController.swift
//  APPTRABAJO
//
//  Created by NATALIA PAVAN SOTO on 21/5/19.
//  Copyright © 2019 NATALIA PAVAN SOTO. All rights reserved.
//

import UIKit


var Cafes = ["Cafe Arabica", "Cafe Robusta", " Cafe Espresso", "Ristretto", " Machiatto" ]



class CafeviewController: UIViewController{
    
    
    @IBOutlet weak var TableView: UITableView?
    
    
    
  
   public  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return (cafes.count)
    }
    
   public  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    
    let cell = UITableViewCell(style:UITableViewCellStyle.default, reuseIdentifier:"cell")
    cell.textLabel?.text = Cafes[indexPath.row]
    

    
    return(cell)
    }
    
    
 
    /*func tableView(_tableView: UITableView, commit editingStyle: UITableViewCellStyle, forRowAt indxPath: IndexPath)
    
    {
        if editingStyle == UITableViewCellStyle.delete
        {
            cafes.remove(at: indxPath.row)
            myTableView.reloadData()
            
            
        }


    
       override  func viewDidLoad() {
        super.viewDidLoad()
    
        
        override func didReceiveMemoryWarning(){
            super.didReceiveMemoryWarning()*/
        }
    
        
        
      
        
        

        
        
        
    
    
     
        
        
    
    
    
    
    
    





