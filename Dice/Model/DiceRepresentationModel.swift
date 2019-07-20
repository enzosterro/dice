//
//  DiceRepresentationModel.swift
//  Dice
//
//  Created by Enzo Sterro on 15/06/2019.
//  Copyright © 2019 Enzo Sterro. All rights reserved.
//

import Foundation

struct DiceRepresentationModel {

    let rows: [[Int]]

    init(diceSide side: DiceSide) {
        switch side {
        case .one:
            rows = [[0, 0, 0], [0, 1, 0], [0, 0, 0]]
        case .two:
            rows = [[1, 0, 0], [0, 0, 0], [0, 0, 1]]
        case .three:
            rows = [[1, 0, 0], [0, 1, 0], [0, 0, 1]]
        case .four:
            rows = [[1, 0, 1], [0, 0, 0], [1, 0, 1]]
        case .five:
            rows = [[1, 0, 1], [0, 1, 0], [1, 0, 1]]
        case .six:
            rows = [[1, 0, 1], [1, 0, 1], [1, 0, 1]]
        }
    }

}
