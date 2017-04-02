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
        restartButton()
        
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
    //
    var openCount = 0
    
    var basicImageS : [UIImage] = [
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
    //
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
    
    // норм до этого этапа
    //
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
        UIImage(named: "08.png")!
    ]
    
    
    
    //
    
    var array1: [UIImage] = []     // вот тут наши картинки и мы их не трогаем
    
    func randomizeArray2 () -> Any {
        let imageArray9 = GKRandomSource.sharedRandom().arrayByShufflingObjects( in: self.array0 )
        return imageArray9
    }
    
    
    var array3 : [UIImage] = []   // for comparison 2 images
    var array4 : [Int] = []
    
    
    @IBAction func restartButton() {
        array1 = randomizeArray2() as! [UIImage]
        basicImageS[0] = UIImage(named: "2004.ico")!
        basicImageS[1] = UIImage(named: "2004.ico")!
        basicImageS[2] = UIImage(named: "2004.ico")!
        basicImageS[3] = UIImage(named: "2004.ico")!
        basicImageS[4] = UIImage(named: "2004.ico")!
        basicImageS[5] = UIImage(named: "2004.ico")!
        basicImageS[6] = UIImage(named: "2004.ico")!
        basicImageS[7] = UIImage(named: "2004.ico")!
        basicImageS[8] = UIImage(named: "2004.ico")!
        basicImageS[9] = UIImage(named: "2004.ico")!
        basicImageS[10] = UIImage(named: "2004.ico")!
        basicImageS[11] = UIImage(named: "2004.ico")!
        basicImageS[12] = UIImage(named: "2004.ico")!
        basicImageS[13] = UIImage(named: "2004.ico")!
        basicImageS[14] = UIImage(named: "2004.ico")!
        basicImageS[15] = UIImage(named: "2004.ico")!
        
        pic0.image = basicImageS[0]
        pic1.image = basicImageS[1]
        pic2.image = basicImageS[2]
        pic3.image = basicImageS[3]
        pic4.image = basicImageS[4]
        pic5.image = basicImageS[5]
        pic6.image = basicImageS[6]
        pic7.image = basicImageS[7]
        pic8.image = basicImageS[8]
        pic9.image = basicImageS[9]
        pic10.image = basicImageS[10]
        pic11.image = basicImageS[11]
        pic12.image = basicImageS[12]
        pic13.image = basicImageS[13]
        pic14.image = basicImageS[14]
        pic15.image = basicImageS[15]
        openCount = 0
    }
    
    
    
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        
        if openCount == 2 {
            openCount = 0
            array3.removeAll()
            array4.removeAll()
            print(openCount)
            if i0Solved == false {
                pic0.image = basicImageS[0]
            }
            if i1Solved == false {
                pic1.image = basicImageS[1]
            }
            if i2Solved == false {
                pic2.image = basicImageS[2]
            }
            if i3Solved == false {
                pic3.image = basicImageS[3]
            }
            if i4Solved == false {
                pic4.image = basicImageS[4]
            }
            if i5Solved == false {
                pic5.image = basicImageS[5]
            }
            if i6Solved == false {
                pic6.image = basicImageS[6]
            }
            if i7Solved == false {
                pic7.image = basicImageS[7]
            }
            if i8Solved == false {
                pic8.image = basicImageS[8]
            }
            if i9Solved == false {
                pic9.image = basicImageS[9]
            }
            if i10Solved == false {
                pic10.image = basicImageS[10]
            }
            if i11Solved == false {
                pic11.image = basicImageS[11]
            }
            if i12Solved == false {
                pic12.image = basicImageS[12]
            }
            if i13Solved == false {
                pic13.image = basicImageS[13]
            }
            if i14Solved == false {
                pic14.image = basicImageS[14]
            }
            if i15Solved == false {
                pic15.image = basicImageS[15]
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
                    basicImageS[array4[0]] = UIImage(named: "success.png")!
                    basicImageS[array4[1]] = UIImage(named: "success.png")!
                }
            case "1":
                pic1.image = array1[Int(sender.currentTitle!)!]
                array3.append(pic1.image!)
                array4.append(1)
                if (array3.count == 2) && (array3[0] == array3[1])  {
                    print(array4)
                    array1[array4[0]] = successImage
                    array1[array4[1]] = successImage
                    basicImageS[array4[0]] = UIImage(named: "success.png")!
                    basicImageS[array4[1]] = UIImage(named: "success.png")!
                }
            case "2":
                pic2.image = array1[Int(sender.currentTitle!)!]
                array3.append(pic2.image!)
                array4.append(2)
                if (array3.count == 2) && (array3[0] == array3[1]) {
                    print(array4)
                    array1[array4[0]] = successImage
                    array1[array4[1]] = successImage
                    basicImageS[array4[0]] = UIImage(named: "success.png")!
                    basicImageS[array4[1]] = UIImage(named: "success.png")!
                }
            case "3":
                pic3.image = array1[Int(sender.currentTitle!)!]
                array3.append(pic3.image!)
                array4.append(3)
                if (array3.count == 2) && (array3[0] == array3[1]) {
                    print(array4)
                    array1[array4[0]] = successImage
                    array1[array4[1]] = successImage
                    basicImageS[array4[0]] = UIImage(named: "success.png")!
                    basicImageS[array4[1]] = UIImage(named: "success.png")!
                }
            case "4":
                pic4.image = array1[Int(sender.currentTitle!)!]
                array3.append(pic4.image!)
                array4.append(4)
                if (array3.count == 2) && (array3[0] == array3[1]) {
                    print(array4)
                    array1[array4[0]] = successImage
                    array1[array4[1]] = successImage
                    basicImageS[array4[0]] = UIImage(named: "success.png")!
                    basicImageS[array4[1]] = UIImage(named: "success.png")!
                }
            case "5":
                pic5.image = array1[Int(sender.currentTitle!)!]
                array3.append(pic5.image!)
                array4.append(5)
                if (array3.count == 2) && (array3[0] == array3[1]) {
                    print(array4)
                    array1[array4[0]] = successImage
                    array1[array4[1]] = successImage
                    basicImageS[array4[0]] = UIImage(named: "success.png")!
                    basicImageS[array4[1]] = UIImage(named: "success.png")!
                }
            case "6":
                pic6.image = array1[Int(sender.currentTitle!)!]
                array3.append(pic6.image!)
                array4.append(6)
                if (array3.count == 2) && (array3[0] == array3[1]) {
                    print(array4)
                    array1[array4[0]] = successImage
                    array1[array4[1]] = successImage
                    basicImageS[array4[0]] = UIImage(named: "success.png")!
                    basicImageS[array4[1]] = UIImage(named: "success.png")!
                }
            case "7":
                pic7.image = array1[Int(sender.currentTitle!)!]
                array3.append(pic7.image!)
                array4.append(7)
                if (array3.count == 2) && (array3[0] == array3[1]) {
                    print(array4)
                    array1[array4[0]] = successImage
                    array1[array4[1]] = successImage
                    basicImageS[array4[0]] = UIImage(named: "success.png")!
                    basicImageS[array4[1]] = UIImage(named: "success.png")!
                }
            case "8":
                pic8.image = array1[Int(sender.currentTitle!)!]
                array3.append(pic8.image!)
                array4.append(8)
                if (array3.count == 2) && (array3[0] == array3[1]) {
                    print(array4)
                    array1[array4[0]] = successImage
                    array1[array4[1]] = successImage
                    basicImageS[array4[0]] = UIImage(named: "success.png")!
                    basicImageS[array4[1]] = UIImage(named: "success.png")!
                }
            case "9":
                pic9.image = array1[Int(sender.currentTitle!)!]
                array3.append(pic9.image!)
                array4.append(9)
                if (array3.count == 2) && (array3[0] == array3[1]) {
                    print(array4)
                    array1[array4[0]] = successImage
                    array1[array4[1]] = successImage
                    basicImageS[array4[0]] = UIImage(named: "success.png")!
                    basicImageS[array4[1]] = UIImage(named: "success.png")!
                }
            case "10":
                pic10.image = array1[Int(sender.currentTitle!)!]
                array3.append(pic10.image!)
                array4.append(10)
                if (array3.count == 2) && (array3[0] == array3[1]) {
                    print(array4)
                    array1[array4[0]] = successImage
                    array1[array4[1]] = successImage
                    basicImageS[array4[0]] = UIImage(named: "success.png")!
                    basicImageS[array4[1]] = UIImage(named: "success.png")!
                }
            case "11":
                pic11.image = array1[Int(sender.currentTitle!)!]
                array3.append(pic11.image!)
                array4.append(11)
                if (array3.count == 2) && (array3[0] == array3[1]) {
                    print(array4)
                    array1[array4[0]] = successImage
                    array1[array4[1]] = successImage
                    basicImageS[array4[0]] = UIImage(named: "success.png")!
                    basicImageS[array4[1]] = UIImage(named: "success.png")!
                }
            case "12":
                pic12.image = array1[Int(sender.currentTitle!)!]
                array3.append(pic12.image!)
                array4.append(12)
                if (array3.count == 2) && (array3[0] == array3[1]) {
                    print(array4)
                    array1[array4[0]] = successImage
                    array1[array4[1]] = successImage
                    basicImageS[array4[0]] = UIImage(named: "success.png")!
                    basicImageS[array4[1]] = UIImage(named: "success.png")!
                }
            case "13":
                pic13.image = array1[Int(sender.currentTitle!)!]
                array3.append(pic13.image!)
                array4.append(13)
                if (array3.count == 2) && (array3[0] == array3[1]) {
                    print(array4)
                    array1[array4[0]] = successImage
                    array1[array4[1]] = successImage
                    basicImageS[array4[0]] = UIImage(named: "success.png")!
                    basicImageS[array4[1]] = UIImage(named: "success.png")!
                }
            case "14":
                pic14.image = array1[Int(sender.currentTitle!)!]
                array3.append(pic14.image!)
                array4.append(14)
                if (array3.count == 2) && (array3[0] == array3[1]) {
                    print(array4)
                    array1[array4[0]] = successImage
                    array1[array4[1]] = successImage
                    basicImageS[array4[0]] = UIImage(named: "success.png")!
                    basicImageS[array4[1]] = UIImage(named: "success.png")!
                }
            case "15":
                pic15.image = array1[Int(sender.currentTitle!)!]
                array3.append(pic15.image!)
                array4.append(15)
                if (array3.count == 2) && (array3[0] == array3[1]) {
                    print(array4)
                    array1[array4[0]] = successImage
                    array1[array4[1]] = successImage
                    basicImageS[array4[0]] = UIImage(named: "success.png")!
                    basicImageS[array4[1]] = UIImage(named: "success.png")!
                }
            default:
                break
            }
                        //basicImageS[array4[0]] = UIImage(named: "success.png")!
                        //basicImageS[array4[1]] = UIImage(named: "success.png")!
                        // так нелльзя ибо эти значение находятся внутри IF и наружу не передаются
        }
    }
    
    
    
    
}
