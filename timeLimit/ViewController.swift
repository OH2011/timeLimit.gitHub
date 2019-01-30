//
//  ViewController.swift
//  timeLimit
//
//  Created by Apple on 2019/01/29.
//  Copyright © 2019年 Apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var myImageView: UIImageView!
    
    var count = 500
    let maxCount = 500
    
    let img = UIImage(named: "Unknown")
    
    let img2 = UIImage(named: "bang")
    
    var timer = Timer()
    
    var flag = true

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    @IBAction func startButtonTapped(_ sender: Any) {
        if timer == nil{
            timer = Timer.scheduledTimer(timeInterval: 0.01, target: self, selector: Selector("countDown"), userInfo: nil, repeats: true)
        }
    }
    
    @IBAction func stopButtonTapped(_ sender: Any) {
    }
    
    @IBAction func resetButtonTapped(_ sender: Any) {
    }
    
    @objc func countDown(){
        count-=1
        let min = count/60/100
        let sec = (count/100)%60
        timeLabel.text = "\(min):\(sec)"
        myImageView.image = img
    
        let rate = Double(maxCount-count) / Double(maxCount)
        
        myImageView.transform = CGAffineTransform(scaleX: CGFloat(rate), y: CGFloat(rate))
        
        if count == 0{
            timer.invalidate()
            self.myImageView.image = self.img2
        }
    }
    
    
    
    
    
    
    
    


}






















