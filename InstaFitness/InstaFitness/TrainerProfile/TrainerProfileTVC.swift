//
//  TrainerProfileTVC.swift
//  InstaFitness
//
//  Created by mac on 8/20/18.
//  Copyright © 2018 TechnoBrix. All rights reserved.
//

import UIKit
import FloatRatingView

class TrainerProfileTVC: UITableViewCell{
    
    
    var  trainerProfile_vc:UIViewController!
    
    
    
    let picker = UIImagePickerController()
    @IBOutlet weak var img:UIImageView!
    @IBOutlet var floatRatingView: FloatRatingView!
    
    

    override func awakeFromNib() {
        super.awakeFromNib()
        
      img.layer.cornerRadius = img.frame.size.height/2
      img.layer.borderWidth = 7
      img.layer.borderColor = UIColor.white.cgColor
      img.layer.shadowOpacity = 0.8
      img.layer.shadowColor = UIColor.lightGray.cgColor
        

      //img.layer.masksToBounds = true
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    @IBAction func camerabtn_acn(_ sender:Any){
        let alertContrlr = UIAlertController(title: nil, message: nil, preferredStyle: .actionSheet)
        alertContrlr.addAction(UIAlertAction(title: "Take Photo", style: .default, handler: {(UIAlertAction) ->Void in
            self.openCamera()
        }))
        alertContrlr.addAction(UIAlertAction(title: "Choose Photo", style: .default, handler: {(UIAlertAction) ->Void in
            self.openGallery()
        }))
        alertContrlr.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
        
        //If you want work actionsheet on ipad then you have to use popoverPresentationController to present the actionsheet, otherwise app will crash in iPad
        switch UIDevice.current.userInterfaceIdiom {
        case .pad:
            alertContrlr.popoverPresentationController?.sourceView = (sender as! UIView)
            alertContrlr.popoverPresentationController?.sourceRect = (sender as AnyObject).bounds
            alertContrlr.popoverPresentationController?.permittedArrowDirections = .up
        default:
            break
        }
        trainerProfile_vc.present(alertContrlr, animated: true, completion: nil)
        
    }
    func openCamera() {
        
        if UIImagePickerController.isSourceTypeAvailable(.camera) {
            picker.allowsEditing = true
            picker.sourceType = UIImagePickerControllerSourceType.camera
            picker.cameraCaptureMode = .photo
            //picker.mediaTypes = [kUTTypeMovie as String]
            //picker.cameraCaptureMode = .video
            picker.modalPresentationStyle = .fullScreen
            trainerProfile_vc.present(picker,animated: true,completion: nil)
        } else {
        }
    }
    func openGallery(){
        picker.allowsEditing = true
        picker.sourceType = .photoLibrary
        picker.mediaTypes = UIImagePickerController.availableMediaTypes(for: .photoLibrary)!
        trainerProfile_vc.present(picker, animated: true, completion: nil)
    }
}
extension TrainerProfileTVC:  UIImagePickerControllerDelegate, UINavigationControllerDelegate{
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        if let editedImage = info[UIImagePickerControllerEditedImage] as? UIImage{
            // let imageURL = info[UIImagePickerControllerReferenceURL] as! NSURL
           // profile_imageview.image = editedImage
            //self.uploadImageApiHit(uploadImage: editedImage)
        }
        picker.dismiss(animated: true, completion: nil)
    }
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        print("Cancelled")
        picker.dismiss(animated: true, completion: nil)
    }
}


