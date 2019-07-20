//
//  InterfaceController.swift
//  DiceWatch Extension
//
//  Created by Enzo Sterro on 16/06/2019.
//  Copyright © 2019 Enzo Sterro. All rights reserved.
//

import WatchKit
import SpriteKit

final class InterfaceController: WKInterfaceController {

    // MARK: Outlets

    @IBOutlet weak var sceneInterface: WKInterfaceSKScene!

    // MARK: Variables

    private var scene: SKScene?
    private var diceNode: SKShapeNode?

    // MARK: View Lifecycle

    override func awake(withContext context: Any?) {
        super.awake(withContext: context)

        scene = SceneCreator.create(scene: SKScene(), size: contentFrame.size)
        sceneInterface.presentScene(scene)
        createDice()
    }

    // MARK: Actions

    @IBAction func tapDidHandle(_ sender: Any) {
        (diceNode as? DiceNode)?.shuffle()
    }

    // MARK: Node Creation

    private func createDice() {
        let dice = DiceNode(size: CGSize(width: 80, height: 80))
        dice.position = CGPoint(x: contentFrame.width / 2, y: (contentFrame.height - 28) / 2)
        diceNode = dice
        scene?.addChild(dice)
    }

}
