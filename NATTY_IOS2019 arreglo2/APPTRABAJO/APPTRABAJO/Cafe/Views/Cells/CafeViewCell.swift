//
//  CafeViewCell.swift
//  APPTRABAJO
//
//  Created by NATALIA PAVAN SOTO on 29/5/19.
//  Copyright © 2019 NATALIA PAVAN SOTO. All rights reserved.
//

import UIKit

class CafeViewCell: UITableViewCell {
    
    
    var data: Cafe?
    
    
    
    static let mIdentifier: String = String(describing: CafeViewCell.self)
    static let mEstimatedHeight: CGFloat = 120.0

    
    @IBOutlet weak var mImageView: UIImageView!
    @IBOutlet weak var mNameLabel: UILabel!
    @IBOutlet weak var mCountryLabel: UILabel!
    @IBOutlet weak var mDescriptionLabel: UILabel!
    

    
    override func prepareForReuse() {
        mImageView?.image = nil 
        mNameLabel?.text = ""
        mCountryLabel?.text = ""
        mDescriptionLabel?.text = ""
        
    }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
     override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    

    
    
    func update(data cafe : Cafe?){
        update(image: cafe?.photo)
        update(name: cafe?.name)
        update(country:cafe?.country)
        
    }
            
    private func update(image: String?){
        guard let imageData = image else{
            return
        }
        mImageView?.image = UIImage(named: imageData)
    }
    
 
    
    private func update(name: String?){
        mNameLabel?.text = name
    }

    private func update(country: String?){
       mCountryLabel?.text = country
 
}
   
    
    private func update(description: String?){
        mDescriptionLabel?.text = description
    }
    
    
    
                
}

