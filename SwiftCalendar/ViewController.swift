//
//  ViewController.swift
//  SwiftCalendar
//
//  Created by DTMobile on 15/2/11.
//  Copyright (c) 2015年 DTMobile. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var monthLabel: UILabel!
    @IBOutlet weak var navigationBar: UINavigationBar!
    @IBOutlet var tableView: UIView!
    
    var btnArray: [UIButton]?
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        println("frame width:\(self.view.frame.width);frame height:\(self.view.frame.height)")
        println("navigation bar width: \(self.navigationBar.frame.width);navigation bar height:\(self.navigationBar.frame.height)")
        let firstX:CGFloat = self.view.frame.width/16
        let firstY:CGFloat = 60
        
        // 考虑到一般的button，x:y=3:2
        let btnWidth:CGFloat = firstX*2
        let btnHeight:CGFloat = firstX*4/3
        
        var today = NSCalendar()

        println("\(today)")
        
        var originY:CGFloat = firstY
        for x in 0...5 {
            originY += 2.0*btnHeight
            
            var originX:CGFloat = firstX
            // 将宽度八等分，七个格子，剩余的均分在两侧。
            for y in 0...6 {
                var btn:UIButton = UIButton()
                btn.frame = CGRect(x:originX, y: originY, width: btnWidth, height: btnHeight)
                originX += btnWidth
                btn.setTitle("\(x)\(y)", forState: .Normal)
                btn.setTitleColor(UIColor.blueColor(), forState: .Normal)
                btnArray?.append(btn)
                self.view.addSubview(btn)
            }

        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

