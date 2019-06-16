//
//  BaseCoordinator.swift
//  CoinNews
//
//  Created by Vonny on 13/06/2019.
//  Copyright © 2019 Vonny. All rights reserved.
//

import Foundation

class BaseCoordinator {
    
    public func push(_ viewController: UIViewController, rootVC: UIViewController) {
        rootVC.navigationController?.pushViewController(viewController, animated: true)
    }
    
    public func present(_ viewController: UIViewController, rootVC: UIViewController, useOwnNavbar: Bool = true) {
        if useOwnNavbar {
            let navCtrl = UINavigationController(rootViewController: viewController)
            rootVC.navigationController?.present(navCtrl, animated: true, completion: nil)
            return
        }
        rootVC.navigationController?.present(viewController, animated: true, completion: nil)
    }
}
