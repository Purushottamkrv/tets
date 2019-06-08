//
//  LeadVC.swift
//  InstaFitness
//
//  Created by mac on 8/20/18.
//  Copyright © 2018 TechnoBrix. All rights reserved.
//

import UIKit

class LeadVC: UIViewController {

    @IBOutlet weak var tableView:UITableView!
    @IBOutlet weak var segmentUi:UISegmentedControl!
    
    var condition:Bool = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let nib1 = UINib(nibName: "Lead", bundle: nil)
        tableView.register(nib1, forCellReuseIdentifier: "LeadTVC")
        let nib2 = UINib(nibName: "AcceptLead", bundle: nil)
        tableView.register(nib2, forCellReuseIdentifier: "AcceptLeadTVC")

        
        segmentUi.selectedSegmentIndex = 0
        segmentUi.addTarget(self, action: #selector(indexChanged(_:)), for: .valueChanged)

    }

    @objc func indexChanged(_ sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex{
        case 0:
            
            condition = true
            tableView.reloadData()
       case 1:
        condition = false
        tableView.reloadData()

        default:
            break
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

extension LeadVC:UITableViewDelegate,UITableViewDataSource
{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 20
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if condition
        {
        let cell = tableView.dequeueReusableCell(withIdentifier: "LeadTVC", for: indexPath) as!LeadTVC
        //cell.trainerInformation = obj.trainerInformation[indexPath.row]
        return cell
        }
        let cell = tableView.dequeueReusableCell(withIdentifier: "AcceptLeadTVC", for: indexPath) as!AcceptLeadTVC
        //cell.trainerInformation = obj.trainerInformation[indexPath.row]
        return cell

    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if !condition
        {
//            let storyboard = UIStoryboard(name: "Main", bundle: nil)
//            let vc = storyboard.instantiateViewController(withIdentifier: "LeadDetailVC") as! LeadDetailVC
//            navigationController?.pushViewController(vc,animated: true)
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            let vc = storyboard.instantiateViewController(withIdentifier: "LeadsAcceptedVC") as! LeadsAcceptedVC
            navigationController?.pushViewController(vc,animated: true)
        }
        else{
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            let vc = storyboard.instantiateViewController(withIdentifier: "MyLeadsVC") as! MyLeadsVC
            navigationController?.pushViewController(vc,animated: true)
            
        }
       
        
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        return 100
    }
    
 }
