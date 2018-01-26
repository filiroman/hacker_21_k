//
//  ButtonTableViewCell.swift
//  Hacker 21K
//
//  Created by Roman Filippov on 11/01/2018.
//  Copyright © 2018 romanfilippov. All rights reserved.
//

import UIKit

class ButtonTableViewCell: UITableViewCell {
  @IBOutlet weak var button: HKButton!
  
  init(reuseIdentifier: String?) {
    super.init(style: .default, reuseIdentifier: reuseIdentifier)
    // code common to all your cells goes here
  }
  
  override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
    super.init(style: style, reuseIdentifier: reuseIdentifier)
    // code common to all your cells goes here
  }
  
  required init?(coder aDecoder: NSCoder) {
    super.init(coder: aDecoder)
  }

  override func awakeFromNib() {
      super.awakeFromNib()
      // Initialization code
  }

  override func setSelected(_ selected: Bool, animated: Bool) {
      super.setSelected(selected, animated: animated)

      // Configure the view for the selected state
  }
    
}
