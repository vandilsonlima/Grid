//
//  AppDelegate.swift
//  Grid
//
//  Created by vandilsonlima on 11/05/2017.
//  Copyright (c) 2017 vandilsonlima. All rights reserved.
//

import UIKit
import Grid

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication,
                     didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        Grid.shared.isEnabled = true
        return true
    }
}

