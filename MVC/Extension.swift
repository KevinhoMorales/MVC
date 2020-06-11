//
//  Extension.swift
//  MVC
//
//  Created by Kevinho Morales on 6/11/20.
//  Copyright © 2020 Kevinho Morales. All rights reserved.
//

import UIKit

extension UIViewController {
    
    func showAlert(withTitle: String, withMessage: String, buttonOK: String) {
        let alert = UIAlertController(title: withTitle, message: withMessage, preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: buttonOK, style: UIAlertAction.Style.default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
    
}
