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
    
    var mouseX:CGFloat = 0
    var mouseY:CGFloat = 0
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?)
    {
        //1. write the code to get mouse location
        let locationTouched = touches.first
        if( locationTouched == nil)
        {
            return
        }
        
        let mousePosition = locationTouched!.location(in: self)
        
        print("mouseX = \(mousePosition.x)")
        print("mouseY = \(mousePosition.y)")
        print("----------")
        
        //2. setting the global mouse X & Y var to the mouse x & y
        self.mouseX = mousePosition.x
        self.mouseY = mousePosition.y
    }
    
    //3. Create function to move zombie towards the mouse
    func moveZombie(mouseXPosition:CGFloat,mouseYPosition:CGFloat)
    {
        
    }
    
    
    //update positions 
    
    
    
    
    
    
    }
    

