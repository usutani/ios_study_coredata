//
//  ViewController.swift
//  ios_study_coredata
//
//  Created by Yasuhiro Usutani on 2020/02/10.
//  Copyright © 2020 toolstudio. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    // MARK: - Table view data source
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10 //TODO
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        // Table view cells are reused and should be dequeued using a cell identifier.
        let cellIdentifier = "LandmarkTableViewCell"
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as? LandmarkTableViewCell  else {
            fatalError("The dequeued cell is not an instance of LandmarkTableViewCell.")
        }
        
        cell.nameLabel.text = "FOO"
        
        return cell

    }

}

