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
    
    
    @IBOutlet weak var mImageView: UIImageView!
    @IBOutlet weak var mNameLabel: UILabel!
    @IBOutlet weak var mDescriptionLabel: UILabel!
    @IBOutlet weak var mPreparationLabel: UILabel!
    
    
    
    
    override func prepareForReuse() {
        mImageView?.image = nil
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
        update(image: preparacion?.photo)
        update(name: preparacion?.name)
        update( description: preparacion?.description)
        
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
    
    
    private func update(description: String?){
        mDescriptionLabel?.text = description
    }
    
    
    
    
}

