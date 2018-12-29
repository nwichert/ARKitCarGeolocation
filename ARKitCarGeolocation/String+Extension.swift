//
//  String+Extension.swift
//  ARKitCarGeolocation
//
//  Created by Nick Wichert on 12/27/18.
//  Copyright © 2018 Nick Wichert. All rights reserved.
//

import UIKit

// use this extension to create an image out of the arrow emoji (a string). It creates a rectangle of width
// 100 and height 100 , with a transparent background, to draw the string inside of it with a font size of 90.

extension String {
    func image() -> UIImage? {
        let size = CGSize(width: 100, height: 100)
        UIGraphicsBeginImageContextWithOptions(size, false, 0)
        UIColor.clear.set()
        let rect = CGRect(origin: CGPoint(), size: size)
        UIRectFill(CGRect(origin: CGPoint(), size: size))
        (self as NSString).draw(in: rect, withAttributes: [NSAttributedString.Key.font: UIFont.systemFont(ofSize: 90)])
        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return image
    }
}
