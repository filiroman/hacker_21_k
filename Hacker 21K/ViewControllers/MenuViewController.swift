//
//  MenuViewController.swift
//  Hacker 21K
//
//  Created by Roman Filippov on 15/01/2018.
//  Copyright © 2018 romanfilippov. All rights reserved.
//

import UIKit

class MenuViewController: RootViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

  
    //  MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
      
      // lazy init
      ModelCoordinator.sharedInstance
    }

}
