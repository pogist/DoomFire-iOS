//
//  DoomFire.swift
//  DoomFire
//
//  Created by Murilo Paixão on 31/01/19.
//  Copyright © 2019 Murilo Paixão. All rights reserved.
//

import Foundation
import CoreGraphics

struct DoomFire {
  typealias Pixel = (position: CGPoint, intensity: Int)

  let width: Int
  let height: Int

  var size: Int {
    return width * height
  }

  var pixels: [Pixel] = []

  init(width: Int, height: Int) {
    self.width = width
    self.height = height

    for i in 0..<width {
      let pixel = (
        position: CGPoint(x: i % width, y: i / width),
        intensity: 36)

      pixels.append(pixel)
    }

    for i in width..<size {
      let pixel = (
        position: CGPoint(x: i % width, y: i / width),
        intensity: 0)

      pixels.append(pixel)
    }
  }
}
