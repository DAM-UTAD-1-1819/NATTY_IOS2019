//
//  TopsCafeviewController.swift
//  APPTRABAJO
//
//  Created by NATALIA PAVAN SOTO on 29/5/19.
//  Copyright © 2019 NATALIA PAVAN SOTO. All rights reserved.
//


import UIKit



class TopsCafeViewController: UIViewController {
    
    
    //MARK: - IBOutlets -
    @IBOutlet weak var mtableView: UITableView!
    
    
    
    private var mTopsCafe: Array<TopsCafe>? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configure(TableView: mtableView)
        
        
    }
}



//MARK: - UITableViewDataSource
extension TopsCafeViewController: UITableViewDataSource, UITableViewDelegate {
    
    private func configure(TableView: UITableView){
        mtableView.dataSource = self
        mtableView.delegate = self
    }
    
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return defaultTopscafe.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return TopsCafeViewCell.mEstimatedHeight
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) ->
        UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: TopsCafeViewCell.mIdentifier,
                                                     for: indexPath)
            
            (cell as? TopsCafeViewCell)?.update(data: defaultTopscafe[indexPath.row])
            
            
            return cell
    }
}
