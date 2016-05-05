//
//  ViewController.swift
//  jishi
//
//  Created by hqq1 on 16/5/5.
//  Copyright © 2016年 hqq1. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var time: UILabel!
    var remainingSeconds: Int = 0{
        willSet(newSeconds) {
            let mins = newSeconds/60
            let seconds = newSeconds%60
            time.text = NSString(format:"%02d:%02d", mins, seconds)
        }
    }
    var timer: NSTimer?

    
@IBAction func start(sender: UIButton) {
        let timeButton = 60
        let seconds = timeButton
        remainingSeconds += seconds
        timer = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: "updateTimer:", userInfo: nil, repeats: true)
    }
    @IBAction func clean(sender: UIButton) {
        remainingSeconds = 0
    }
    @IBAction func stop(sender: UIButton) {
        timer?.invalidate()
        timer = nil
    }
    
    func updateTimer(timer: NSTimer) {
        remainingSeconds -= 1
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

