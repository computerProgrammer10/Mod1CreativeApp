//
//  ViewController.swift
//  Mod1CreativeAppHuseby
//
//  Created by DANIEL HUSEBY on 8/22/24.
//

import UIKit
class AppData{
    static var animal = 0
}
class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var paperOutlet: UITextField!
    
    @IBOutlet weak var peopleOutlet: UITextField!
    
    @IBOutlet weak var imageOutlet: UIImageView!
    
    @IBOutlet weak var labelOutlet: UILabel!
    
    @IBOutlet weak var orangeButtonOutlet: UIButton!
    
    @IBOutlet weak var greenButtonOutlet: UIButton!
    
    @IBOutlet weak var buttonOutlet: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        paperOutlet.delegate = self
        peopleOutlet.delegate = self
        // Do any additional setup after loading the view.
        orangeButtonOutlet.layer.cornerRadius = 5
        greenButtonOutlet.layer.cornerRadius = 5
    }
    func createAlert(alertTitle: String, alertDesc: String){
        let alert = UIAlertController(title: alertTitle, message: alertDesc, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: nil))
        self.present(alert, animated: true)
    }
    @IBAction func imageAction(_ sender: Any) {
        if (AppData.animal != 0){
            performSegue(withIdentifier: "toAnimalSegue", sender: nil)
        }
    }
    @IBAction func divideAction(_ sender: UIButton) {
        paperOutlet.resignFirstResponder()
        peopleOutlet.resignFirstResponder()
        if let blah = Int(paperOutlet.text!), let blah2 = Int(peopleOutlet.text!){
            if (blah > 0) && (blah2 > 0){
                AppData.animal = 4
                buttonOutlet.setBackgroundImage(UIImage(named: "dartMonkey"), for: .normal)
                var result = Int(blah/blah2)
                labelOutlet.text = "\(result) paper(s) per person"
            }else{
                AppData.animal = 2
                createAlert(alertTitle: "Are you stupid?", alertDesc: "You have to put a number above 0. In both boxes!")
                buttonOutlet.setBackgroundImage(UIImage(named: "angryMonkey"), for: .normal)
            }
        }else{
            AppData.animal = 1
            createAlert(alertTitle: "Are you stupid?", alertDesc: "Just put a number in there!")
            buttonOutlet.setBackgroundImage(UIImage(named: "angryDog"), for: .normal)
        }
    }
    
    @IBAction func multiplyAction(_ sender: UIButton) {
        paperOutlet.resignFirstResponder()
        peopleOutlet.resignFirstResponder()
        if let blah = Int(paperOutlet.text!), let blah2 = Int(peopleOutlet.text!){
            if (blah > 0) && (blah2 > 0){
                AppData.animal = 3
                buttonOutlet.setBackgroundImage(UIImage(named: "puppyDog"), for: .normal)
                var result = Int(blah*blah2)
                labelOutlet.text = "\(result) paper(s) in total"
            }else{
                AppData.animal = 2
                createAlert(alertTitle: "Are you stupid?", alertDesc: "You have to put a number above 0. In both boxes!")
                buttonOutlet.setBackgroundImage(UIImage(named: "angryMonkey"), for: .normal)
            }
        }else{
            AppData.animal = 1
            createAlert(alertTitle: "Are you stupid?", alertDesc: "Just put a number in there!")
            buttonOutlet.setBackgroundImage(UIImage(named: "angryDog"), for: .normal)
        }
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
    }
    

}

