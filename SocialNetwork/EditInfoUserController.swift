//
//  EditInfoUserController.swift
//  SocialNetwork
//
//  Created by Евгений Андронов on 22.02.2022.
//

import UIKit

class EditInfoUserController: UIViewController {

    @IBOutlet weak var userNameLabel: UILabel!
    @IBOutlet weak var userImage: UIImageView!
    @IBOutlet weak var newUserName: UITextField!
    @IBOutlet weak var userMale: UISegmentedControl!
    override func viewDidLoad() {
        let userSett = UserSettings()
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        userNameLabel.text = userSett.name
    }
    
    @IBAction func saveButoon(_ sender: Any) {
        
        let userSett = UserSettings()
        userSett.name = String(newUserName.text!)
        
        userNameLabel.text = userSett.name
        //userNameLabel.text = newUserName.text
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard segue.identifier == "settings" else {return}
        guard let destination = segue.destination as? ViewController else { return }
        
        //destination.newNameUser = String(newUserName.text ?? "BadName")
        
    }

}
