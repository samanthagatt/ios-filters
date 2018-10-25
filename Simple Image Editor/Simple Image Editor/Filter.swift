//
//  Filter.swift
//  Simple Image Editor
//
//  Created by Samantha Gatt on 10/25/18.
//  Copyright © 2018 Samantha Gatt. All rights reserved.
//

import Foundation
import CoreImage

class FilterAttribute: NSObject {
    
    @objc dynamic var name: String
    @objc dynamic var value: CGFloat
    
    init(name: String, value: CGFloat) {
        self.name = name
        self.value = value
    }
}

class Filter: NSObject {
    
    @objc dynamic var ciFilter: CIFilter
    @objc dynamic var attributes: [FilterAttribute]
    
    init(ciFilter: CIFilter, attributes: [FilterAttribute]) {
        self.ciFilter = ciFilter
        self.attributes = attributes
    }
}
