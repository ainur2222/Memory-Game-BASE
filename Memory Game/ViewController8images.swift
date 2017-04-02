//
//  ViewController8images.swift
//  Memory Game
//
//  Created by Айнур Самигуллин on 02/04/2017.
//  Copyright © 2017 Айнур Самигуллин. All rights reserved.
//

import UIKit
import GameplayKit

class ViewController8images: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
    @IBOutlet weak var pic5: UIImageView!
    @IBOutlet weak var pic6: UIImageView!
    @IBOutlet weak var pic7: UIImageView!
    @IBOutlet weak var pic8: UIImageView!
    @IBOutlet weak var pic9: UIImageView!
    @IBOutlet weak var pic10: UIImageView!
    @IBOutlet weak var pic11: UIImageView!
    @IBOutlet weak var pic12: UIImageView!
    @IBOutlet weak var pic13: UIImageView!
    @IBOutlet weak var pic14: UIImageView!
    @IBOutlet weak var pic15: UIImageView!
    
    var openCount = 0
    var basicImage : [UIImage] = [
        UIImage(named: "2004.ico")!,
        UIImage(named: "2004.ico")!,
        UIImage(named: "2004.ico")!,
        UIImage(named: "2004.ico")!,
        UIImage(named: "2004.ico")!,
        UIImage(named: "2004.ico")!,
        UIImage(named: "2004.ico")!,
        UIImage(named: "2004.ico")!,
        UIImage(named: "2004.ico")!,
        UIImage(named: "2004.ico")!,
        UIImage(named: "2004.ico")!,
        UIImage(named: "2004.ico")!,
        UIImage(named: "2004.ico")!,
        UIImage(named: "2004.ico")!,
        UIImage(named: "2004.ico")!,
        UIImage(named: "2004.ico")!,
    ]
    
    var successImage:UIImage = UIImage(named: "success.png")!
    
    var i0Solved = false
    var i1Solved = false
    var i2Solved = false
    var i3Solved = false
    var i4Solved = false
    var i5Solved = false
    var i6Solved = false
    var i7Solved = false
    var i8Solved = false
    var i9Solved = false
    var i10Solved = false
    var i11Solved = false
    var i12Solved = false
    var i13Solved = false
    var i14Solved = false
    var i15Solved = false
    
    
    var array0 : [UIImage] = [
        UIImage(named: "01.png")!,
        UIImage(named: "01.png")!,
        UIImage(named: "02.png")!,
        UIImage(named: "02.png")!,
        UIImage(named: "03.png")!,
        UIImage(named: "03.png")!,
        UIImage(named: "04.png")!,
        UIImage(named: "04.png")!,
        UIImage(named: "05.png")!,
        UIImage(named: "05.png")!,
        UIImage(named: "06.png")!,
        UIImage(named: "06.png")!,
        UIImage(named: "07.png")!,
        UIImage(named: "07.png")!,
        UIImage(named: "08.png")!,
        UIImage(named: "08.png")!,
        UIImage(named: "09.png")!,
        UIImage(named: "09.png")!,
        UIImage(named: "10.png")!,
        UIImage(named: "10.png")!,
        UIImage(named: "11.png")!,
        UIImage(named: "11.png")!,
        UIImage(named: "12.png")!,
        UIImage(named: "12.png")!,
        UIImage(named: "13.png")!,
        UIImage(named: "13.png")!,
        UIImage(named: "14.png")!,
        UIImage(named: "14.png")!,
        UIImage(named: "15.png")!,
        UIImage(named: "15.png")!,
    ]

    
    var array1: [UIImage] = []     // вот тут наши картинки и мы их не трогаем
    func randomizeArray () -> Any {
        let imageArray8 = GKRandomSource.sharedRandom().arrayByShufflingObjects( in: self.array0 )
        return imageArray8
    }
    
    
    var array3 : [UIImage] = []   // for comparison 2 images
    var array4 : [Int] = []
    
    
    @IBAction func restartButton() {
        array1 = randomizeArray() as! [UIImage]
        basicImage[0] = UIImage(named: "2004.ico")!
        basicImage[1] = UIImage(named: "2004.ico")!
        basicImage[2] = UIImage(named: "2004.ico")!
        basicImage[3] = UIImage(named: "2004.ico")!
        basicImage[4] = UIImage(named: "2004.ico")!
        basicImage[5] = UIImage(named: "2004.ico")!
        basicImage[6] = UIImage(named: "2004.ico")!
        basicImage[7] = UIImage(named: "2004.ico")!
        basicImage[8] = UIImage(named: "2004.ico")!
        basicImage[9] = UIImage(named: "2004.ico")!
        basicImage[10] = UIImage(named: "2004.ico")!
        basicImage[11] = UIImage(named: "2004.ico")!
        basicImage[12] = UIImage(named: "2004.ico")!
        basicImage[13] = UIImage(named: "2004.ico")!
        basicImage[14] = UIImage(named: "2004.ico")!
        basicImage[15] = UIImage(named: "2004.ico")!
        
        pic0.image = basicImage[0]
        pic1.image = basicImage[1]
        pic2.image = basicImage[2]
        pic3.image = basicImage[3]
        pic4.image = basicImage[4]
        pic5.image = basicImage[5]
        pic6.image = basicImage[6]
        pic7.image = basicImage[7]
        pic8.image = basicImage[8]
        pic9.image = basicImage[9]
        pic10.image = basicImage[10]
        pic11.image = basicImage[11]
        pic12.image = basicImage[12]
        pic13.image = basicImage[13]
        pic14.image = basicImage[14]
        pic15.image = basicImage[15]
        openCount = 0
    }
    
    
    
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        
        
        
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
            
        case "4":
            pic4.image = array1[Int(sender.currentTitle!)!]
            array3.append(pic4.image!)
            array4.append(4)
            if (array3.count == 2) && (array3[0] == array3[1]) {
                print(array4)
                array1[array4[0]] = successImage
                array1[array4[1]] = successImage
                basicImage[array4[0]] = UIImage(named: "success.png")!
                basicImage[array4[1]] = UIImage(named: "success.png")!
            }

            
        case "5":
            pic5.image = array1[Int(sender.currentTitle!)!]
            array3.append(pic5.image!)
            array4.append(5)
            if (array3.count == 2) && (array3[0] == array3[1]) {
                print(array4)
                array1[array4[0]] = successImage
                array1[array4[1]] = successImage
                basicImage[array4[0]] = UIImage(named: "success.png")!
                basicImage[array4[1]] = UIImage(named: "success.png")!
            }

            
        case "6":
            pic6.image = array1[Int(sender.currentTitle!)!]
            array3.append(pic6.image!)
            array4.append(6)
            if (array3.count == 2) && (array3[0] == array3[1]) {
                print(array4)
                array1[array4[0]] = successImage
                array1[array4[1]] = successImage
                basicImage[array4[0]] = UIImage(named: "success.png")!
                basicImage[array4[1]] = UIImage(named: "success.png")!
            }

            
        case "7":
            pic7.image = array1[Int(sender.currentTitle!)!]
            array3.append(pic7.image!)
            array4.append(7)
            if (array3.count == 2) && (array3[0] == array3[1]) {
                print(array4)
                array1[array4[0]] = successImage
                array1[array4[1]] = successImage
                basicImage[array4[0]] = UIImage(named: "success.png")!
                basicImage[array4[1]] = UIImage(named: "success.png")!
            }

            
        case "8":
            pic8.image = array1[Int(sender.currentTitle!)!]
            array3.append(pic8.image!)
            array4.append(8)
            if (array3.count == 2) && (array3[0] == array3[1]) {
                print(array4)
                array1[array4[0]] = successImage
                array1[array4[1]] = successImage
                basicImage[array4[0]] = UIImage(named: "success.png")!
                basicImage[array4[1]] = UIImage(named: "success.png")!
            }

            
        case "9":
            pic9.image = array1[Int(sender.currentTitle!)!]
            array3.append(pic9.image!)
            array4.append(9)
            if (array3.count == 2) && (array3[0] == array3[1]) {
                print(array4)
                array1[array4[0]] = successImage
                array1[array4[1]] = successImage
                basicImage[array4[0]] = UIImage(named: "success.png")!
                basicImage[array4[1]] = UIImage(named: "success.png")!
            }

            
        case "10":
            pic10.image = array1[Int(sender.currentTitle!)!]
            array3.append(pic10.image!)
            array4.append(10)
            if (array3.count == 2) && (array3[0] == array3[1]) {
                print(array4)
                array1[array4[0]] = successImage
                array1[array4[1]] = successImage
                basicImage[array4[0]] = UIImage(named: "success.png")!
                basicImage[array4[1]] = UIImage(named: "success.png")!
            }

            
        case "11":
            pic11.image = array1[Int(sender.currentTitle!)!]
            array3.append(pic11.image!)
            array4.append(11)
            if (array3.count == 2) && (array3[0] == array3[1]) {
                print(array4)
                array1[array4[0]] = successImage
                array1[array4[1]] = successImage
                basicImage[array4[0]] = UIImage(named: "success.png")!
                basicImage[array4[1]] = UIImage(named: "success.png")!
            }

            
        case "12":
            pic12.image = array1[Int(sender.currentTitle!)!]
            array3.append(pic12.image!)
            array4.append(12)
            if (array3.count == 2) && (array3[0] == array3[1]) {
                print(array4)
                array1[array4[0]] = successImage
                array1[array4[1]] = successImage
                basicImage[array4[0]] = UIImage(named: "success.png")!
                basicImage[array4[1]] = UIImage(named: "success.png")!
            }

            
        case "13":
            pic13.image = array1[Int(sender.currentTitle!)!]
            array3.append(pic13.image!)
            array4.append(13)
            if (array3.count == 2) && (array3[0] == array3[1]) {
                print(array4)
                array1[array4[0]] = successImage
                array1[array4[1]] = successImage
                basicImage[array4[0]] = UIImage(named: "success.png")!
                basicImage[array4[1]] = UIImage(named: "success.png")!
            }

            
        case "14":
            pic14.image = array1[Int(sender.currentTitle!)!]
            array3.append(pic14.image!)
            array4.append(14)
            if (array3.count == 2) && (array3[0] == array3[1]) {
                print(array4)
                array1[array4[0]] = successImage
                array1[array4[1]] = successImage
                basicImage[array4[0]] = UIImage(named: "success.png")!
                basicImage[array4[1]] = UIImage(named: "success.png")!
            }

            
        case "15":
            pic15.image = array1[Int(sender.currentTitle!)!]
            array3.append(pic15.image!)
            array4.append(15)
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
