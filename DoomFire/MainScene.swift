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

  override func didMove(to view: SKView) {
    super.didMove(to: view)

    doomFire = DoomFire(width: 10, height: 10)
    print(doomFire.pixels)
  }
}
