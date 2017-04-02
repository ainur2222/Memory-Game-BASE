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
    
    
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var pic0: UIImageView!
    @IBOutlet weak var pic1: UIImageView!
    @IBOutlet weak var pic2: UIImageView!
    @IBOutlet weak var pic3: UIImageView!
    
    lazy var allImages: [UIImageView] = [self.pic0, self.pic1, self.pic2, self.pic3]
    
    
    
    var openCount = 0
//    var basicImage:UIImage = UIImage(named: "2004.ico")!
    
    var basicImage : [UIImage] = [
        UIImage(named: "2004.ico")!,
        UIImage(named: "2004.ico")!,
        UIImage(named: "2004.ico")!,
        UIImage(named: "2004.ico")!
    ]
//    var basicImage0:UIImage = UIImage(named: "success.png")!
//    var basicImage1:UIImage = UIImage(named: "success.png")!
//    var basicImage2:UIImage = UIImage(named: "success.png")!
//    var basicImage3:UIImage = UIImage(named: "success.png")!
//    var basicImage0:UIImage = UIImage(named: "2004.ico")!
//    var basicImage1:UIImage = UIImage(named: "2004.ico")!
//    var basicImage2:UIImage = UIImage(named: "2004.ico")!
//    var basicImage3:UIImage = UIImage(named: "2004.ico")!

    
    
    var successImage:UIImage = UIImage(named: "success.png")!
    
    
    
    var i0Solved = false
    var i1Solved = false
    var i2Solved = false
    var i3Solved = false
    
    
    var array0 : [UIImage] = [
        UIImage(named: "200.png")!,
        UIImage(named: "200.png")!,
        UIImage(named: "200 1.png")!,
        UIImage(named: "200 1.png")!
    ]
    var array1: [UIImage] = []     // вот тут наши картинки и мы их не трогаем
    func randomizeArray () -> Any {
        let imageArray8 = GKRandomSource.sharedRandom().arrayByShufflingObjects( in: self.array0 )
        return imageArray8
    }
    
    
    var array3 : [UIImage] = []   // for comparison 2 images
    var array4 : [Int] = []


    
    
    
    
    //4
    
    
    
    @IBAction func restartButton() {
        array1 = randomizeArray() as! [UIImage]
        basicImage[0] = UIImage(named: "2004.ico")!
        basicImage[1] = UIImage(named: "2004.ico")!
        basicImage[2] = UIImage(named: "2004.ico")!
        basicImage[3] = UIImage(named: "2004.ico")!
        
        pic0.image = basicImage[0]
        pic1.image = basicImage[1]
        pic2.image = basicImage[2]
        pic3.image = basicImage[3]
        openCount = 0
        
    }
    
    
    
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        
        
        if openCount == 2 {
            openCount = 0
            array3.removeAll()
            array4.removeAll()
            
            print(openCount)
            if i0Solved == false {
                pic0.image = basicImage[0]
            }
            if i1Solved == false {
                pic1.image = basicImage[1]
            }
            if i2Solved == false {
                pic2.image = basicImage[2]
            }
            if i3Solved == false {
                pic3.image = basicImage[3]
            }
        }
        
        
        if openCount == 1 || openCount == 0 {
            openCount += 1
            switch sender.currentTitle! {
            case "0":
                pic0.image = array1[Int(sender.currentTitle!)!]
                array3.append(pic0.image!)
                array4.append(0)
                if (array3.count == 2) && (array3[0] == array3[1])  {
                    print(array4)
                    array1[array4[0]] = successImage
                    array1[array4[1]] = successImage
                    basicImage[array4[0]] = UIImage(named: "success.png")!
                    basicImage[array4[1]] = UIImage(named: "success.png")!
                }
            case "1":
                pic1.image = array1[Int(sender.currentTitle!)!]
                array3.append(pic1.image!)
                array4.append(1)
                if (array3.count == 2) && (array3[0] == array3[1])  {
                    print(array4)
                    array1[array4[0]] = successImage
                    array1[array4[1]] = successImage
                    basicImage[array4[0]] = UIImage(named: "success.png")!
                    basicImage[array4[1]] = UIImage(named: "success.png")!
                }
            case "2":
                pic2.image = array1[Int(sender.currentTitle!)!]
                array3.append(pic2.image!)
                array4.append(2)
                if (array3.count == 2) && (array3[0] == array3[1]) {
                    print(array4)
                    array1[array4[0]] = successImage
                    array1[array4[1]] = successImage
                    basicImage[array4[0]] = UIImage(named: "success.png")!
                    basicImage[array4[1]] = UIImage(named: "success.png")!
                }
            case "3":
                pic3.image = array1[Int(sender.currentTitle!)!]
                array3.append(pic3.image!)
                array4.append(3)
                if (array3.count == 2) && (array3[0] == array3[1]) {
                    print(array4)
                    array1[array4[0]] = successImage
                    array1[array4[1]] = successImage
                    basicImage[array4[0]] = UIImage(named: "success.png")!
                    basicImage[array4[1]] = UIImage(named: "success.png")!
                }
            default:
                break
            }

        }
        
        
        
        
        
        
        
        
    }
    
}





//
//switch sender.currentTitle! {
//case "0":
//    pic0.image = array1[Int(sender.currentTitle!)!]
//case "1":
//    pic1.image = array1[Int(sender.currentTitle!)!]
//case "2":
//    pic2.image = array1[Int(sender.currentTitle!)!]
//case "3":
//    pic3.image = array1[Int(sender.currentTitle!)!]
//default:
//break






//        if openCount == 0 {
//            switch sender.currentTitle! {
//            case "0":
//                pic0.image = array1[Int(sender.currentTitle!)!]
//                array3.append(pic0.image!)
//            case "1":
//                pic1.image = array1[Int(sender.currentTitle!)!]
//                array3.append(pic1.image!)
//            case "2":
//                pic2.image = array1[Int(sender.currentTitle!)!]
//                array3.append(pic2.image!)
//            case "3":
//                pic3.image = array1[Int(sender.currentTitle!)!]
//                array3.append(pic3.image!)
//
//            default:
//                break
//            }
//            openCount += 1
//        }

