//
//  LeadDetailVC.swift
//  InstaFitness
//
//  Created by mac on 8/20/18.
//  Copyright © 2018 TechnoBrix. All rights reserved.
//

import UIKit

class LeadDetailVC: UIViewController {

    
    @IBOutlet weak var tableView:UITableView!
    @IBOutlet weak var reject_btn:UIButton!

    
    var headerData:[String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

      let nib = UINib(nibName: "TimeScheduled", bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: "TimeScheduledTVC")
        let nib1 = UINib(nibName: "PersonDetails", bundle: nil)
        tableView.register(nib1, forCellReuseIdentifier: "PersonDetailsTVC")
        let nib2 = UINib(nibName: "personAddress", bundle: nil)
        tableView.register(nib2, forCellReuseIdentifier: "PersonAddressTVC")
        let nib3 = UINib(nibName: "HealthStatus", bundle: nil)
        tableView.register(nib3, forCellReuseIdentifier: "HealthStatusTVC")
        let nib4 = UINib(nibName: "Budget", bundle: nil)
        tableView.register(nib4, forCellReuseIdentifier: "BudgetTVC")
        headerData = ["BUDGET","PERSON DETAILS","TIME SCHEDULED","ADDRESS","HEALTH STATUS"]
        reject_btn.layer.shadowOpacity = 0.8
        reject_btn.layer.shadowColor = UIColor.lightGray.cgColor
        reject_btn.layer.shadowOffset = .zero
        
    }
    @IBAction func pushBack(_ sender:UIButton)
    {
        self.navigationController?.popViewController(animated: true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

extension LeadDetailVC:UITableViewDataSource,UITableViewDelegate
{
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
       return headerData[section]
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        
        return headerData.count
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        

        if indexPath.section == 0
        {

            let cell = tableView.dequeueReusableCell(withIdentifier: "BudgetTVC", for: indexPath) as!BudgetTVC
            return cell

        }
        else if indexPath.section == 1
        {
            let cell = tableView.dequeueReusableCell(withIdentifier: "PersonDetailsTVC", for: indexPath) as!PersonDetailsTVC
            return cell


        }
        else if indexPath.section == 2
        {
            let cell = tableView.dequeueReusableCell(withIdentifier: "TimeScheduledTVC", for: indexPath) as!TimeScheduledTVC
            return cell

        }
        else if indexPath.section == 3
        {
            let cell = tableView.dequeueReusableCell(withIdentifier: "PersonAddressTVC", for: indexPath) as!PersonAddressTVC
            return cell

        }
        else
        {
            let cell = tableView.dequeueReusableCell(withIdentifier: "HealthStatusTVC", for: indexPath) as!HealthStatusTVC
            return cell

        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        if indexPath.section == 0
        {
            return 60
        }
        else if indexPath.section == 1
        {
            return 150

        }
        else if indexPath.section == 2
        {
            return 80

        }
        
        return 80
    }
}
