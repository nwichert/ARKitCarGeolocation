//
//  FloatingPoint+Extension.swift
//  ARKitCarGeolocation
//
//  Created by Nick Wichert on 12/27/18.
//  Copyright © 2018 Nick Wichert. All rights reserved.
//

import Foundation

// conversion methods to radians and degrees to all floating point types

extension FloatingPoint {
    func toRadians() -> Self {
        return self * .pi / 180
    }
    
    func toDegrees() -> Self {
        return self * 180 / .pi
    }
}
