//
//  UIImage+Extensions.swift
//  SwiftExtensions
//
//  Created by Ömer Saitoğlu on 1.04.2020.
//  Copyright © 2020 Ömer Saitoğlu. All rights reserved.

import UIKit

extension UIImage {
    // MARK: Image Size
    func resizeImage(targetSize: CGSize) -> UIImage {
      let size = self.size
      let widthRatio  = targetSize.width  / size.width
      let heightRatio = targetSize.height / size.height
      let newSize = widthRatio > heightRatio ?  CGSize(width: size.width * heightRatio, height: size.height * heightRatio) : CGSize(width: size.width * widthRatio,  height: size.height * widthRatio)
      let rect = CGRect(x: 0, y: 0, width: newSize.width, height: newSize.height)

      UIGraphicsBeginImageContextWithOptions(newSize, false, 1.0)
      self.draw(in: rect)
      let newImage = UIGraphicsGetImageFromCurrentImageContext()
      UIGraphicsEndImageContext()

      return newImage!
    }
}
