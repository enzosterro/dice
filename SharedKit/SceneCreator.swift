//
//  SceneCreator.swift
//  Dice
//
//  Created by Enzo Sterro on 22/06/2019.
//  Copyright © 2019 Enzo Sterro. All rights reserved.
//

import SpriteKit

struct SceneCreator {

    static func create(scene: SKScene, size: CGSize) -> SKScene {
        scene.size = size
        scene.scaleMode = .resizeFill
        scene.backgroundColor = .black
        return scene
    }

}
