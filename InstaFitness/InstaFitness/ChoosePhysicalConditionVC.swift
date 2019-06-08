//
//  ChoosePhysicalConditionVC.swift
//  InstaFitness
//
//  Created by mac on 8/16/18.
//  Copyright © 2018 TechnoBrix. All rights reserved.
//

import UIKit

class ChoosePhysicalConditionVC: UIViewController {

    @IBOutlet weak var selectbtn:UIButton!
    @IBOutlet weak var Diabetes_btn:UIButton!
    @IBOutlet weak var Thyroid_btn:UIButton!
    @IBOutlet weak var PCOD_btn:UIButton!
    @IBOutlet weak var BackInjury_btn:UIButton!
    @IBOutlet weak var KneeInjury_btn:UIButton!
    @IBOutlet weak var ElbowInjury_btn:UIButton!
    @IBOutlet weak var ShoulderInjury_btn:UIButton!
    @IBOutlet weak var Other_btn:UIButton!
    @IBOutlet weak var None_btn:UIButton!

    var selectDiabetes:Bool = true
    var selectThyroid:Bool = true
    var selectPCOD:Bool = true
    var selectBackInjury:Bool = true
    var selectKneeInjury:Bool = true
    var selectElbowInjury:Bool = true
    var selectShoulderInjury:Bool = true
    var selectOther:Bool = true
    var selectNone:Bool = true



    override func viewDidLoad() {
        super.viewDidLoad()
        selectbtn.setRadius()
    }
    @IBAction func pushBack(_ sender:UIButton)
    {
        self.navigationController?.popViewController(animated: true)
    }

    @IBAction func selectDiabetes(_ sender:UIButton)
    {
        
        if selectDiabetes
        {
           Diabetes_btn.setImage(#imageLiteral(resourceName: "check-y"), for: .normal)
            selectDiabetes = false
            
        }
        else
        {
            Diabetes_btn.setImage(#imageLiteral(resourceName: "check"), for: .normal)
            selectDiabetes = true

        }
    }
    @IBAction func selectThyroid(_ sender:UIButton)
    {
        if selectThyroid
        {
            Thyroid_btn.setImage(#imageLiteral(resourceName: "check-y"), for: .normal)
            selectThyroid = false
            
        }
        else
        {
            Thyroid_btn.setImage(#imageLiteral(resourceName: "check"), for: .normal)
            selectThyroid = true
            
        }

    }
    @IBAction func selectPCOD(_ sender:UIButton)
    {
        if selectPCOD
        {
            PCOD_btn.setImage(#imageLiteral(resourceName: "check-y"), for: .normal)
            selectPCOD = false
            
        }
        else
        {
            PCOD_btn.setImage(#imageLiteral(resourceName: "check"), for: .normal)
            selectPCOD = true
            
        }

    }
    @IBAction func selectBackInjury(_ sender:UIButton)
    {
        if selectBackInjury
        {
            BackInjury_btn.setImage(#imageLiteral(resourceName: "check-y"), for: .normal)
            selectBackInjury = false
            
        }
        else
        {
            BackInjury_btn.setImage(#imageLiteral(resourceName: "check"), for: .normal)
            selectBackInjury = true
            
        }

    }
    @IBAction func selectKneeInjury(_ sender:UIButton)
    {
        if selectKneeInjury
        {
            KneeInjury_btn.setImage(#imageLiteral(resourceName: "check-y"), for: .normal)
            selectKneeInjury = false
            
        }
        else
        {
            KneeInjury_btn.setImage(#imageLiteral(resourceName: "check"), for: .normal)
            selectKneeInjury = true
            
        }
        
    }
    @IBAction func selectElbowInjury(_ sender:UIButton)
    {
        if selectElbowInjury
        {
            ElbowInjury_btn.setImage(#imageLiteral(resourceName: "check-y"), for: .normal)
            selectElbowInjury = false
            
        }
        else
        {
            ElbowInjury_btn.setImage(#imageLiteral(resourceName: "check"), for: .normal)
            selectElbowInjury = true
            
        }
        
    }
    @IBAction func selectShoulderInjury(_ sender:UIButton)
    {
        if selectShoulderInjury
        {
            ShoulderInjury_btn.setImage(#imageLiteral(resourceName: "check-y"), for: .normal)
            selectShoulderInjury = false
            
        }
        else
        {
            ShoulderInjury_btn.setImage(#imageLiteral(resourceName: "check"), for: .normal)
            selectShoulderInjury = true
            
        }
        
    }

    @IBAction func selectOther(_ sender:UIButton)
    {
        if selectOther
        {
            Other_btn.setImage(#imageLiteral(resourceName: "check-y"), for: .normal)
            selectOther = false
            
        }
        else
        {
            Other_btn.setImage(#imageLiteral(resourceName: "check"), for: .normal)
            selectOther = true
            
        }
        
    }
    @IBAction func selectNone(_ sender:UIButton)
    {
        if selectNone
        {
            None_btn.setImage(#imageLiteral(resourceName: "check-y"), for: .normal)
            selectNone = false
            
        }
        else
        {
            None_btn.setImage(#imageLiteral(resourceName: "check"), for: .normal)
            selectNone = true
            
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    


    
}
