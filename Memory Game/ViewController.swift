//
//  ViewController.swift
//  Memory Game
//
//  Created by Айнур Самигуллин on 01/04/2017.
//  Copyright © 2017 Айнур Самигуллин. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBOutlet weak var pic0: UIImageView!
    
    @IBOutlet weak var pic1: UIImageView!
    @IBOutlet weak var pic2: UIImageView!
    @IBOutlet weak var pic3: UIImageView!
    @IBOutlet weak var pic4: UIImageView!
    
    @IBAction func restartButton(_ sender: Any) {
    }


    
//    var holdInMemoryInitialState = [String] = ["pic3.image"]
    
    
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        
        pic1.image = pic0.image
        
        print(sender.currentTitle!)

        
        
        print(  ("pic\(sender.currentTitle!)")   )
        
        
    }
    
    
    
    
    
    
    
    
    
    

}

