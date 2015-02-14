//
//  ViewController.swift
//  stopWatch
//
//  Created by Freddy Oakes on 2/13/15.
//  Copyright (c) 2015 The Hofmeister Kink. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var timer = NSTimer()
    var count = 0
    var tickTock = false
    
    func result() {
        
        if (tickTock == true) {
            count++
            display.text = String(count)
        }
        if (tickTock == false) {
            display.text = String(count)
        }
    }
    
    @IBAction func resetButton(sender: AnyObject) {
        count = 0
        display.text = String(count)
    }
    
    @IBAction func stopButton(sender: AnyObject) {
        tickTock = false
    }
    
    @IBAction func startButton(sender: AnyObject) {
        tickTock = true
    }
    
    @IBOutlet weak var display: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // calls the function "result"
        timer = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: Selector("result"), userInfo: nil, repeats: true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}