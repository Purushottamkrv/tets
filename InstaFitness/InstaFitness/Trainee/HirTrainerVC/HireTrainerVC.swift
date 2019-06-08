//
//  HireTrainerVC.swift
//  InstaFitness
//
//  Created by Purushottam on 09/10/18.
//  Copyright © 2018 TechnoBrix. All rights reserved.
//

import UIKit

class HireTrainerVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func quickbookbtn_acn(_ sender: Any) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "ViewController") as! ViewController
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBOutlet weak var viewExpertBtn_acn: UIButton!
    
}
