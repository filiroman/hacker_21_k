//
//  HKButton.swift
//  Hacker 21K
//
//  Created by Roman Filippov on 11/01/2018.
//  Copyright © 2018 romanfilippov. All rights reserved.
//

import UIKit

class HKButton: UIButton {
  
  func configureButton() {
    self.layer.cornerRadius = 5.0
    self.backgroundColor = .gray
    
  }
  
  override init(frame: CGRect) {
    super.init(frame: frame)
    configureButton()
  }
  
  required init?(coder aDecoder: NSCoder) {
    super.init(coder: aDecoder)
    configureButton()
  }
  
  override func awakeFromNib() {
    super.awakeFromNib()
    configureButton()
  }
  
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
