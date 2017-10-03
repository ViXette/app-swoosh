//
//  BorderButton.swift
//  app-swoosh
//
//  Created by VX on 06/08/2017.
//  Copyright © 2017 VXette. All rights reserved.
//

import UIKit

class BorderButton: UIButton {

	override func awakeFromNib() {
		super.awakeFromNib()
		
		layer.borderWidth = 2.0
		layer.borderColor = UIColor.white.cgColor
	}

}
