//
//  SceneDelegate.swift
//  CoinNews
//
//  Created by itsmuffintime on 29.10.2019.
//  Copyright © 2019 Vonny. All rights reserved.
//

import Foundation
import SwiftUI

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    
    var window: UIWindow?
    
    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        if let windowScene = scene as? UIWindowScene {
            let window = UIWindow(windowScene: windowScene)
            window.rootViewController = UIHostingController(rootView: ContentView()
              //environmentObject(ContentView())
            )
            self.window = window
            window.makeKeyAndVisible()
        }
    }
}
