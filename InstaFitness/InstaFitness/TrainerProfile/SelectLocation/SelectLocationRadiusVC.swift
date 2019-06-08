//
//  SelectLocationRadiusVC.swift
//  InstaFitness
//
//  Created by mac on 8/21/18.
//  Copyright © 2018 TechnoBrix. All rights reserved.
//

import UIKit

class SelectLocationRadiusVC: UIViewController {

    @IBOutlet weak var tableView:UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()

        let nib = UINib(nibName: "SelectLocation", bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: "SelectLocatonTVC")
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

extension SelectLocationRadiusVC:UITableViewDelegate,UITableViewDataSource
{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "SelectLocatonTVC", for: indexPath) as!SelectLocatonTVC
        //cell.trainerInformation = obj.trainerInformation[indexPath.row]
        return cell

    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        return 700
    }
}
