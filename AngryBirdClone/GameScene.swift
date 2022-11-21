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
    var box1 = SKSpriteNode()
    var box2 = SKSpriteNode()
    var box3 = SKSpriteNode()
    var box4 = SKSpriteNode()
    var box5 = SKSpriteNode()
    var box6 = SKSpriteNode()
    
    
    
    override func didMove(to view: SKView) {
        // PhysicsBody
        self.physicsBody = SKPhysicsBody(edgeLoopFrom: frame)
        self.scene?.scaleMode = .aspectFit
        
        // Dragon
        
        let dragonTexture = SKTexture(imageNamed: "dragon")
        dragon = childNode(withName: "dragon") as! SKSpriteNode
        dragon.physicsBody = SKPhysicsBody(circleOfRadius: dragonTexture.size().height/17)
        dragon.physicsBody?.isDynamic = true
        dragon.physicsBody?.affectedByGravity = true
        dragon.physicsBody?.mass = 0.5
        
        // boxes
        let brickTexture = SKTexture(imageNamed: "brick")
        
        box1 = childNode(withName: "box1") as! SKSpriteNode
        box1.physicsBody?.affectedByGravity = true
        box1.physicsBody?.isDynamic = true
        box1.physicsBody?.mass = 0.4
        
       
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
