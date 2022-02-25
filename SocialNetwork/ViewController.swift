//
//  ViewController.swift
//  SocialNetwork
//
//  Created by Евгений Андронов on 21.02.2022.
//

import UIKit
import RealmSwift


class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var array: Array<String> = ["First post in table", "Second post in table", "Therd post in table", "Forth post in table"]
    
    @IBOutlet weak var userName: UILabel!
    

    @IBOutlet weak var postTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        postTableView.delegate = self
        postTableView.dataSource = self
    }

    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return array.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = postTableView.dequeueReusableCell(withIdentifier: "postcell",  for: indexPath) as! PostCell
        
        cell.textInPost.text = array[indexPath.row]
        
        cell.layer.borderWidth = 5
        cell.layer.borderColor = UIColor.systemBrown.cgColor
        return cell
    }

}

