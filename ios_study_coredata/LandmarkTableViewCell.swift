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
    @IBOutlet weak var hiraganaLabel: UILabel!
    @IBOutlet weak var latitudeLabel: UILabel!
    @IBOutlet weak var longitudeLabel: UILabel!
    @IBOutlet weak var questionTextView: UITextView!
    @IBOutlet weak var answer1Label: UILabel!
    @IBOutlet weak var answer2Label: UILabel!
    @IBOutlet weak var answer3Label: UILabel!
    @IBOutlet weak var correctLabel: UILabel!
    @IBOutlet weak var foundLabel: UILabel!
    @IBOutlet weak var passedLabel: UILabel!
    @IBOutlet weak var urlLabel: UITextView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
