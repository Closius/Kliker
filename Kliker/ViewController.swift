//
//  ViewController.swift
//  Kliker
//
//  Created by Admin on 24.12.14.
//  Copyright (c) 2014 Mamka Admina. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var i=0
    var j=0
    let max=5
    var startTime=NSDate.timeIntervalSinceReferenceDate()
    var bestTimeNow=0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
          // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func klikMe(sender: AnyObject)
    {
      //  self.speedLabel.text=String(startTime)
        
        if i==0{
        startTime=NSDate.timeIntervalSinceReferenceDate()
        }
        i++
        j++
        self.klikLabel.text=String(j)
        
        if i==max
        {
           
            var currentTime = NSDate.timeIntervalSinceReferenceDate()
            var elapsedTime: NSTimeInterval = currentTime - startTime
            self.speedLabel.text="Speed: " + String(format:"%.3f", elapsedTime)
            i=0
            
            
            //First put
            //for commit. you can delete it
            if j==max
            {
                self.bestTime.text="Best time now: " + String(format:"%.3f", elapsedTime)
                bestTimeNow=elapsedTime
            }
            //Find best Time
            if elapsedTime < bestTimeNow
            {
                bestTimeNow=elapsedTime
                self.bestTime.text="Best time now: " + String(format:"%.3f", bestTimeNow)
            }
            
            
        }
        
    }
    
    @IBOutlet weak var bestTime: UILabel!
    @IBOutlet weak var klikLabel: UILabel!
    @IBOutlet weak var speedLabel: UILabel!
}

