//
//  CafeviewController.swift
//  APPTRABAJO
//
//  Created by NATALIA PAVAN SOTO on 21/5/19.
//  Copyright © 2019 NATALIA PAVAN SOTO. All rights reserved.
//

import UIKit



class CafeViewController: UIViewController {

   
    //MARK: - IBOutlets -
    @IBOutlet weak var mtableView: UITableView!
    

    
    private var mCafe: Array<Cafe>? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configure(TableView: mtableView)
        
     
    }
    }



//MARK: - UITableViewDataSource
extension CafeViewController: UITableViewDataSource, UITableViewDelegate {
    
    private func configure(TableView: UITableView){
        mtableView.dataSource = self
        mtableView.delegate = self
    }
    
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return defaultCafe.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return CafeViewCell.mEstimatedHeight
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) ->
        UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: CafeViewCell.mIdentifier,
                                                     for: indexPath)
            
            (cell as? CafeViewCell)?.update(data: defaultCafe[indexPath.row])
            
          
             return cell
    }
}
