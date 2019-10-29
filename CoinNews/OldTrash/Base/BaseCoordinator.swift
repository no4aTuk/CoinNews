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
    
    public func showRootAnimated(controller: UIViewController, in window: UIWindow) {
        let snapshot:UIView = (window.snapshotView(afterScreenUpdates: true))!
        controller.view.addSubview(snapshot)
        
        window.rootViewController = controller
        window.makeKeyAndVisible()
        
        UIView.animate(withDuration: 0.5, animations: {() in
            snapshot.layer.opacity = 0
            snapshot.layer.transform = CATransform3DMakeScale(1.5, 1.5, 1.5)
        }, completion: {
            (value: Bool) in
            snapshot.removeFromSuperview()
        })
    }
}
