//
//  Whoewx3y+UIViewControllerExtension.swift
//  Whoewx3yCommon
//
//  Created by nutdanai on 25/3/2562 BE.
//  Copyright © 2562 nutdanai. All rights reserved.
//

import UIKit

public extension UIViewController {

    public func hideKeyboardWhenTappedAround() {
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(UIViewController.dismissKeyboard))
        tap.cancelsTouchesInView = false
        view.addGestureRecognizer(tap)
    }
    
    @objc func dismissKeyboard() {
        view.endEditing(true)
    }
    
    public func pushVC(vc: UIViewController) {
        navigationController?.pushViewController(vc, animated: true)
    }
    
    public func popVC() {
        navigationController?.popViewController(animated: true)
    }
}

extension UINavigationController {
    func popToViewController(toVc: AnyClass, animated: Bool = true) {
        if let vc = viewControllers.filter({
            $0.isKind(of: toVc)
        }).last {
            popToViewController(vc, animated: animated)
        }
    }
}
