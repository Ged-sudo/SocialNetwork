//
//  EditInfoUserController.swift
//  SocialNetwork
//
//  Created by Евгений Андронов on 22.02.2022.
//

import UIKit
import RealmSwift

class EditInfoUserController: UIViewController {
    var userMaleSt: String = ""
    let realm = try! Realm()

    @IBOutlet weak var userNameLabel: UILabel!
    @IBOutlet weak var userImage: UIImageView!
    @IBOutlet weak var newUserName: UITextField!
   // @IBOutlet weak var userMaleInp: UISegmentedControl!
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
    }
    @IBAction func maleUser(_ sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex{
        case 0:
            userMaleSt = "Mane"
        case 1:
            userMaleSt = "Wooman"
        default:
            break
        }
    }
    
    
    @IBAction func saveButoon(_ sender: Any) {
        let userName = newUserName.text
        let userMale = userMaleSt
        let imageNameUser = "1.jpg"
        
        
        if (realm.isEmpty){
                let User = UserData(value: [
                    "id":1,
                    "nameUser":userName,
                    "maleUser":userMale,
                    "imageNameUser":imageNameUser]
                )
                try! realm.write{
                    realm.add(User, update: .all)
                }
                
            }
        if (!realm.isEmpty){
            let User = UserData(value: [
                "id":1,
                "nameUser":userName,
                "maleUser":userMale,
                "imageNameUser":imageNameUser]
            )
            try! realm.write{
                //realm.add(User, update: true)
                
            }
        }
        }

    
  
}
