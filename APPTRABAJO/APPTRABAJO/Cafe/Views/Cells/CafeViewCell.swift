//
//  CafeViewCell.swift
//  APPTRABAJO
//
//  Created by NATALIA PAVAN SOTO on 29/5/19.
//  Copyright © 2019 NATALIA PAVAN SOTO. All rights reserved.
//

import UIKit

class CafeViewCell: UITableViewCell {
    
    static let mIdentifier: String = String(describing: CafeViewCell.self)
    static let mEstimatedHeight: CGFloat = 150.0

    
    
    @IBOutlet weak var mView: UIView?
    @IBOutlet weak var mImageView: UIImageView?
    @IBOutlet weak var mNameLabel: UILabel?
    @IBOutlet weak var mCountryLabel: UILabel?
    

    
    override func prepareForReuse() {
        mImageView?.image = nil
        mNameLabel?.text = ""
        mCountryLabel?.text = ""
        
        
    
        
        /*override func setSelected(sele, animated: <#T##Bool#>)*/
        
            
            
        
                
}
}
