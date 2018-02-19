//
//  MainMenuScene.swift
//  ZombieConga
//
//  Created by Thomas Swatland on 19/02/2018.
//  Copyright © 2018 Thomas Swatland. All rights reserved.
//

import Foundation
import SpriteKit

class MainMenuScene: SKScene {
    
    override func didMove(to view: SKView) {
        let background = SKSpriteNode(imageNamed: "MainMenu.png")
        background.position = CGPoint(x: size.width / 2, y: size.height / 2)
        self.addChild(background)
        
    }
    
    func sceneTapped() {
        let gameScene = GameScene(size: size)
        gameScene.scaleMode = scaleMode
        let transition = SKTransition.doorway(withDuration: 1.5)
        view?.presentScene(gameScene, transition: transition)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        sceneTapped()
    }
}
