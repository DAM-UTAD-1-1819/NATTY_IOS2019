//
//  PreparacionViewCell.swift
//  APPTRABAJO
//
//  Created by Natalia on 06/06/2019.
//  Copyright © 2019 NATALIA PAVAN SOTO. All rights reserved.
//


import UIKit

class PreparacionViewCell: UITableViewCell {
    
    
    var data: Preparacion?
    
    
    
    static let mIdentifier: String = String(describing: PreparacionViewCell.self)
    static let mEstimatedHeight: CGFloat = 120.0
    
    
    @IBOutlet weak var mNameLabel: UILabel!
    @IBOutlet weak var mDescriptionLabel: UILabel!
    
    
    
    
    override func prepareForReuse() {
        mNameLabel?.text = ""
        mDescriptionLabel?.text = ""
      
        
    }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    
    
    
    
    func update(data preparacion : Preparacion?){
        update(name: preparacion?.name)
        update( description: preparacion?.description)
        
    }
    
   
    
    
    private func update(name: String?){
        mNameLabel?.text = name
    }
    
    
    private func update(description: String?){
        mDescriptionLabel?.text = description
    }
    
    
    
    
}

