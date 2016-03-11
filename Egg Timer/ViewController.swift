//
//  ViewController.swift
//  Egg Timer
//
//  Created by Yara Tercero on 2/8/16.
//  Copyright © 2016 Yara Tercero. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var timerTextField: UILabel!
    
    var timer = NSTimer()
    var seconds = 0
    var minutes = 0
    
    
    func result(){
        
        seconds += 1

        
        if seconds < 60 {
            
            if seconds < 10 && minutes < 10 {
                
                return timerTextField.text = "0\(minutes) : 0\(seconds)"
                
            } else if seconds < 10 && minutes >= 10 {
                
                return timerTextField.text = "\(minutes) : 0\(seconds)"
                
            } else if seconds >= 10 && minutes < 10 {
                
                return timerTextField.text = "0\(minutes) : \(seconds)"
                
            } else {
                
                return timerTextField.text = "\(minutes) : \(seconds)"
                
            }
            
            
        } else if seconds == 60 {
            seconds = 0
            minutes += 1
            
            if seconds < 10 && minutes < 10 {
                
                return timerTextField.text = "0\(minutes) : 0\(seconds)"
                
            } else if seconds < 10 && minutes >= 10 {
                
                return timerTextField.text = "\(minutes) : 0\(seconds)"
                
            } else if seconds >= 10 && minutes < 10 {
                
                return timerTextField.text = "0\(minutes) : \(seconds)"
                
            } else {
                
                return timerTextField.text = "\(minutes) : \(seconds)"
                
            }
            
        }
        
        
    }
    
    @IBAction func startTimer(sender: AnyObject) {
        
        timer = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: Selector("result"), userInfo: nil, repeats: true)
        
    }
    
    @IBAction func pauseTimer(sender: AnyObject) {
        
        timer.invalidate()
        
    }
    
    @IBAction func resetTimer(sender: AnyObject) {
        
        timer.invalidate()
        
        timerTextField.text = "00 : 00"
        
        seconds = 0
        minutes = 0
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        timerTextField.text = "00 : 00"
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

