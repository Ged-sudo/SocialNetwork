//
//  PostCell.swift
//  SocialNetwork
//
//  Created by Евгений Андронов on 21.02.2022.
//

import UIKit

class PostCell: UITableViewCell {

    @IBOutlet weak var titleForNamePostrUserAndTimePost: UILabel!
    @IBOutlet weak var imageInPost: UIImageView!
    @IBOutlet weak var textInPost: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
