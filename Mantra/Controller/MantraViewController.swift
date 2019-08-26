//
//  MantraViewController.swift
//  Mantra
//
//  Created by Melissa Boring on 8/25/19.
//  Copyright © 2019 Melissa Boring. All rights reserved.
//

import UIKit

class MantraViewController: UIViewController {


    @IBOutlet weak var mantraImageView: UIImageView!
    @IBOutlet weak var mantraTextField: UITextField!
    @IBAction func dismissView(_ sender: Any) {
       dismiss(animated: true, completion: nil)
    }
    
    @IBAction func scheduleButton(_ sender: Any) {
        performSegue(withIdentifier: "ShowScheduler", sender: self)
    }
    
    var mantraText = "text"
    var mantraImage = UIImage()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mantraTextField.text = mantraText
        mantraImageView.image = mantraImage
        
        // Do any additional setup after loading the view.
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
