//
//  GameScene.swift
//  AngryBirdClone
//
//  Created by Kullanici on 19.11.2022.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
    
var dragon = SKSpriteNode()
    
    
    override func didMove(to view: SKView) {
        
        let dragonTexture = SKTexture(imageNamed: "dragon")
        dragon = childNode(withName: "dragon") as! SKSpriteNode
        dragon.physicsBody = SKPhysicsBody(circleOfRadius: dragonTexture.size().height/5)
        dragon.physicsBody?.isDynamic = true
        dragon.physicsBody?.affectedByGravity = true
        dragon.physicsBody?.mass = 0.5
        
        
       
    }
    
    
    func touchDown(atPoint pos : CGPoint) {
       
    }
    
    func touchMoved(toPoint pos : CGPoint) {
     
    }
    
    func touchUp(atPoint pos : CGPoint) {
      
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
      
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
     
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        
    }
    
    override func touchesCancelled(_ touches: Set<UITouch>, with event: UIEvent?) {
     
    }
    
    
    override func update(_ currentTime: TimeInterval) {
        // Called before each frame is rendered
    }
}
