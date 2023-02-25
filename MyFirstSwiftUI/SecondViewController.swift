//
//  SecondViewController.swift
//  MyFirstSwiftUI
//
//  Created by Ahmet GÜVENDİK on 25.02.2023.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var MyLabel: UILabel!
    var text = ""
    override func viewDidLoad() {
        super.viewDidLoad()

        resultLabel.text = text
        // Do any additional setup after loading the view.
    }
    

   

}
