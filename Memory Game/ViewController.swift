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
    

   var firstImageInPair: UIImage = UIImage()
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        switch openCount {
        case 2...100 :
            pic1.image = basicImage
            pic2.image = basicImage
            pic3.image = basicImage
            pic4.image = basicImage
            openCount = 0
        case 0:
            switch sender.currentTitle! {
            case "1":
                pic1.image = imageArray6[0]
                openCount += 1
                firstImageInPair = pic1.image!
            case "2":
                pic2.image = imageArray6[1]
                openCount += 1
                firstImageInPair = pic2.image!
            case "3":
                pic3.image = imageArray6[2]
                openCount += 1
                firstImageInPair = pic3.image!
            case "4":
                pic4.image = imageArray6[3]
                openCount += 1
                firstImageInPair = pic4.image!
            default:
                break
            }
        case 1:
            switch sender.currentTitle! {
            case "1":
                pic1.image = imageArray6[0]
                openCount += 1
                if firstImageInPair == pic1.image! {
                    pic1.image = UIImage(named: "success.png")!
                    
                }
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
    

    

}




