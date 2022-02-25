//
//  UserData.swift
//  SocialNetwork
//
//  Created by Евгений Андронов on 24.02.2022.
//

import UIKit
import RealmSwift

class UserData: Object {
    @objc dynamic var id: Int = 0
    @objc dynamic var nameUser: String = ""
    @objc dynamic var maleUser: String = ""
    @objc dynamic var imageNameUser: String = ""
    
    
    override static func primaryKey() -> String? {
                return "id"
            }
}
