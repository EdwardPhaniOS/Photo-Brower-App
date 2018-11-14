//
//  Photos.swift
//  Photomina
//
//  Created by Tan Vinh Phan on 11/12/18.
//  Copyright © 2018 PTV. All rights reserved.
//

import UIKit

struct Photo {
    var imageName: UIImage
    var caption: String
    var profileImage: UIImage
}

class Photos {
    
   // static var photos: [Photo] = []
   static func dowloadAllPhotos() -> [Photo] {
        var photos: [Photo] = []
        for i in 1...10 {
            let photo = Photo(imageName: UIImage(named: "\(i)")!, caption: "Caption \(i)", profileImage: UIImage(named: "p\(i)")!)
            photos.append(photo)
        }
        return photos
    }
    
}

