//
//  ModelCoordinator.swift
//  Hacker 21K
//
//  Created by Roman Filippov on 15/01/2018.
//  Copyright © 2018 romanfilippov. All rights reserved.
//

import UIKit

class ModelCoordinator: NSObject {
  
  var player: Player? = nil
  
  static let sharedInstance: ModelCoordinator = {
    let instance = ModelCoordinator()
    // setup code
    
    return instance
  }()
  
  init (player: Player) {
    super.init()
    self.player = player
  }
  
  override init() {
    super.init()
    player = Player()
  }
}
