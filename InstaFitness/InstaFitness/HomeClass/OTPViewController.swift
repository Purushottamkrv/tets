//
//  OTPViewController.swift
//  InstaFitness
//
//  Created by apple on 9/4/18.
//  Copyright © 2018 TechnoBrix. All rights reserved.
//

import UIKit

class OTPViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func backAction(){
        self.navigationController?.popViewController(animated: true)
    }
    @IBAction func submitAction(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "TabBarController") as! TabBarController
        let navigationController = UINavigationController(rootViewController: vc)
        navigationController.isNavigationBarHidden = true
        self.navigationController?.pushViewController(vc, animated: true)
    }

}
