//
//  UIViewController+Init.swift
//  CoinNews
//
//  Created by Vonny on 13/06/2019.
//  Copyright © 2019 Vonny. All rights reserved.
//

import Foundation

extension UIViewController {
    static func getInstance<T: UIViewController>(fromStoryboard storyboard: String, bundle: Bundle = Bundle.main) throws -> T {
        let storyboard = UIStoryboard(name: storyboard, bundle: bundle)
        if let ctrl = storyboard.instantiateViewController(withIdentifier: String(describing: T.self)) as? T {
            return ctrl
        } else {
            throw AppError.controllerNotFound(ctrl: String(describing: T.self))
        }
    }
}
