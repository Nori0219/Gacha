//
//  ResultViewController.swift
//  Gacha
//
//  Created by 杉井位次 on 2023/05/08.
//

import UIKit

class ResultViewController: UIViewController {
    
    
    var number: Int!
    
    @IBOutlet var backgroundImageView: UIImageView!
    @IBOutlet var characterImageView: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
    
        // Do any additional setup after loading the view.
        number = Int.random(in: 0...9)
        if number == 9 {
            //激レア
            characterImageView.image = UIImage(named: "IoTMesh")
            backgroundImageView.image = UIImage(named: "bgBlue")
        } else if number >= 7 {
            
            //レア
            characterImageView.image = UIImage(named: "camera")
            backgroundImageView.image = UIImage(named: "bgGreen")
        } else {
            //ノーマル
            characterImageView.image = UIImage(named: "iphone")
            backgroundImageView.image = UIImage(named: "bgRed")
        }
    }
    
    @IBAction func back() {
        self.dismiss(animated: true, completion: nil)
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
