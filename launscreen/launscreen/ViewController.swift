//
//  ViewController.swift
//  launscreen
//
//  Created by Purushottam on 04/05/19.
//  Copyright © 2019 Oodles. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var counter = 0
    var timer = Timer()

    
    override func viewDidLoad() {
        super.viewDidLoad()
        timer = Timer.scheduledTimer(timeInterval: 0.5, target: self, selector: #selector(timerAction), userInfo: nil, repeats: true)
        timerAction()
    }

     @objc func timerAction() {
        
        counter += 1
        
        print("counter is",counter)
        
        
        if counter == 5{
            let vc = self.storyboard?.instantiateViewController(withIdentifier: "secondvc") as! secondvc
            
            self.navigationController?.pushViewController(vc, animated: true)
            timer.invalidate()
            
        }
    }

}

