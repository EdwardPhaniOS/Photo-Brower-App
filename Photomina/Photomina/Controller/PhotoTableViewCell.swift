//
//  PhotoTableViewCell.swift
//  Photomina
//
//  Created by Tan Vinh Phan on 11/12/18.
//  Copyright © 2018 PTV. All rights reserved.
//

import UIKit

class PhotoTableViewCell: UITableViewCell {

    @IBOutlet weak var photoImageView: UIImageView!
    
    @IBOutlet weak var profileImageView: UIImageView!
    
    @IBOutlet weak var captionLabel: UILabel!

    var photo: Photo! {
        didSet {
            self.updateUI()
        }
    }
    
    func updateUI() -> Void {
        photoImageView.image = photo.imageName
        profileImageView.image = photo.profileImage
        captionLabel.text = photo.caption
        
        profileImageView.layer.cornerRadius = 16.0
        profileImageView.layer.masksToBounds = true
        profileImageView.layer.borderWidth = 2.0
        profileImageView.layer.borderColor = UIColor.lightGray.withAlphaComponent(0.6).cgColor
        profileImageView.layer.shadowOffset = CGSize(width: 0.0, height: 0.0)
        profileImageView.layer.opacity = 1.0
    }
    
    
//    var photo: Photo! {
//        didSet{
//            self.updateUI()
//        }
//    }
//
//    func updateUI() -> Void {
//        photoImageView.image = photo.imageName
//        profileImageView.image = photo.profileImage
//        captionLabel.text = photo.caption
//
    
    //Cosmetics
//    profileImageView.layer.cornerRadius = CGFloat(integerLiteral: 16)
//    profileImageView.layer.masksToBounds = true
//    profileImageView.layer.borderWidth = 0.5
//    profileImageView.layer.borderColor = UIColor.lightGray.withAlphaComponent(0.6).cgColor
//    profileImageView.layer.shadowOffset = CGSize(width: 0, height: 0)
//    profileImageView.layer.shadowOpacity = Float(1)
//    profileImageView.layer.shadowRadius = CGFloat(integerLiteral: 6)
//
//    captionTextView.layer.shadowOffset = CGSize(width: 0, height: 0)
//    captionTextView.layer.shadowOpacity = 1
//    captionTextView.layer.shadowRadius = CGFloat(6)
//    }
    
   
    
}
