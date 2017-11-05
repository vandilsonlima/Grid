//
//  GridViewController.swift
//  GridTest
//
//  Created by Vandilson Lima on 05/11/17.
//  Copyright © 2017 Vandilson Lima. All rights reserved.
//

import UIKit

class GridViewController: UIViewController {

    var size: CGSize! {
        didSet{
            gridView.size = size
        }
    }
    var color: UIColor! {
        didSet{
            gridView.color = color
        }
    }

    private lazy var gridView = GridView()

    override func loadView() {
        view = gridView
        view.backgroundColor = .clear
    }
}
