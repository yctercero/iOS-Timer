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
    
    var timer = Timer()
    var seconds = 0
    var minutes = 0
    
    @IBOutlet weak var startButton: UIBarButtonItem!
    
    @IBOutlet weak var pauseButton: UIBarButtonItem!
    
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
    
    @IBAction func startTimer(_ sender: AnyObject) {
        
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.result), userInfo: nil, repeats: true)
        
        startButton.isEnabled = false
        
        pauseButton.isEnabled = true
        
    }
    
    @IBAction func pauseTimer(_ sender: AnyObject) {
        
        timer.invalidate()
        
        startButton.isEnabled = true
        
        pauseButton.isEnabled = false
        
    }
    
    @IBAction func resetTimer(_ sender: AnyObject) {
        
        timer.invalidate()
        
        timerTextField.text = "00 : 00"
        
        seconds = 0
        minutes = 0
        
        startButton.isEnabled = true
        
        pauseButton.isEnabled = false
        
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

