//
//  Player.swift
//  Hacker 21K
//
//  Created by Roman Filippov on 11/01/2018.
//  Copyright © 2018 romanfilippov. All rights reserved.
//

import UIKit

class Player: NSObject {

  var name: String? = "Roman"
  var hunger: Int = 10
  var sleep: Int = 10
  var money: Int = 200
  
  var skills: [Skill] = []
  var work: Work?
  var pc: PC?
  
  override init() {
    super.init()
    
    
  }
  
}
