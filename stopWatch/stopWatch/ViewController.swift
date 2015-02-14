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

        // resetDisplay()
    }
    
    @IBAction func stopButton(sender: AnyObject) {

        // stopTime()
    }
    
    @IBAction func startButton(sender: AnyObject) {
    
        // startTime()
    }
    
    @IBOutlet weak var display: UILabel!
    
    func resetDisplay() {
        
        display.text = "00.00"
    }
    
    func stopTime() {
        
        var time = 0;
    }
    
    func startTime() {
        
        
    }
}




