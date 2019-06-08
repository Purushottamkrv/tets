//
//  MyFitnessVC.swift
//  InstaFitness
//
//  Created by Purushottam on 04/10/18.
//  Copyright © 2018 TechnoBrix. All rights reserved.
//

import UIKit
class MyFitnessVC: UIViewController {
    @IBOutlet weak var Gender_Cv:UICollectionView!
    let genderImgArray = [#imageLiteral(resourceName: "male"),#imageLiteral(resourceName: "female")]
    var tag:Int!
    override func viewDidLoad() {
        super.viewDidLoad()
        Gender_Cv.register(UINib(nibName: "GenderCvCell", bundle: nil), forCellWithReuseIdentifier: "GenderCvCell")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
}
extension MyFitnessVC:UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 2
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "GenderCvCell", for: indexPath) as! GenderCvCell
        cell.upperyello_view.isHidden = true
        cell.loweryello_view.isHidden = true

        
        if tag == 0{
            if indexPath.row == 0{
                cell.upperyello_view.isHidden = false
                cell.loweryello_view.isHidden = false
                }
            else{
                cell.upperyello_view.isHidden = true
                cell.loweryello_view.isHidden = true
            }
            
        }
        else if tag == 1{
            if indexPath.row == 1{
                cell.upperyello_view.isHidden = false
                cell.loweryello_view.isHidden = false
            }
            else{
                cell.upperyello_view.isHidden = true
                cell.loweryello_view.isHidden = true

                
                }
            
        }
        cell.gender_img.image = genderImgArray[indexPath.row]
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.bounds.width/2-10, height: collectionView.bounds.width/2+30)
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let gendercell = Gender_Cv.cellForItem(at: indexPath) as! GenderCvCell
//        gendercell.upperyello_view.isHidden = true
//        gendercell.loweryello_view.isHidden = true
        if indexPath.row == 0{
            tag = 0
            gendercell.upperyello_view.isHidden = false
            gendercell.loweryello_view.isHidden = false
            Gender_Cv.reloadData()


        }
        else{
            tag = 1
            gendercell.upperyello_view.isHidden = false
            gendercell.loweryello_view.isHidden = false
            Gender_Cv.reloadData()



            
        }
    }
}

