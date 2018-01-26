//
//  Skill.swift
//  Hacker 21K
//
//  Created by Roman Filippov on 11/01/2018.
//  Copyright © 2018 romanfilippov. All rights reserved.
//

import Foundation

enum SkillType: String {
  case graphics
  case coding
  case english
}

struct Skill {
  var skillType: SkillType
  var skillLevel: Int = 0
  var skillMaxLevel: Int = 4
}


