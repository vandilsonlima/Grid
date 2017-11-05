//
//  Grid.swift
//  GridTest
//
//  Created by Vandilson Lima on 05/11/17.
//  Copyright © 2017 Vandilson Lima. All rights reserved.
//

import UIKit

public final class Grid {

    public static let shared = Grid()

    private let window: UIWindow
    private let viewController = GridViewController()

    public var isEnabled = false {
        didSet {
            window.isHidden = !isEnabled
        }
    }

    public var color: UIColor!{
        didSet{
            viewController.color = color
        }
    }

    public var size: CGSize! {
        didSet{
            viewController.size = size
        }
    }

    private init() {
        window = UIWindow(frame: UIScreen.main.bounds)
        window.rootViewController = viewController
        window.backgroundColor = .clear
        window.isUserInteractionEnabled = false
        window.windowLevel = 100
    }
}
