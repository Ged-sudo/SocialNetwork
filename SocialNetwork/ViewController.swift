//
//  ViewController.swift
//  SocialNetwork
//
//  Created by Евгений Андронов on 21.02.2022.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    

    @IBOutlet weak var postTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        postTableView.delegate = self
        postTableView.dataSource = self
    }

    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = postTableView.dequeueReusableCell(withIdentifier: "postcell",  for: indexPath) as! PostCell
        
        cell.textInPost.text = "Some text in post"
        
        cell.layer.borderWidth = 5
        cell.layer.borderColor = UIColor.systemBrown.cgColor
        return cell
    }

}

