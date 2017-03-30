//
//  AppDelegate.swift
//  TabbarDemo
//
//  Created by iFlame. on 30/03/17.
//  Copyright © 2017 iFlame. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    var appNavigation : UINavigationController?
    
    /*
     Create tabbar controller
        1. Create view controllers instance (UIViewController) you want to add in tab
        2. Create tabBarController instance (UITabBarController)
        3. Add view controllers to tabBarController.viewControllers
        4. set tabBarController as rootContoller
        5. set tabBarItem for each viewContoller
     */
    

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        
        window = UIWindow(frame: UIScreen.main.bounds)
        
        showLogin()
        
        window?.makeKeyAndVisible()

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

    
    func showLogin(){
        
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        let rootViewController = storyBoard.instantiateInitialViewController()
        
        if appNavigation == nil{
            appNavigation = UINavigationController(rootViewController: rootViewController!)
            appNavigation?.isNavigationBarHidden = true
        }
        else {
            
            appNavigation!.setViewControllers([rootViewController!,appNavigation!.topViewController!], animated: false)
            appNavigation!.popViewController(animated: true)
            
        }
        window?.rootViewController = appNavigation
        
        print("\(rootViewController)")
        
    }
    
    func showTabbar(){
        
        let storyBoard = UIStoryboard(name: "Tabbar", bundle: nil)
        let rootViewController = storyBoard.instantiateInitialViewController()
        
        if appNavigation == nil{
            appNavigation = UINavigationController(rootViewController: rootViewController!)
            appNavigation?.isNavigationBarHidden = true
        }
        else{
            appNavigation!.setViewControllers([rootViewController!], animated: true)
        }
        
        window?.rootViewController = appNavigation

        print("\(rootViewController)")
        
    }

}

