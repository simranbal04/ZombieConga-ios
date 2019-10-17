//
//  GameScene.swift
//  ZombieCongaiOS
//
//  Created by Simran Kaur Bal on 2019-10-16.
//  Copyright © 2019 Simran Kaur Bal. All rights reserved.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
    
    var zombie:SKSpriteNode!
    var grandma:SKSpriteNode!
    var lifelabel:SKLabelNode!
    var scorelabel:SKLabelNode!
    
    var lives = 5
    var score = 0
    
    override func didMove(to view:SKView)
    {
        //1. set the background  color of the app
        self.backgroundColor = SKColor.black;
        
        
        //2. making of zombie
        self.zombie = SKSpriteNode(imageNamed: "zombie1")
        self.zombie.position = CGPoint(x: 1000, y: 1000)
        addChild(self.zombie)
        
        //3. making of grandma
        self.grandma = SKSpriteNode(imageNamed: "enemy")
        self.grandma.position = CGPoint(x:size.width - 100 , y: size.height/2)
        addChild(self.grandma)
        
        //4. setup lives label & score label
        self.lifelabel = SKLabelNode(text: "Lives Remaining: \(lives)")
        self.lifelabel.fontSize = 50
        self.lifelabel.color = UIColor.blue
        self.lifelabel.position = CGPoint(x:100,y:size.height-500)
        addChild(lifelabel)
        
        self.scorelabel = SKLabelNode(text: "Score: \(self.score)")
        self.scorelabel.fontSize = 50
        self.scorelabel.color = UIColor.blue
        self.scorelabel.position = CGPoint(x:400,y:size.height-500)
        addChild(scorelabel)
        
        
        //5. animation for grandma's movement
        let move1 = SKAction.move(to: CGPoint(x:size.width/2,y:360), duration: 2)
        let move2 = SKAction.move(to: CGPoint(x:100,y:size.height/2), duration: 2)
        let move3 = SKAction.move(to:CGPoint(x:size.width/2, y:400), duration:2)
        let move4 = SKAction.move(to:CGPoint(x:size.width - 100, y:size.height / 2), duration:2)
    
   
        let grandmaAnimation = SKAction.sequence([move1,move2, move3, move4])
            
    
        //6. make grandma move in this pattern forever
                let grandmaForeverAnimation = SKAction.repeatForever(grandmaAnimation)
                self.grandma.run(grandmaForeverAnimation)
                
            }
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
//    private var label : SKLabelNode?
//    private var spinnyNode : SKShapeNode?
//    
//    override func didMove(to view: SKView) {
//        
//        // Get label node from scene and store it for use later
//        self.label = self.childNode(withName: "//helloLabel") as? SKLabelNode
//        if let label = self.label {
//            label.alpha = 0.0
//            label.run(SKAction.fadeIn(withDuration: 2.0))
//        }
//        
//        // Create shape node to use during mouse interaction
//        let w = (self.size.width + self.size.height) * 0.05
//        self.spinnyNode = SKShapeNode.init(rectOf: CGSize.init(width: w, height: w), cornerRadius: w * 0.3)
//        
//        if let spinnyNode = self.spinnyNode {
//            spinnyNode.lineWidth = 2.5
//            
//            spinnyNode.run(SKAction.repeatForever(SKAction.rotate(byAngle: CGFloat(Double.pi), duration: 1)))
//            spinnyNode.run(SKAction.sequence([SKAction.wait(forDuration: 0.5),
//                                              SKAction.fadeOut(withDuration: 0.5),
//                                              SKAction.removeFromParent()]))
//        }
//    }
//    
//    
//    func touchDown(atPoint pos : CGPoint) {
//        if let n = self.spinnyNode?.copy() as! SKShapeNode? {
//            n.position = pos
//            n.strokeColor = SKColor.green
//            self.addChild(n)
//        }
//    }
//    
//    func touchMoved(toPoint pos : CGPoint) {
//        if let n = self.spinnyNode?.copy() as! SKShapeNode? {
//            n.position = pos
//            n.strokeColor = SKColor.blue
//            self.addChild(n)
//        }
//    }
//    
//    func touchUp(atPoint pos : CGPoint) {
//        if let n = self.spinnyNode?.copy() as! SKShapeNode? {
//            n.position = pos
//            n.strokeColor = SKColor.red
//            self.addChild(n)
//        }
//    }
//    
//    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
//        if let label = self.label {
//            label.run(SKAction.init(named: "Pulse")!, withKey: "fadeInOut")
//        }
//        
//        for t in touches { self.touchDown(atPoint: t.location(in: self)) }
//    }
//    
//    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
//        for t in touches { self.touchMoved(toPoint: t.location(in: self)) }
//    }
//    
//    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
//        for t in touches { self.touchUp(atPoint: t.location(in: self)) }
//    }
//    
//    override func touchesCancelled(_ touches: Set<UITouch>, with event: UIEvent?) {
//        for t in touches { self.touchUp(atPoint: t.location(in: self)) }
//    }
//    
//    
//    override func update(_ currentTime: TimeInterval) {
//        // Called before each frame is rendered
//    }
}
