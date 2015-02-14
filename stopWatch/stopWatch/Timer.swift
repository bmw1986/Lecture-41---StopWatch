//
//  Timer.swift
//  stopWatch
//
//  Created by Freddy Oakes on 2/14/15.
//  Copyright (c) 2015 The Hofmeister Kink. All rights reserved.
//

import Foundation

class Timer {
    var timer = NSTimer()
    var handler: (Int) -> ()
    
    let duration: Int
    var elapsedTime: Int = 0
    
    init(duration: Int, handler: (Int) -> ()) {
        self.duration = duration
        self.handler = handler
    }
    
    func start() {
        self.timer = NSTimer.scheduledTimerWithTimeInterval(1.0,
            target: self,
            selector: Selector("tick"),
            userInfo: nil,
            repeats: true)
    }
    
    func stop() {
        timer.invalidate()
    }
    
    @objc func tick() {
        self.elapsedTime++
        
        self.handler(elapsedTime)
        
        if self.elapsedTime == self.duration {
            self.stop()
        }
    }
    
    deinit {
        self.timer.invalidate()
    }
}
