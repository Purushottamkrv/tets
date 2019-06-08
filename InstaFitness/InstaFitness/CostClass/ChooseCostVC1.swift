//
//  ChooseCostVC.swift
//  InstaFitness
//
//  Created by mac on 8/17/18.
//  Copyright © 2018 TechnoBrix. All rights reserved.
//

import UIKit

class ChooseCostVC1: UIViewController {

    @IBOutlet weak var table:UITableView!
    
    var cellselectCount:Int = 0
    var sourceData:[String] = []
    
  override func viewDidLoad() {
        super.viewDidLoad()

        let nib = UINib(nibName: "SectionOne", bundle: nil)
        let nib1 = UINib(nibName: "SectionTwo", bundle: nil)
        let nib2 = UINib(nibName: "SectionThree", bundle: nil)

        table.register(nib, forCellReuseIdentifier: "SectionOne")
        table.register(nib1, forCellReuseIdentifier: "SectionTwo")
        table.register(nib2, forCellReuseIdentifier: "SectionThree")
        sourceData = ["Basic(5500 - 6000)","Experienced(6500 - 8000)","Expert(8500 - 10000)"]
    }
    
 @IBAction func pushBack(_ sender:UIButton)
    {
        self.navigationController?.popViewController(animated: true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
}

extension ChooseCostVC1:UITableViewDataSource,UITableViewDelegate
    
{
   
    func numberOfSections(in tableView: UITableView) -> Int {
        
        return 3
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        if section == 0
        {
            return 1
        }
        else if section == 1
        {
            return 3
        }
        else
        {
            return 1
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if indexPath.section == 0
        {
       let cell = tableView.dequeueReusableCell(withIdentifier:"SectionOne", for: indexPath)
            
            return cell
        }
        else if indexPath.section == 1
        {
            let cell = tableView.dequeueReusableCell(withIdentifier:"SectionTwo", for: indexPath) as!SectionTwoTVC
               cell.infomation_lab.text = sourceData[indexPath.row]
              if cellselectCount == indexPath.row
              {
                cell.img.image = #imageLiteral(resourceName: "redio-button-y")
              }
            else
              {
                cell.img.image = #imageLiteral(resourceName: "redio-button")

            }
            return cell
        }
        else
        {
            let cell = tableView.dequeueReusableCell(withIdentifier:"SectionThree", for: indexPath) as!SectionThreeTVC
            return cell

        }
    }
func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.section == 0
        {
            return 200
        }
        else if indexPath.section == 1
        {
            return 70
        }
        else
        {
            return 70
        }
    }
   
 func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    if indexPath.section == 1
      {
         cellselectCount = indexPath.row
         tableView.reloadData()
      }
        
 else if indexPath.section == 2
       {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "FillPersionalDetailVC") as! FillPersionalDetailVC
        navigationController?.pushViewController(vc,animated: true)
      }
    
    }
}

