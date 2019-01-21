//
//  PeopleCell.swift
//  agingPeople
//
//  Created by Gurpal Bhoot on 10/31/18.
//  Copyright © 2018 Gurpal Bhoot. All rights reserved.
//

import UIKit

class PeopleCell: UITableViewCell {

    // Outlets
    @IBOutlet weak var indexLbl: UILabel!
    @IBOutlet weak var nameLbl: UILabel!
    @IBOutlet weak var ageLbl: UILabel!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func configureCell(name: String, age: Int, index: Int) {
        indexLbl.text = "\(index)"
        nameLbl.text = name
        ageLbl.text = "\(age) years old"
    }
}
