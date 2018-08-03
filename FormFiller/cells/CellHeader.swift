//
//  CellHeader.swift
//  FormFiller
//
//  Created by Marcelo Pirk on 03/08/18.
//  Copyright © 2018 Marcelo Pirk. All rights reserved.
//

import UIKit

class CellHeader: UITableViewCell {

    @IBOutlet weak var lbl_texto: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
