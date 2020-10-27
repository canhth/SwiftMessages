//
//  AppDelegate.swift
//  Demo
//
//  Created by Tim Moose on 8/11/16.
//  Copyright © 2016 SwiftKick Mobile. All rights reserved.
//

import UIKit
import DoraemonKit

let brandColor = UIColor(red: 42/255.0, green: 168/255.0, blue: 250/255.0, alpha: 1)

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        window?.tintColor = brandColor
        UISwitch.appearance().onTintColor = brandColor
        
        DoraemonManager.shareInstance().install()

        if let viewController = storyboard.instantiateViewController(withIdentifier: "DemoViewController") as? ViewController
        {
            let navigationController = UINavigationController(rootViewController: viewController)

            window = UIWindow()
            window?.rootViewController = navigationController
            window?.makeKeyAndVisible()
        }
        
        return true
    }
}

