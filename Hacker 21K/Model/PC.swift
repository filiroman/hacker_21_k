//
//  PC.swift
//  Hacker 21K
//
//  Created by Roman Filippov on 11/01/2018.
//  Copyright © 2018 romanfilippov. All rights reserved.
//

import Foundation

enum CPUType: Int, CustomStringConvertible {
  case pentium4 = 0
  case xeon = 1
  case core2duo = 2
  case corei7 = 3
  
  var description: String {
    switch self {
    case .pentium4:
      return "Pentium 4"
    case .xeon:
      return "Xeon E5"
    case .core2duo:
      return "Core 2 Duo"
    case .corei7:
      return "Core i7"
    }
  }
}

//TODO: Fill in real names
enum VideoCardType: Int, CustomStringConvertible {
  case video0 = 0
  case video1 = 1
  case video2 = 2
  case video3 = 3
  
  var description: String {
    return "VIDEO CARD"
  }
}

//TODO: Fill in real names
enum SoundCardType: Int, CustomStringConvertible {
  case sound0 = 0
  case sound1 = 1
  case sound2 = 2
  case sound3 = 3
  
  var description: String {
    return "SOUND CARD"
  }
}

//TODO: Fill in real names
enum MonitorType: Int, CustomStringConvertible {
  case monitor0 = 0
  case monitor1 = 1
  
  var description: String {
    return "MONITOR"
  }
}

struct PC {
  var cpu: CPUType
  var video: VideoCardType
  var sound: SoundCardType
  var hasCDROM: Bool
  var monitor: MonitorType
  var hasInternet: Bool
  
}

