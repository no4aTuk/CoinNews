//
//  BaseCoordinator.swift
//  CoinNews
//
//  Created by Vonny on 13/06/2019.
//  Copyright © 2019 Vonny. All rights reserved.
//

import Foundation

class BaseCoordinator {
    
    public func push(_ viewController: UIViewController) {
        viewController.navigationController?.pushViewController(viewController, animated: true)
    }
    
    public func present(_ viewController: UIViewController) {
        viewController.navigationController?.present(viewController, animated: true, completion: nil)
    }
}
