//
//  Filter.swift
//  Simple Image Editor
//
//  Created by Samantha Gatt on 10/25/18.
//  Copyright © 2018 Samantha Gatt. All rights reserved.
//

import Foundation
import CoreImage

@objc class FilterAttribute: NSObject {
    
    @objc dynamic var name: String
    @objc dynamic var key: String
    @objc dynamic var value: CGFloat
    
    init(attributeName: String, key: String, value: CGFloat) {
        self.name = attributeName
        self.key = key
        self.value = value
    }
}

@objc class Filter: NSObject {
    
    @objc dynamic var name: String
    @objc dynamic var ciFilter: CIFilter
    @objc dynamic var attributes: [FilterAttribute]
    
    init(filterName: String, ciFilter: CIFilter, attributes: [FilterAttribute]) {
        self.name = filterName
        self.ciFilter = ciFilter
        self.attributes = attributes
    }
}
