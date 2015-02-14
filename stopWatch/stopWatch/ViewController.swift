//
//  ViewController.swift
//  stopWatch
//
//  Created by Freddy Oakes on 2/13/15.
//  Copyright (c) 2015 The Hofmeister Kink. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func resetButton(sender: AnyObject) {

        //Timer.deinit
    }
    
    @IBAction func stopButton(sender: AnyObject) {

        //Timer.stop(Timer)
    }
    
    @IBAction func startButton(sender: AnyObject) {
    
        //Timer.start(Timer)
    }
    
    @IBOutlet func display(elapsedTime) {

        var timeRemaining = self.duration - elapsedTime
        display.value = timeRemaining
    }
    
}
