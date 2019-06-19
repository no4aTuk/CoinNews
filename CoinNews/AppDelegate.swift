//
//  AppDelegate.swift
//  CoinNews
//
//  Created by Vonny on 13/06/2019.
//  Copyright © 2019 Vonny. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    
    static var shared: AppDelegate {
        return UIApplication.shared.delegate as! AppDelegate
    }
    
    var isLoggedIn: Bool = false

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        setupGlobalAppearance()
        startInitialScreen()
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }
}

//MRAK: Private func
private extension AppDelegate {
    private func setupGlobalAppearance() {
        // nav bar
        let font = UIFont.appFont(.bold, size: 16.0)
        UINavigationBar.appearance().barTintColor = AppConstants.Colors.white //bar background
        UINavigationBar.appearance().tintColor = AppConstants.Colors.green //same as foregroundColor for backButton
        UINavigationBar.appearance().backIndicatorImage = AppImages.back
        UINavigationBar.appearance().backIndicatorTransitionMaskImage = AppImages.backTransition
        
        UIBarButtonItem.appearance().setTitleTextAttributes([NSAttributedString.Key.font : font,
                                                             NSAttributedString.Key.foregroundColor: AppConstants.Colors.mainBlack!],
                                                            for: UIControl.State.normal) //back button font
        UIBarButtonItem.appearance().setTitleTextAttributes([NSAttributedString.Key.font : font,
                                                             NSAttributedString.Key.foregroundColor: AppConstants.Colors.mainBlack!],
                                                            for: UIControl.State.selected)
        UINavigationBar.appearance().titleTextAttributes =
            [NSAttributedString.Key.font: font,
             NSAttributedString.Key.foregroundColor : AppConstants.Colors.mainBlack!] //bar title font and color
        
        let tabItemFont = UIFont.appFont(.regular, size: 10)
        UITabBarItem.appearance().setTitleTextAttributes([NSAttributedString.Key.font: tabItemFont], for: .normal)
        UITabBarItem.appearance().setTitleTextAttributes([NSAttributedString.Key.font: tabItemFont], for: .selected)
    }
    
    private func startInitialScreen() {
        self.window = UIWindow(frame: UIScreen.main.bounds)
        RootCoordinator.init().start(in: self.window!)
    }
}

