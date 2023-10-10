//
//  Scene.swift
//  Calculator
//
//  Created by Alexander Eckert on 10/9/23.
//

import UIKit
import SpriteKit

class Scene: SKScene {
    
    var one = SKLabelNode()
    var two = SKLabelNode()
    var three = SKLabelNode()
    var four = SKLabelNode()
    var five = SKLabelNode()
    var six = SKLabelNode()
    var seven = SKLabelNode()
    var eight = SKLabelNode()
    var nine = SKLabelNode()
    
    var clear = SKLabelNode()
    var add = SKLabelNode()
    var sub = SKLabelNode()
    var mul = SKLabelNode()
    var div = SKLabelNode()
    
    var text = SKLabelNode()
    
    var operand = String()
    var operation = Int()
    
    override func didMove(to view: SKView) {
        
        self.backgroundColor = UIColor.white
        
        operand = ""
        operation = 0
        
        text.text = "math time"
        text.fontColor = UIColor.lightGray
        text.fontSize = frame.height / 15
        text.position = CGPoint(x: 0, y: frame.height / 8)
        addChild(text)
        
        one.text = "1"
        one.fontSize = frame.height / 20
        one.fontColor = UIColor.black
        one.position = CGPoint(x: frame.width / -2.9, y: 0)
        addChild(one)
        
        two.text = "2"
        two.fontSize = frame.height / 20
        two.fontColor = UIColor.black
        two.position = CGPoint(x: frame.width / -8, y: 0)
        addChild(two)
        
        three.text = "3"
        three.fontSize = frame.height / 20
        three.fontColor = UIColor.black
        three.position = CGPoint(x: frame.width / 8, y: 0)
        addChild(three)
        
        four.text = "4"
        four.fontSize = frame.height / 20
        four.fontColor = UIColor.black
        four.position = CGPoint(x: frame.width / -2.9, y: frame.height / -8)
        addChild(four)
        
        five.text = "5"
        five.fontSize = frame.height / 20
        five.fontColor = UIColor.black
        five.position = CGPoint(x: frame.width / -8, y: frame.height / -8)
        addChild(five)
        
        six.text = "6"
        six.fontSize = frame.height / 20
        six.fontColor = UIColor.black
        six.position = CGPoint(x: frame.width / 8, y: frame.height / -8)
        addChild(six)
        
        seven.text = "7"
        seven.fontSize = frame.height / 20
        seven.fontColor = UIColor.black
        seven.position = CGPoint(x: frame.width / -2.9, y: frame.height / -4)
        addChild(seven)
        
        eight.text = "8"
        eight.fontSize = frame.height / 20
        eight.fontColor = UIColor.black
        eight.position = CGPoint(x: frame.width / -8, y: frame.height / -4)
        addChild(eight)
        
        nine.text = "9"
        nine.fontSize = frame.height / 20
        nine.fontColor = UIColor.black
        nine.position = CGPoint(x: frame.width / 8, y: frame.height / -4)
        addChild(nine)
        
        clear.text = "clear"
        clear.fontSize = frame.height / 20
        clear.fontColor = UIColor.black
        clear.position = CGPoint(x: frame.width / -10, y: frame.height / -2.9)
        addChild(clear)
        
        add.text = "+"
        add.fontSize = frame.height / 20
        add.fontColor = UIColor.black
        add.position = CGPoint(x: frame.width / 2.9, y: 0)
        addChild(add)
        
        sub.text = "-"
        sub.fontSize = frame.height / 20
        sub.fontColor = UIColor.black
        sub.position = CGPoint(x: frame.width / 2.9, y: frame.height / -8)
        addChild(sub)
        
        mul.text = "*"
        mul.fontSize = frame.height / 20
        mul.fontColor = UIColor.black
        mul.position = CGPoint(x: frame.width / 2.9, y: frame.height / -4)
        addChild(mul)
        
        div.text = "/"
        div.fontSize = frame.height / 20
        div.fontColor = UIColor.black
        div.position = CGPoint(x: frame.width / 2.9, y: frame.height / -2.9)
        addChild(div)
        
    }
    
    func doMath(num : Int) {
        if (operation == 1) {
            text.text = "\(Int(operand)! + num)"
        } else if (operation == 2) {
            text.text = "\(Int(operand)! - num)"
        } else if (operation == 3) {
            text.text = "\(Int(operand)! * num)"
        } else if (operation == 4) {
            text.text = "\(Int(operand)! / num)"
        }
        operand = text.text!
    }
    
    func touchDown(atPoint pos : CGPoint) {
        if (text.text == "math time") {
            text.text = ""
        }
        if (one.contains(pos)) {
            text.text = (text.text ?? "") + "1"
            if (operation == 0) {
                operand = operand + "1"
            } else {
                doMath(num: 1)
            }
        } else if (two.contains(pos)) {
            text.text = (text.text ?? "") + "2"
            if (operation == 0) {
                operand = operand + "2"
            } else {
                doMath(num: 2)
            }
        } else if (three.contains(pos)) {
            text.text = (text.text ?? "") + "3"
            if (operation == 0) {
                operand = operand + "3"
            } else {
                doMath(num: 3)
            }
        } else if (four.contains(pos)) {
            text.text = (text.text ?? "") + "4"
            if (operation == 0) {
                operand = operand + "4"
            } else {
                doMath(num: 4)
            }
        } else if (five.contains(pos)) {
            text.text = (text.text ?? "") + "5"
            if (operation == 0) {
                operand = operand + "5"
            } else {
                doMath(num: 5)
            }
        } else if (six.contains(pos)) {
            text.text = (text.text ?? "") + "6"
            if (operation == 0) {
                operand = operand + "6"
            } else {
                doMath(num: 6)
            }
        } else if (seven.contains(pos)) {
            text.text = (text.text ?? "") + "7"
            if (operation == 0) {
                operand = operand + "7"
            } else {
                doMath(num: 7)
            }
        } else if (eight.contains(pos)) {
            text.text = (text.text ?? "") + "8"
            if (operation == 0) {
                operand = operand + "8"
            } else {
                doMath(num: 8)
            }
        } else if (nine.contains(pos)) {
            text.text = (text.text ?? "") + "9"
            if (operation == 0) {
                operand = operand + "9"
            } else {
                doMath(num: 9)
            }
        } else if (clear.contains(pos)) {
            text.text = ""
            operand = ""
            operation = 0
        } else if (add.contains(pos)) {
            text.text = (text.text ?? "") + " + "
            operation = 1
        } else if (sub.contains(pos)) {
            text.text = (text.text ?? "") + " - "
            operation = 2
        } else if (mul.contains(pos)) {
            text.text = (text.text ?? "") + " * "
            operation = 3
        } else if (div.contains(pos)) {
            text.text = (text.text ?? "") + " / "
            operation = 4
        }
    }
    
    func touchesMoved(toPoint pos : CGPoint) {

    }
    
    func touchUp(atPoint pos : CGPoint) {
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        for t in touches { self.touchDown(atPoint: t.location(in: self)) }
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        for t in touches { self.touchesMoved(toPoint: t.location(in: self)) }
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        for t in touches { self.touchUp(atPoint: t.location(in: self)) }
    }
}
