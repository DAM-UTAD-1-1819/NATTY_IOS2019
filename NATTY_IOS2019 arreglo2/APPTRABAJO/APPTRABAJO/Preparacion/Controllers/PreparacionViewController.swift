//
//  InstruccionesViewController.swift
//  APPTRABAJO
//
//  Created by NATALIA PAVAN SOTO on 29/5/19.
//  Copyright © 2019 NATALIA PAVAN SOTO. All rights reserved.
//

import UIKit

//clase controlador preparacion

class PreparacionViewController: UIViewController {
    
    
    //MARK: - IBOutlets -
    @IBOutlet weak var mtableView: UITableView!
    
    
    
    
    
    private var mPreparacion: Array<Preparacion>? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configure(TableView: mtableView)
        
        
    }
}



//MARK: - UITableViewDataSource
extension PreparacionViewController: UITableViewDataSource, UITableViewDelegate {
    
    private func configure(TableView: UITableView){
        mtableView.dataSource = self
        mtableView.delegate = self
    }
    
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return defaultPreparacion.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return PreparacionViewCell.mEstimatedHeight
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) ->
        UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: PreparacionViewCell.mIdentifier,
                                                     for: indexPath)
            
            (cell as? PreparacionViewCell)?.update(data: defaultPreparacion[indexPath.row])
            
            
            return cell
    }
}
