//
//  ViewController.swift
//  Calculator
//
//  Created by Alexander Eckert on 10/9/23.
//

import UIKit
import SpriteKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let scene = Scene(fileNamed: "Scene") {
            let skView = self.view as! SKView
            
            skView.presentScene(scene)
        }
        
    }
    override var shouldAutorotate: Bool {
        return true
    }
    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        return .portrait
    }
}
