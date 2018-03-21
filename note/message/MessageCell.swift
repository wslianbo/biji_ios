//
//  MessageCell.swift
//  note
//
//  Created by 连波 on 2018/3/18.
//  Copyright © 2018年 连波. All rights reserved.
//

import UIKit

class MessageCell: UITableViewCell {

    @IBOutlet weak var img_fromUser: UIImageView!
    @IBOutlet weak var lb_title: UILabel!
    @IBOutlet weak var lb_datetime: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
