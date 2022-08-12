//
//  ViewController.swift
//  SignleMusicBackground
//
//  Created by Metin Donmez on 12.08.2022.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    
    //new object
    var sesOynat: AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        do {
            let dosyaYolu = Bundle.main.path(forResource: "music", ofType: ".mp3")
            // ses oyantıcısına bu dosyayı aktaracaz
            sesOynat = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: dosyaYolu!))
            //sesi oynat
            sesOynat.prepareToPlay()
            
            
        }catch {
            print(error.localizedDescription)
        }
        
        
    }


    @IBAction func start(_ sender: Any) {
        sesOynat.play()
    }
    
    
    @IBAction func stop(_ sender: Any) {
        sesOynat.stop()
    }
}

