//
//  ViewController.swift
//  MyFirstSwiftUI
//
//  Created by Ahmet GÜVENDİK on 19.02.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var FirstNumber: UITextField!
    @IBOutlet weak var SecondNumber: UITextField!
    @IBOutlet weak var textField: UITextField!
    var labelText = ""
    @IBAction func button(_ sender: Any) {
        labelText = textField.text!
        performSegue(withIdentifier: "toSecondPage", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toSecondPage"{
            var destinationVC = segue.destination as! SecondViewController
            destinationVC.text = labelText
        }
    }
    var result = 0
    
    @IBOutlet weak var Result: UILabel!
    @IBAction func Toplama(_ sender: Any) {
        if let ilkSayi = Int(FirstNumber.text!){
            if let ikinciSayi = Int(SecondNumber.text!){
                result = ilkSayi + ikinciSayi
                Result.text = String(result)
            }
        }
        else{
            Result.text = "Yanlış Veri Girişi"
        }
    }
    
    @IBAction func Cikarma(_ sender: Any) {
        if let ilkSayi = Int(FirstNumber.text!){
            if let ikinciSayi = Int(SecondNumber.text!){
                result = ilkSayi - ikinciSayi
                Result.text = String(result)
            }
        }
        else{
            Result.text = "Yanlış Veri Girişi"
        }
        
    }
    @IBAction func Carpma(_ sender: Any) {
        if let ilkSayi = Int(FirstNumber.text!){
            if let ikinciSayi = Int(SecondNumber.text!){
                result = ilkSayi * ikinciSayi
                Result.text = String(result)
            }
        }
        else{
            Result.text = "Yanlış Veri Girişi"
        }
    }
    @IBAction func Bolme(_ sender: Any) {
        if let ilkSayi = Int(FirstNumber.text!){
            if let ikinciSayi = Int(SecondNumber.text!){
                result = Int(ilkSayi / ikinciSayi)
                Result.text = String(result)
            }
        }
        else{
            Result.text = "Yanlış Veri Girişi"
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let width = view.frame.size.width
        let height = view.frame.size.height
        let myLabel = UILabel()
        myLabel.text = "Hesap Makinesi"
        myLabel.textAlignment = .center
        myLabel.frame = CGRect(x: width * 0.5 - width * 0.8 / 2  , y: height * 0.9, width: width * 0.8, height: 100)
        view.addSubview(myLabel)
        
        let myButton = UIButton()
        myButton.setTitle("Deneme Butonu", for: UIControl.State.normal)
        myButton.setTitleColor(UIColor.red, for: UIControl.State.normal)
        myButton.frame = CGRect(x: width * 0.5 - width * 0.8/2 , y: height * 0.85, width: width * 0.8, height: 100)
        myButton.addTarget(self, action: #selector(ViewController.clickButton), for: UIControl.Event.touchUpInside)
        view.addSubview(myButton)
            
        
        
    }
    
    @objc func clickButton(){
        print("Tıklandı")
    }


}

