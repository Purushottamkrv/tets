//
//  LeadsAcceptedClassViewController.swift
//  InstaFitness
//
//  Created by Purushottam on 04/10/18.
//  Copyright © 2018 TechnoBrix. All rights reserved.
//

import UIKit

class LeadsAcceptedVC: UIViewController {
    @IBOutlet weak var leadsAcceptedTV:UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
      //  leadsAcceptedTV.registerCell(UINib(nibName:"LeadsAcceptedTvCell", bundle: nil), "LeadsAcceptedTvCell")
        leadsAcceptedTV.register(UINib(nibName: "LeadsAcceptedTvCell", bundle: nil), forCellReuseIdentifier: "LeadsAcceptedTvCell")

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func backbtn_acn(_ sender: Any){
        self.navigationController?.popViewController(animated: true)
    }
    


}
extension LeadsAcceptedVC:UITableViewDataSource,UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "LeadsAcceptedTvCell") as! LeadsAcceptedTvCell
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return self.view.frame.size.height-100
    }
    
}
