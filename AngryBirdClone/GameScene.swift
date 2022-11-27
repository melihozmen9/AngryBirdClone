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
    
    
    var gamestarted = false
    
    var originalPosition : CGPoint?
     
    
    
    override func didMove(to view: SKView) {
        // PhysicsBody
        self.physicsBody = SKPhysicsBody(edgeLoopFrom: frame)
        self.scene?.scaleMode = .aspectFit
        
        // Dragon
        
        let dragonTexture = SKTexture(imageNamed: "dragon")
        dragon = childNode(withName: "dragon") as! SKSpriteNode
        dragon.physicsBody = SKPhysicsBody(circleOfRadius: dragonTexture.size().height/17)
        dragon.physicsBody?.isDynamic = true
        dragon.physicsBody?.affectedByGravity = false
        dragon.physicsBody?.mass = 0.2
        originalPosition = dragon.position
        
        // boxes
        let brickTexture = SKTexture(imageNamed: "brick")
        
        box1 = childNode(withName: "box1") as! SKSpriteNode
        let boxSize = CGSize(width: brickTexture.size().width / 6 , height: brickTexture.size().height / 6 )
        
        box1.physicsBody = SKPhysicsBody.init(rectangleOf: boxSize)
        box1.physicsBody?.affectedByGravity = true
        box1.physicsBody?.isDynamic = true
        box1.physicsBody?.mass = 0.1
        box1.physicsBody?.allowsRotation = true
        
        
        box2 = childNode(withName: "box2") as! SKSpriteNode
        box2.physicsBody = SKPhysicsBody.init(rectangleOf: boxSize)
        box2.physicsBody?.isDynamic = true
        box2.physicsBody?.affectedByGravity = true
        box2.physicsBody?.allowsRotation = true
        box2.physicsBody?.mass = 0.1
        
        
        box3 = childNode(withName: "box3") as! SKSpriteNode
        box3.physicsBody = SKPhysicsBody.init(rectangleOf: boxSize)
        box3.physicsBody?.affectedByGravity = true
        box3.physicsBody?.isDynamic = true
        box3.physicsBody?.allowsRotation = true
        box3.physicsBody?.mass = 0.1
        
        box4 = childNode(withName: "box4") as! SKSpriteNode
        box4.physicsBody = SKPhysicsBody.init(rectangleOf: boxSize)
        box4.physicsBody?.isDynamic = true
        box4.physicsBody?.affectedByGravity = true
        box4.physicsBody?.allowsRotation = true
        box4.physicsBody?.mass = 0.1
        
        
        box5 = childNode(withName: "box5") as! SKSpriteNode
        box5.physicsBody = SKPhysicsBody.init(rectangleOf: boxSize)
        box5.physicsBody?.affectedByGravity = true
        box5.physicsBody?.isDynamic = true
        box5.physicsBody?.allowsRotation = true
        box5.physicsBody?.mass = 0.1
        
        
        
        box6 = childNode(withName: "box6") as! SKSpriteNode
        box6.physicsBody = SKPhysicsBody.init(rectangleOf: boxSize)
        box6.physicsBody?.isDynamic = true
        box6.physicsBody?.affectedByGravity = true
        box6.physicsBody?.allowsRotation = true
        box6.physicsBody?.mass = 0.1
        
        
        
        
        
       
    }
    
    
    func touchDown(atPoint pos : CGPoint) {
       
    }
    
    func touchMoved(toPoint pos : CGPoint) {
     
    }
    
    func touchUp(atPoint pos : CGPoint) {
      
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
       /* dragon.physicsBody?.affectedByGravity = true
        dragon.physicsBody?.applyImpulse(CGVector(dx: 200, dy: 200))
 */
        
        if gamestarted == false {
            if let touch = touches.first {
                let touchLocation = touch.location(in: self)
                let touchnodes = nodes(at: touchLocation)
                if touchnodes.isEmpty == false {
                    for nodes in touchnodes {
                        if let sprite = nodes as? SKSpriteNode {
                            if sprite == dragon {
                                dragon.position = touchLocation
                               
                            }
                        }
                    }
                }
            }
        }
        
        
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        if gamestarted == false {
            if let touch = touches.first {
                let touchLocation = touch.location(in: self)
                let touchnodes = nodes(at: touchLocation)
                if touchnodes.isEmpty == false {
                    for nodes in touchnodes {
                        if let sprite = nodes as? SKSpriteNode {
                            if sprite == dragon {
                                dragon.position = touchLocation
                               
                            }
                        }
                    }
                }
            }
        }
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        if gamestarted == false {
            if let touch = touches.first {
                let touchLocation = touch.location(in: self)
                let touchnodes = nodes(at: touchLocation)
                if touchnodes.isEmpty == false {
                    for nodes in touchnodes {
                        if let sprite = nodes as? SKSpriteNode {
                            if sprite == dragon {
                                let dx = -(touchLocation.x - originalPosition!.x)
                                let dy = -(touchLocation.y - originalPosition!.y)
                                let impulse = CGVector(dx: dx, dy: dy)
                                dragon.physicsBody?.applyImpulse(impulse)
                                dragon.physicsBody?.affectedByGravity = true
                                gamestarted = true
                                
                               
                            }
                        }
                    }
                }
            }
        }
        
    }
    
    override func touchesCancelled(_ touches: Set<UITouch>, with event: UIEvent?) {
     
    }
    
    
    override func update(_ currentTime: TimeInterval) {
        // Called before each frame is rendered
        if let dragonPhysicsBody = dragon.physicsBody {
            if dragonPhysicsBody.velocity.dx <= 0 && dragonPhysicsBody.velocity.dy <= 0 && dragonPhysicsBody.angularVelocity <= 0 && gamestarted == true {
                
                dragon.physicsBody?.affectedByGravity = false
                dragon.physicsBody?.velocity = CGVector(dx: 0,dy: 0)
                dragon.physicsBody?.angularVelocity = 0
                dragon.zPosition = 1
                dragon.position = originalPosition!
                gamestarted = false
                
                
                
            }
        }
        
    }
}
