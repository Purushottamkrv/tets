//
//  UploadPicTvCell.swift
//  InstaFitness
//
//  Created by Purushottam on 03/10/18.
//  Copyright © 2018 TechnoBrix. All rights reserved.
//

import UIKit

class UploadPicTvCell: UITableViewCell {
    @IBOutlet weak var workoutimg_CV:UICollectionView!
    override func awakeFromNib() {
        super.awakeFromNib()
        workoutimg_CV.register(UINib(nibName: "workoutimgCvCell", bundle: nil), forCellWithReuseIdentifier: "workoutimgCvCell")
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}
extension UploadPicTvCell:UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout{
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
