//
//  DataBaseWork.swift
//  SocialNetwork
//
//  Created by Евгений Андронов on 24.02.2022.
//

import Foundation
import RealmSwift

func addmember(){
    let realm = try! Realm()
 
    var List : Results<UserData>{
        get {
            let realm = try! Realm()
            return realm.objects(UserData.self)
            }
        }
    
    func newIdForUser() -> Int{
        let t = List.max(ofProperty: "id") as Int?
        if let _t = t{
            return _t+1
        }else{
            return 0
            }
        }
    
    
    
    
}
