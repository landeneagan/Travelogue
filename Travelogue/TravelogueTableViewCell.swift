//
//  TravelogueTableViewCell.swift
//  Travelogue
//
//  Created by Landen Eagan on 7/27/18.
//  Copyright © 2018 Landen Eagan. All rights reserved.
//

import UIKit

class TravelogueTableViewCell: UITableViewCell {

    @IBOutlet weak var tripTitle: UILabel!
    @IBOutlet weak var tripDate: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
