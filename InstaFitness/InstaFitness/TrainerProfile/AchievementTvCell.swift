//
//  AchievementTvCell.swift
//  InstaFitness
//
//  Created by Purushottam on 03/10/18.
//  Copyright © 2018 TechnoBrix. All rights reserved.
//

import UIKit

class AchievementTvCell: UITableViewCell {
    @IBOutlet weak var achiement_Cv:UICollectionView!
    @IBOutlet weak var headertitle_lbl:UILabel!
    override func awakeFromNib() {
        achiement_Cv.register(UINib(nibName: "workoutimgCvCell", bundle: nil), forCellWithReuseIdentifier: "workoutimgCvCell")
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}

extension AchievementTvCell:UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "workoutimgCvCell", for: indexPath) as! workoutimgCvCell
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 102, height: collectionView.bounds.height)
    }
    
    
}
