//
//  PCViewController.swift
//  Hacker 21K
//
//  Created by Roman Filippov on 11/01/2018.
//  Copyright © 2018 romanfilippov. All rights reserved.
//

import UIKit

class PCViewController: UITableViewController {
  
  typealias CellType = Utilites.CellType

  override func viewDidLoad() {
    super.viewDidLoad()

    tableView.register(UINib(nibName: "ButtonTableViewCell", bundle: nil), forCellReuseIdentifier: CellType.buttonCell.rawValue)
      // Uncomment the following line to preserve selection between presentations
      // self.clearsSelectionOnViewWillAppear = false

      // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
      // self.navigationItem.rightBarButtonItem = self.editButtonItem
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
      // Dispose of any resources that can be recreated.
  }

  func cellIDForRowAt( indexPath: IndexPath) -> CellType {
    switch indexPath.section {
    case 0:
      return CellType.textCell
    case 1:
      return CellType.buttonCell
    default:
      return CellType.defaultCell
    }
  }
  
  func configure(cell: UITableViewCell, forIndexPath indexPath: IndexPath) {
    
    var titleText: String
    
    switch indexPath.row {
    case 0:
      titleText = "CPU"
    case 1:
      titleText = "Video Card"
    }
    if (indexPath.section == 0) {
      
      let mc = ModelCoordinator.sharedInstance
      var valueText: String = "None"
      
      switch indexPath.row {
      case 0:
        if let cpu = mc.player?.pc?.cpu {
          valueText = cpu.description
        }
      case 1:
        if let video = mc.player?.pc?.video {
          valueText = video.description
        }
      case 2:
        titleText = "Sound Card"
        if let sound = mc.player?.pc?.sound {
          valueText = sound.description
        }
      case 3:
        titleText = "CD-ROM"
        if (mc.player?.pc?.hasCDROM) != nil {
          valueText = "Yes"
        }
      case 4:
        titleText = "Monitor"
        if let monitor = mc.player?.pc?.monitor {
          valueText = monitor.description
        }
      case 5:
        titleText = "Internet"
        if (mc.player?.pc?.hasInternet) != nil {
          valueText = "Yes"
        }
      default: titleText = ""
      }
      
      cell.backgroundColor = .clear
      cell.textLabel?.text = titleText
      cell.detailTextLabel?.text = valueText
    } else if (indexPath.section == 1) {
      
      var buttonTitle: String
      
      switch indexPath.row {
      case 0:
      case 1:
      case 2:
      case 3:
      case 4:
      case 5:
        
      }
    }
  }

  // MARK: - Table view data source

  override func numberOfSections(in tableView: UITableView) -> Int {
    return 2
  }

  override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return 6
  }


  override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    //get cell identifier
    let cellID = cellIDForRowAt(indexPath: indexPath)
    var cell = tableView.dequeueReusableCell(withIdentifier: cellID.rawValue)
    
    if cell == nil {
      cell = UITableViewCell(style: .value1, reuseIdentifier: cellID.rawValue)
    }
    
    if cell != nil {
      configure(cell: cell!, forIndexPath: indexPath)
    }
    
    return cell!
  }
  
  override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
    switch section {
    case 0:
      return "Your PC"
    case 1:
      return "Upgrades"
    default:
      return ""
    }
  }
  

  /*
  // Override to support conditional editing of the table view.
  override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
      // Return false if you do not want the specified item to be editable.
      return true
  }
  */

  /*
  // Override to support editing the table view.
  override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
      if editingStyle == .delete {
          // Delete the row from the data source
          tableView.deleteRows(at: [indexPath], with: .fade)
      } else if editingStyle == .insert {
          // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
      }
  }
  */

  /*
  // Override to support rearranging the table view.
  override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

  }
  */

  /*
  // Override to support conditional rearranging of the table view.
  override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
      // Return false if you do not want the item to be re-orderable.
      return true
  }
  */

  /*
  // MARK: - Navigation

  // In a storyboard-based application, you will often want to do a little preparation before navigation
  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
      // Get the new view controller using segue.destinationViewController.
      // Pass the selected object to the new view controller.
  }
  */

}
