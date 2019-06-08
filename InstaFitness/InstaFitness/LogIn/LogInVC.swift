//
//  LogInVC.swift
//  InstaFitness
//
//  Created by mac on 8/25/18.
//  Copyright © 2018 TechnoBrix. All rights reserved.
//

import UIKit

class LogInVC: UIViewController,UIPopoverPresentationControllerDelegate {

    @IBOutlet weak var btn:UIButton!
    
    
    var pop_up = LogInPopUpView()
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

 @IBAction func setUpAction(_ sender:UIButton)
    {
 

        pop_up.view.backgroundColor = UIColor.blue
        pop_up.preferredContentSize = CGSize(width: 200, height: 200)
        pop_up.modalPresentationStyle = .popover
        let ppc = pop_up.popoverPresentationController
        ppc?.permittedArrowDirections = .up
        ppc?.delegate = self
        ppc!.sourceView = btn
        ppc?.sourceRect = CGRect(x:0, y: 20, width: 10, height: 10)

        present(pop_up, animated: true, completion: nil)

    }
    func adaptivePresentationStyle(for controller: UIPresentationController) -> UIModalPresentationStyle {
        return .none
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
