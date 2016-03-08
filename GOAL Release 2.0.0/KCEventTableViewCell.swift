//
//  KCEventTableViewCell.swift
//  GOAL Release 2.0.0
//
//  Created by Binh Vinh Mai on 3/8/16.
//  Copyright © 2016 Binh Vinh Mai. All rights reserved.
//

import UIKit

class KCEventTableViewCell: UITableViewCell {

    @IBOutlet weak var eventNameLabel: UILabel!
    @IBOutlet weak var eventLocationLabel: UILabel!
    @IBOutlet weak var eventDateLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
