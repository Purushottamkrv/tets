//
//  MyLeadsVC.swift
//  InstaFitness
//
//  Created by Purushottam on 04/10/18.
//  Copyright © 2018 TechnoBrix. All rights reserved.
//

import UIKit

class MyLeadsVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func backbtn_acn(_ sender: Any){
        self.navigationController?.popViewController(animated: true)
    }
}
