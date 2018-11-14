//
//  PhotoViewController.swift
//  Photomina
//
//  Created by Tan Vinh Phan on 11/12/18.
//  Copyright © 2018 PTV. All rights reserved.
//

import UIKit

class PhotoViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var photos: [Photo] = Photos.dowloadAllPhotos()
    
    struct StoryBoard {
       static let photoCell = "photoCell"
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self as? UITableViewDataSource
        tableView.rowHeight = 250
        
       
    }

}

extension PhotoViewController : UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1 //default is 1 if not implement
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return photos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: StoryBoard.photoCell) as? PhotoTableViewCell
        let photo = photos[indexPath.row]
        
        cell?.photo = photo
        return cell!
    }

}


//extension PhotoViewController: UITableViewDataSource {
//
//
//    func numberOfSections(in tableView: UITableView) -> Int {
//        return 1 //Default is 1 if not implement
//    }
//
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return photos.count
//    }
//
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell = tableView.dequeueReusableCell(withIdentifier: StoryBoard.photoCell) as? PhotoTableViewCell
//        let photo = photos[indexPath.row]
//
//        cell?.photo = photo
//        return cell!
//    }
//
//}
