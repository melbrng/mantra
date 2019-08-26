//
//  MantraViewController.swift
//  Mantra
//
//  Created by Melissa Boring on 8/25/19.
//  Copyright © 2019 Melissa Boring. All rights reserved.
//

import UIKit
import AVFoundation

class MantraViewController: UIViewController {

    var audioPlayer: AVAudioPlayer!

    @IBOutlet weak var mantraImageView: UIImageView!
    @IBOutlet weak var mantraTextField: UITextField!

    @IBAction func playMantra(_ sender: Any) {
        playAudio()
    }
    
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
        
    }
    
    func playAudio(){
        if let soundURL = Bundle.main.url(forResource: "tapestry", withExtension: "mp3") {
            
            do {
                audioPlayer = try AVAudioPlayer(contentsOf: soundURL)
            }
            catch {
                print(error)
            }
            
            audioPlayer.play()
            
        }else{
            print("Unable to locate audio file")
        }
    }
}
