//
//  LandmarkTableViewCell.swift
//  ios_study_coredata
//
//  Created by Yasuhiro Usutani on 2020/02/10.
//  Copyright © 2020 toolstudio. All rights reserved.
//

import UIKit

class LandmarkTableViewCell: UITableViewCell {
    
    //MARK: Properties
    @IBOutlet weak var nameLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
