//
//  MainSplitViewController.swift
//  Simple Image Editor
//
//  Created by Samantha Gatt on 10/25/18.
//  Copyright © 2018 Samantha Gatt. All rights reserved.
//

import Cocoa

class MainSplitViewController: NSSplitViewController {

    let filters = [Filter(ciFilter: CIFilter(name: "CIColorControls")!, attributes: [])]
}

