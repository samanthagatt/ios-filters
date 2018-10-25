//
//  MainSplitViewController.swift
//  Simple Image Editor
//
//  Created by Samantha Gatt on 10/25/18.
//  Copyright © 2018 Samantha Gatt. All rights reserved.
//

import Cocoa

@objc protocol FiltersPresenter {
    @objc var filtersController: NSArrayController? { get set }
}

class MainSplitViewController: NSSplitViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        for splitViewItem in splitViewItems {
            guard let splitView = splitViewItem.viewController as? FiltersPresenter else { continue }
            splitView.filtersController = filtersController
        }
        
        print(self.filters.count)
    }

    
    @objc dynamic var filters = [Filter(filterName: "Color Controls", ciFilter: CIFilter(name: "CIColorControls")!, attributes: [FilterAttribute(attributeName: "Brightness", key: kCIInputBrightnessKey, value: 0.0), FilterAttribute(attributeName: "Contrast", key: kCIInputContrastKey, value: 1.0), FilterAttribute(attributeName: "Saturation", key: kCIInputSaturationKey, value: 1.0)])]
    
    
    @IBOutlet var filtersController: NSArrayController!
    
}

