//
//  PostitNote.swift
//  Scribe-test
//
//  Created by Nick He on 15/01/19.
//  Copyright © 2019 Nick He. All rights reserved.
//

import Foundation
import UIKit

class PostitNote {
    
    var image: UIImage?
    var text: String?
    
    init(image: UIImage, text: String) {
        self.image = image
        self.text = text
    }
}
