//
//  MantraTableViewController.swift
//  Mantra
//
//  Created by Melissa Boring on 8/20/19.
//  Copyright © 2019 Melissa Boring. All rights reserved.
//

import UIKit

class MantraTableViewController: UITableViewController {
    var images = ["image1","image2","image3","image4","image5","image6","image7","image8","image9","image10"]
    var mantras = ["Hung Vajra Peh","Sat Patim Dehi","jdksalfjldsk","jdksalfjldsk","jdksalfjldsk","jdksalfjldsk","jdksalfjldsk","jdksalfjldsk","jdksalfjldsk","jdksalfjldsk"]
    
    @IBOutlet var mantraTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mantraTableView.delegate = self
        mantraTableView.dataSource = self
        
        //register our custom table cell
        mantraTableView.register(CustomMantraCell.self, forCellReuseIdentifier: "customMantraCell")
 
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {

        return images.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) ->
     UITableViewCell {
        var cell = tableView.dequeueReusableCell(withIdentifier: "customMantraCell") as! CustomMantraCell
        cell.mantraImageView.image = UIImage(named: images[indexPath.row])
        cell.mantraLabel.text = mantras[indexPath.row]
        return cell
    }

    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        let currentImage = UIImage(named: images[indexPath.row])
        let imageRatio = currentImage?.getImageRatio()
        return tableView.frame.width / imageRatio!
    }

}

extension UIImage {
    func getImageRatio() -> CGFloat {
        let imageRatio = CGFloat(self.size.width / self.size.height)
        return imageRatio
    }
}


