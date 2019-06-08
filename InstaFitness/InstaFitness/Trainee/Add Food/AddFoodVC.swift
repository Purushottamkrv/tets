//
//  AddFoodVC.swift
//  InstaFitness
//
//  Created by mac on 8/23/18.
//  Copyright © 2018 TechnoBrix. All rights reserved.
//

import UIKit

class AddFoodVC: UIViewController {

 @IBOutlet weak var tableView:UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()

        let nib1 = UINib(nibName: "FoodFullDetailCell", bundle: nil)
        tableView.register(nib1, forCellReuseIdentifier: "FoodFullDetailTVC")
        let nib2 = UINib(nibName: "FoodShortDetailCell", bundle: nil)
        tableView.register(nib2, forCellReuseIdentifier: "FoodShortDetailTVC")

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

extension AddFoodVC:UITableViewDelegate,UITableViewDataSource
{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 20
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == 0
        {
        let cell = tableView.dequeueReusableCell(withIdentifier: "FoodFullDetailTVC", for: indexPath) as!FoodFullDetailTVC
        return cell
        }
        let cell = tableView.dequeueReusableCell(withIdentifier: "FoodShortDetailTVC", for: indexPath) as!FoodShortDetailTVC
        return cell

    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        if indexPath.row == 0
        {
        return 150
        }
        return 77

    }
    
}
