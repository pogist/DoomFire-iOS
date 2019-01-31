//
//  MainScene.swift
//  DoomFire
//
//  Created by Murilo Paixão on 31/01/19.
//  Copyright © 2019 Murilo Paixão. All rights reserved.
//

import SpriteKit

class MainScene: SKScene {
  var doomFire: DoomFire!
  var nodes: [SKShapeNode]!

  let nodeSize = 7

  override func didMove(to view: SKView) {
    super.didMove(to: view)

    doomFire = DoomFire(width: 10, height: 10)

    nodes = doomFire.pixels.map { pixel in
      let node = self.makeNode(fromPixel: pixel)
      self.addChild(node)

      return node
    }
  }

  private func makeNode(fromPixel pixel: DoomFire.Pixel) -> SKShapeNode {
    let node = SKShapeNode(rectOf: CGSize(width: nodeSize, height: nodeSize))
    node.strokeColor = .clear
    node.fillColor = DoomPixelColor.pixelColor(forIntensity: pixel.intensity)
    node.position = CGPoint(
      x: Int(pixel.position.x) * nodeSize + (nodeSize / 2),
      y: Int(pixel.position.y) * nodeSize + (nodeSize / 2))
    return node
  }
}
