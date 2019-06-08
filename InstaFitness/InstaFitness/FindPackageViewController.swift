//
//  FindPackageViewController.swift
//  InstaFitness
//
//  Created by mac on 8/16/18.
//  Copyright © 2018 TechnoBrix. All rights reserved.
//

import UIKit

class FindPackageViewController: UIViewController {

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
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
