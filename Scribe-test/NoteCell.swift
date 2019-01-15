//
//  NoteCell.swift
//  Scribe-test
//
//  Created by Nick He on 15/01/19.
//  Copyright © 2019 Nick He. All rights reserved.
//

import UIKit

class NoteCell: UITableViewCell {

    @IBOutlet weak var noteImage: UIImageView!
    @IBOutlet weak var noteLabel: UILabel!
    
    func setImage(image: UIImage) {
        noteImage.image = image
    }
    
    func setText(text: String) {
        noteLabel.text = text
    }
}
