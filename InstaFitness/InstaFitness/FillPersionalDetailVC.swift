//
//  FillPersionalDetailVC.swift
//  InstaFitness
//
//  Created by mac on 8/16/18.
//  Copyright © 2018 TechnoBrix. All rights reserved.
//

import UIKit

class FillPersionalDetailVC: UIViewController {

    @IBOutlet weak var selectbtn:UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        selectbtn.setRadius()

    }
    @IBAction func pushBack(_ sender:UIButton)
    {
        self.navigationController?.popViewController(animated: true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    


}
