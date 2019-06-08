//
//  SpecializesinTvCell.swift
//  InstaFitness
//
//  Created by Purushottam on 03/10/18.
//  Copyright © 2018 TechnoBrix. All rights reserved.
//

import UIKit

class SpecializesinTvCell: UITableViewCell {
    @IBOutlet weak var specialized_Cv:UICollectionView!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        specialized_Cv.register(UINib(nibName: "SpecializedCvCell", bundle: nil), forCellWithReuseIdentifier: "SpecializedCvCell")
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
extension SpecializesinTvCell:UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "SpecializedCvCell", for: indexPath) as! SpecializedCvCell
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.bounds.width/3-10, height: 30)
    }
    
    
}

