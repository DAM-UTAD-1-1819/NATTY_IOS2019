//
//  CategoriasDetailViewController.swift
//  APPTRABAJO
//
//  Created by NATALIA PAVAN SOTO on 31/5/19.
//  Copyright © 2019 NATALIA PAVAN SOTO. All rights reserved.
//


import UIKit


protocol CategoriasDetailDelegate {
    func onDelete(categorias: Categorias?)
}


class CategoriasDetailViewController: UIViewController {
    
    
    // MARK: - IBOutlets -
    @IBOutlet weak var mImageView: UIImageView!
    @IBOutlet weak var mTitleLabel: UILabel!
    @IBOutlet weak var mDescriptionText: UITextView!
    
    // MARK: - IBActions -
    @IBAction func onDeletePressed(sender: UIButton) {
        showAlert(title: NSLocalizedString("title_alert", comment: ""),
                  message: NSLocalizedString("message_alert", comment: ""),
                  actionAccept: { _ in
                    self.navigateBack()
        })
    }
    
    
    
    var data: Categorias?
    var delegate: CategoriasDetailDelegate?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configure(image: data?.photo)
        configure(title: data?.title)
        configure(description: data?.description)
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
    
    private func configure(description: String?) {
        mDescriptionText?.text = description
    }
    
    private func navigateBack() {
        delegate?.onDelete(categorias: data)
        
        navigationController?.popViewController(animated: true)
    }
}






