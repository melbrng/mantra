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
    let mantraDetailSegue = "ShowMantraDetail"
    
    @IBOutlet var mantraTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mantraTableView.delegate = self
        mantraTableView.dataSource = self
        
        //register our custom table cell
        mantraTableView.register(CustomMantraCell.self, forCellReuseIdentifier: "customMantraCell")
 
    }

    // Table view delegate methods

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
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {

        performSegue(withIdentifier: mantraDetailSegue, sender: self)
 
    }
    
    //Segue Navigation
    override func prepare(for segue: UIStoryboardSegue!, sender: Any?) {
        if segue.identifier == mantraDetailSegue {
            if let indexPath = tableView.indexPathForSelectedRow {
                let destination = segue.destination as! MantraViewController
                print(images[indexPath.row])
print(mantras[indexPath.row])
                destination.mantraImage = UIImage(named:images[indexPath.row])!
               destination.mantraText = mantras[indexPath.row]
            }

        }
    }
}


//if let indexPath = tableView.indexPathForSelectedRow {
//    let object = objects[indexPath.row] as! NSDate
//    let controller = (segue.destination as! UINavigationController).topViewController as! DetailViewController
//    controller.detailItem = object
//    controller.navigationItem.leftBarButtonItem = splitViewController?.displayModeButtonItem
//    controller.navigationItem.leftItemsSupplementBackButton = true
//}


//Get the image ratio
extension UIImage {
    func getImageRatio() -> CGFloat {
        let imageRatio = CGFloat(self.size.width / self.size.height)
        return imageRatio
    }
}


