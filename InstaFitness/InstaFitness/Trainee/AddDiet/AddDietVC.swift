//
//  AddDietVC.swift
//  InstaFitness
//
//  Created by mac on 8/23/18.
//  Copyright © 2018 TechnoBrix. All rights reserved.
//

import UIKit

class AddDietVC: UIViewController {
    
    @IBOutlet weak var tableView:UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()

        let nib1 = UINib(nibName: "TotalDetailCell", bundle: nil)
        tableView.register(nib1, forCellReuseIdentifier: "TotalDetailCellTVC")
        
        let nib2 = UINib(nibName: "FoodTimeDetailCell", bundle: nil)
        tableView.register(nib2, forCellReuseIdentifier: "FoodTimeDetailTVC")

    }
    @IBAction func back(_ sender:UIButton)
    {
        self.navigationController?.popViewController(animated: true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

extension AddDietVC:UITableViewDelegate,UITableViewDataSource
{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 20
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == 0
        {
            let cell = tableView.dequeueReusableCell(withIdentifier: "TotalDetailCellTVC", for: indexPath) as!TotalDetailCellTVC
            return cell

        }
        let cell = tableView.dequeueReusableCell(withIdentifier: "FoodTimeDetailTVC", for: indexPath) as!FoodTimeDetailTVC
        return cell


    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //            let storyboard = UIStoryboard(name: "Main", bundle: nil)
        //            let vc = storyboard.instantiateViewController(withIdentifier: "MyTraineeTVC") as! MyTraineeTVC
        //            navigationController?.pushViewController(vc,animated: true)
        
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.row == 0
        {
            return 80
        }
        return 170

    }
    
}
