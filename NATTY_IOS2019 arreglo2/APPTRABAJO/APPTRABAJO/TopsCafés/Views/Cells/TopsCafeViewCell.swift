//
//  TopsCafeViewCell.swift
//  APPTRABAJO
//
//  Created by NATALIA PAVAN SOTO on 29/5/19.
//  Copyright © 2019 NATALIA PAVAN SOTO. All rights reserved.
//

import UIKit

class TopsCafeViewCell: UITableViewCell {
    
    
    var data: TopsCafe?
    
    
    
    static let mIdentifier: String = String(describing: TopsCafeViewCell.self)
    static let mEstimatedHeight: CGFloat = 120.0
    
    
    @IBOutlet weak var mImageView: UIImageView!
    @IBOutlet weak var mNameLabel: UILabel!
    @IBOutlet weak var mTopLabel: UILabel!
    
    
    
    
    
    override func prepareForReuse() {
        mImageView?.image = nil
        mNameLabel?.text = ""
        mTopLabel?.text = ""
        
        
    }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    
    func update(data TopsCafe : TopsCafe?){
        update(image: TopsCafe?.photo)
        update(name: TopsCafe?.name)
        update(top: TopsCafe?.top)
        
        
        
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
    
    private func update(top: String?){
        mTopLabel?.text = top
        
    }
    
    
  
        
    }


