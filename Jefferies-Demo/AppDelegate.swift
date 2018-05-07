//
//  AppDelegate.swift
//  Jefferies-Demo
//
//  Created by Anthony Layne on 5/7/18.
//  Copyright © 2018 Wiggleroom LLC. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        return true
    }
}

extension String {
    static func sum(_ string1: String, and string2: String) -> String? {
        guard let number1 = NumberFormatter().number(from: string1)?.intValue,
            let number2 = NumberFormatter().number(from: string2)?.intValue else {
                return nil
        }

        let sumVal = number1 + number2
        return String(sumVal)
    }
}

