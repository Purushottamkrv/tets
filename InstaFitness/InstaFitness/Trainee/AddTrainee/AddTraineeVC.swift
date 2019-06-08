//
//  AddTraineeVC.swift
//  InstaFitness
//
//  Created by mac on 8/22/18.
//  Copyright © 2018 TechnoBrix. All rights reserved.
//

import UIKit

class AddTraineeVC: UIViewController {

    @IBOutlet weak var tableView:UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()

        let nib1 = UINib(nibName: "AddTraineeCell", bundle: nil)
        tableView.register(nib1, forCellReuseIdentifier: "AddTraineeTVC")
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

extension AddTraineeVC:UITableViewDelegate,UITableViewDataSource
{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 20
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "AddTraineeTVC", for: indexPath) as!AddTraineeTVC
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //            let storyboard = UIStoryboard(name: "Main", bundle: nil)
        //            let vc = storyboard.instantiateViewController(withIdentifier: "MyTraineeTVC") as! MyTraineeTVC
        //            navigationController?.pushViewController(vc,animated: true)
        
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        return 100
    }
    
}
