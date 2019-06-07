//
//  CategoriasViewCell.swift
//  APPTRABAJO
//
//  Created by NATALIA PAVAN SOTO on 29/5/19.
//  Copyright © 2019 NATALIA PAVAN SOTO. All rights reserved.
//

import UIKit

class CategoriasViewCell: UICollectionViewCell {
    static let mIdentifier: String = String(describing: CategoriasViewCell.self)
    static let mEstimatedHeight: CGFloat = 150.0
    
    // MARK: - Outlets -
    @IBOutlet weak var mImageView: UIImageView!
    @IBOutlet weak var mTitleLabel: UILabel!

    
    
  
    override func prepareForReuse() {
    mImageView?.image = nil
    mTitleLabel?.text = ""
    }
    
    // MARK: - Configure methods -
    func configureCell(data: Categorias) {
        configure(image: data.photo)
        configure(title: data.title)
    }
    
    
    // MARK: - Private methods -
    private func configure(image: String?) {
    guard let photo = image else {
    return
    }
    
    mImageView?.image = UIImage(named: photo)
    }
    
    private func configure(title: String?) {
    mTitleLabel?.text = title
    }
    
  
    }

