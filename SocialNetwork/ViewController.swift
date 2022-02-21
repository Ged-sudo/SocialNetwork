//
//  ViewController.swift
//  SocialNetwork
//
//  Created by Евгений Андронов on 21.02.2022.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = postTableView.dequeueReusableCell(withIdentifier: "postcell",  for: indexPath) as! PostCell
        return cell
    }
    

    @IBOutlet weak var postTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
       
        postTableView.delegate = self
        postTableView.dataSource = self
    }


}

