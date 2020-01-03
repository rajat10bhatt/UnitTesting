//
//  Location.swift
//  ToDo
//
//  Created by Rajat Bhatt on 02/01/20.
//  Copyright © 2020 Rajat. All rights reserved.
//

import Foundation
import CoreLocation

struct Location {
    let name: String
    let coordinate: CLLocationCoordinate2D?
    
    init(name: String, coordinate: CLLocationCoordinate2D? = nil) {
        self.name = name
        self.coordinate = coordinate
    }
}
