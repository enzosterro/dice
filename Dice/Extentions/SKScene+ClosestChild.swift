//
//  SKScene+ClosestChild.swift
//  Dice
//
//  Created by Enzo Sterro on 16/06/2019.
//  Copyright © 2019 Enzo Sterro. All rights reserved.
//

import SpriteKit

extension SKScene {

    func closestChild(point: CGPoint, maxDistance: CGFloat) -> SKNode? {
        return self
            .children
            .filter { $0.position.distance(point) <= maxDistance }
            .min { $0.position.distance(point) > $1.position.distance(point) }
    }

}
