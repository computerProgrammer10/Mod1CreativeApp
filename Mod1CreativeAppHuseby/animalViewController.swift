//
//  animalViewController.swift
//  Mod1CreativeAppHuseby
//
//  Created by DANIEL HUSEBY on 8/29/24.
//

import UIKit

class animalViewController: UIViewController {

    @IBOutlet weak var nameOutlet: UILabel!
    @IBOutlet weak var descriptionOutlet: UILabel!
    @IBOutlet weak var imageViewOutlet: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        switch AppData.animal{
        case 1:
            nameOutlet.text = "Angry Puppy"
            descriptionOutlet.text = "You didn't follow the directions!"
            imageViewOutlet.image = UIImage(named: "angryDog")
            break
        case 2:
            nameOutlet.text = "Angry Monkey"
            descriptionOutlet.text = "You didn't use positive numbers!"
            imageViewOutlet.image = UIImage(named: "angryMonkey")
            break
        case 3:
            nameOutlet.text = "Puppy"
            descriptionOutlet.text = "Woof woof woof woof woof woof woof woof"
            imageViewOutlet.image = UIImage(named: "puppyDog")
            break
        case 4:
            nameOutlet.text = "Dart monkey"
            descriptionOutlet.text = "He pops stuff"
            imageViewOutlet.image = UIImage(named: "dartMonkey")
            break
        default:
            break
        }
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
