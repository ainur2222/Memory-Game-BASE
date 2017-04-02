//
//  ViewController.swift
//  Memory Game
//
//  Created by Айнур Самигуллин on 01/04/2017.
//  Copyright © 2017 Айнур Самигуллин. All rights reserved.
//

import UIKit
import GameplayKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        restartButton()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    var i1Solved: Bool = false
    var i2Solved: Bool = false
    var i3Solved: Bool = false
    var i4Solved: Bool = false
    
    
    var openCount = 0
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var pic1: UIImageView!
    @IBOutlet weak var pic2: UIImageView!
    @IBOutlet weak var pic3: UIImageView!
    @IBOutlet weak var pic4: UIImageView!
    
    var basicImage:UIImage = UIImage(named: "2004.ico")!
    var imageArray : [UIImage] = [
        UIImage(named: "200.png")!,
        UIImage(named: "200.png")!,
        UIImage(named: "200 1.png")!,
        UIImage(named: "200 1.png")!
    ]
    
    
    
    
    var imageArray6: [UIImage] = []
    func randomizeArray () -> Any {
        let imageArray8 = GKRandomSource.sharedRandom().arrayByShufflingObjects( in: self.imageArray )
        return imageArray8
    }
    
    
    
    
    
    @IBAction func restartButton() {
        imageArray6 = randomizeArray() as! [UIImage]
        pic1.image = basicImage
        pic2.image = basicImage
        pic3.image = basicImage
        pic4.image = basicImage
        openCount = 0
    }
    
    var someBool : Bool = false
   
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        switch openCount {
        case 2...100 :
            
            
            switch someBool {
            case (pic1.image == pic2.image && pic1.image != basicImage):
                 i1Solved = true
                 i2Solved = true
            case (pic1.image == pic3.image && pic1.image != basicImage):
                i1Solved = true
                i3Solved = true
            case (pic1.image == pic4.image && pic1.image != basicImage):
                i1Solved = true
                i4Solved = true
            case (pic2.image == pic3.image && pic2.image != basicImage):
                i2Solved = true
                i3Solved = true
            case (pic2.image == pic4.image && pic2.image != basicImage):
                i2Solved = true
                i4Solved = true
            case (pic3.image == pic4.image && pic3.image != basicImage):
                i3Solved = true
                i4Solved = true
            default:
                break
            }

            
            
            if !i1Solved {
                pic1.image = basicImage
            }
            if !i2Solved {
                pic2.image = basicImage
            }
            if !i3Solved {
                pic3.image = basicImage
            }
            if !i4Solved {
                pic4.image = basicImage
            }
            
            openCount = 0
        case 0...1:
            switch sender.currentTitle! {
            case "1":
                pic1.image = imageArray6[0]
                openCount += 1
            case "2":
                pic2.image = imageArray6[1]
                openCount += 1
            case "3":
                pic3.image = imageArray6[2]
                openCount += 1
            case "4":
                pic4.image = imageArray6[3]
                openCount += 1
            default:
                break
            }
        default:
            break
        }
    }
    

//    if pic1.image != basicImage {
//    
//    }

    
    
}




