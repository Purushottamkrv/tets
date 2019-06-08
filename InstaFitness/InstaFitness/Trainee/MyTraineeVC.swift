//
//  MyTraineeVC.swift
//  InstaFitness
//
//  Created by mac on 8/22/18.
//  Copyright © 2018 TechnoBrix. All rights reserved.
//

import UIKit

class MyTraineeVC: UIViewController {

    @IBOutlet weak var tableView:UITableView!
    
    @IBOutlet weak var traineerequestTv:UITableView!

    @IBOutlet weak var segmentControl:UISegmentedControl!
    @IBOutlet weak var addTrainee_btn:UIButton!
    
    var condition:Bool = false
    override func viewDidLoad() {
        super.viewDidLoad()
        let nib1 = UINib(nibName: "MyTraineeNewTvCell", bundle: nil)
        tableView.register(nib1, forCellReuseIdentifier: "MyTraineeNewTvCell")
        
        let nib2 = UINib(nibName: "MyTraineeCell", bundle: nil)
        traineerequestTv.register(nib2, forCellReuseIdentifier: "MyTraineeTVC")
        traineerequestTv.isHidden = true
        tableView.isHidden = false
        addTrainee_btn.isHidden = false

        
        segmentControl.selectedSegmentIndex = 0
        segmentControl.addTarget(self, action: #selector(indexChanged(_:)), for: .valueChanged)
          addTrainee_btn.setRadius()

    }
    @objc func indexChanged(_ sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex{
        case 0:
            tableView.isHidden = false
            traineerequestTv.isHidden = true
//            addTrainee_btn.isHidden = false
            condition = false
            addTrainee_btn.isHidden = false
//            tableView.reloadData()
        case 1:
            tableView.isHidden = true
            traineerequestTv.isHidden = false
            addTrainee_btn.isHidden = true


            
           condition = true
//            addTrainee_btn.isHidden = true
//            tableView.reloadData()
            
        default:
            break
        }
    }

    @IBAction func addTrainee(_ sender:UIButton)
    {
//        let storyboard = UIStoryboard(name: "Main", bundle: nil)
//        let vc = storyboard.instantiateViewController(withIdentifier: "MyTraineeTVC") as! MyTraineeTVC
//                    navigationController?.pushViewController(vc,animated: true)

        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

extension MyTraineeVC:UITableViewDelegate,UITableViewDataSource
{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if tableView == traineerequestTv{
            return 20
        }
        else{
            return 20
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if tableView == traineerequestTv{
            let cell = tableView.dequeueReusableCell(withIdentifier: "MyTraineeTVC", for: indexPath) as! MyTraineeTVC
           

            return cell
        }
        else{
            let cell = tableView.dequeueReusableCell(withIdentifier: "MyTraineeNewTvCell", for: indexPath) as!MyTraineeNewTvCell
            

            return cell
        }
        
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
       if condition
       {
      
        }
       else{
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "TraineeProfileVC") as! TraineeProfileVC
        navigationController?.pushViewController(vc,animated: true)
        }
        
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if tableView == traineerequestTv{
            return 100
        }
        else{
            return 120
        }
   }
    
}
