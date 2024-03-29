//
//  ExtensionViewController.swift
//  APPTRABAJO
//
//  Created by Natalia on 06/06/2019.
//  Copyright © 2019 NATALIA PAVAN SOTO. All rights reserved.
//


import UIKit

extension UIViewController {
    func showAlert(title: String, message: String, actionAccept: ((UIAlertAction) -> Void)? = nil, actionCancel: ((UIAlertAction) -> Void)? = nil) {
        let alert = UIAlertController(title: title,
                                      message: message,
                                      preferredStyle: .alert)
        
        alert.addAction(UIAlertAction(title: NSLocalizedString("accept", comment: ""),
                                      style: .default,
                                      handler: actionAccept))
        alert.addAction(UIAlertAction(title: NSLocalizedString("cancel", comment: ""),
                                      style: .cancel,
                                      handler: actionCancel))
        
        self.present(alert, animated: true)
    }
}
