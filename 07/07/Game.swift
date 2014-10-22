//
//  Game.swift
//  07
//
//  Created by Paweł Sobociński on 22.10.2014.
//  Copyright (c) 2014 Paweł Sobociński. All rights reserved.
//

import UIKit
import Foundation


class Game : UIView {
    var faileds = 0
    var originalFrame = CGRectZero
    let π = 3.14159
    let letter: String = String.random(length: 10)
    

    
    required init(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    init(frame: CGRect, referenceView: UIView) {
        self.originalFrame = frame
        
        super.init(frame: referenceView.frame)
 
        backgroundColor = UIColor.clearColor()
        setup()

    }
    
    func degrees(deg: Double) -> CGFloat {
        return CGFloat (deg*π)/180.0
    }

    func setup() {
        delay(1.0) {
            self.step1()
        }
        delay(2.0) {
        self.step2()
        }
        delay(3.0) {
        self.step3()
        }
        delay(4.0) {
        self.step4()
        }
        delay(5.0) {
        self.step5()
        }
        delay(6.0) {
        self.step6()
        }
        delay(7.0) {
        self.step7()
        }
        delay(8.0) {
       self.step8()
        }
        delay(9.0) {
        self.step9()
        }
        delay(10.0) {
        self.step10()
        }
      
    }
    
    func step1() {
        let frame = CGRectMake(
            20,
            280,
            160.0,
            10.0
        )
        var rect = UIView(frame: frame)
        rect.backgroundColor = UIColor.blackColor()
        self.addSubview(rect)
    }
    
    func step2() {
        let frame = CGRectMake(
            60,
            20,
            12.0,
            260.0
        )
        var rect = UIView(frame: frame)
        rect.backgroundColor = UIColor.blackColor()
        self.addSubview(rect)
    }
    
    func step3() {
        let frame = CGRectMake(
            20,
            40,
            160.0,
            10.0
        )
        var rect = UIView(frame: frame)
        rect.backgroundColor = UIColor.blackColor()
        self.addSubview(rect)
        
        let frame2 = CGRectMake(
            44,
            60,
            80.0,
            8.0
        )
        var rect2 = UIView(frame: frame2)
        rect2.backgroundColor = UIColor.blackColor()
        
        rect2.transform = CGAffineTransformMakeRotation(40)
        self.addSubview(rect2)
    }
    
    func step4() {
        let frame = CGRectMake(
            139,
            50,
            2.0,
            40.0
        )
        var rect = UIView(frame: frame)
        rect.backgroundColor = UIColor.blackColor()
        self.addSubview(rect)
    }
    
    
    func step5() {
        let frame = CGRectMake(
            130,
            90,
            20.0,
            20.0
        )
        var rect = UIView(frame: frame)
        rect.backgroundColor = UIColor.blackColor()
        self.addSubview(rect)
    }
    
    func step6() {
        let frame = CGRectMake(
            139,
            110,
            2.0,
            4.0
        )
        var rect = UIView(frame: frame)
        rect.backgroundColor = UIColor.blackColor()
        self.addSubview(rect)
        
        let frame2 = CGRectMake(
            120,
            114,
            40.0,
            50.0
        )
        var rect2 = UIView(frame: frame2)
        rect2.backgroundColor = UIColor.blackColor()
        self.addSubview(rect2)

    }
    
    func step7() {
        let frame = CGRectMake(
            118,
            160,
            8.0,
            50.0
        )
        var rect = UIView(frame: frame)
        rect.backgroundColor = UIColor.blackColor()
        
        rect.transform = CGAffineTransformMakeRotation(self.degrees(6.0))
        self.addSubview(rect)
    }
    
    func step8() {
        let frame = CGRectMake(
            154,
            160,
            8.0,
            50.0
        )
        var rect = UIView(frame: frame)
        rect.backgroundColor = UIColor.blackColor()
        
        rect.transform = CGAffineTransformMakeRotation(self.degrees(354.0))
        self.addSubview(rect)
    }
    
    func step9() {
        let frame = CGRectMake(
            112,
            116,
            8.0,
            40.0
        )
        var rect = UIView(frame: frame)
        rect.backgroundColor = UIColor.blackColor()
        
        rect.transform = CGAffineTransformMakeRotation(self.degrees(23.0))
        self.addSubview(rect)
    }
    
    func step10() {
        let frame = CGRectMake(
            160,
            116,
            8.0,
            40.0
        )
        var rect = UIView(frame: frame)
        rect.backgroundColor = UIColor.blackColor()
        
        rect.transform = CGAffineTransformMakeRotation(self.degrees(337.0))
        self.addSubview(rect)
    }
    
    func delay(seconds: Double, block: () -> ()) {
        let delay = seconds * Double(NSEC_PER_SEC)
        let time: dispatch_time_t = dispatch_time(DISPATCH_TIME_NOW, Int64(delay))
        dispatch_after(time, dispatch_get_main_queue(), block)
    }


}