//
//  CGPoint+Distance.swift
//  Dice
//
//  Created by Enzo Sterro on 16/06/2019.
//  Copyright © 2019 Enzo Sterro. All rights reserved.
//

import CoreGraphics

extension CGPoint {

    func distance(_ point: CGPoint) -> CGFloat {
        return CGFloat(hypotf(Float(point.x - x), Float(point.y - y)))
    }

}
