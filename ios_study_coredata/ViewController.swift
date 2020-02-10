//
//  ViewController.swift
//  ios_study_coredata
//
//  Created by Yasuhiro Usutani on 2020/02/10.
//  Copyright © 2020 toolstudio. All rights reserved.
//

import UIKit
import CoreData

extension Double {
    var locationText:String {
        String(format: "%f", self)
    }
}

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    var viewContext = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    var landmarks: [Landmark] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let fr = NSFetchRequest<NSFetchRequestResult>(entityName: "Landmark")
        do {
            landmarks = try viewContext.fetch(fr) as! [Landmark]
        } catch {
            print("Landmark is not fetched.")
        }
    }

    //MARK: - Table view data source

    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return landmarks.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        // Table view cells are reused and should be dequeued using a cell identifier.
        let cellIdentifier = "LandmarkTableViewCell"
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as? LandmarkTableViewCell  else {
            fatalError("The dequeued cell is not an instance of LandmarkTableViewCell.")
        }
        
        cell.nameLabel.text = landmarks[indexPath.row].name
        cell.latitudeLabel.text = landmarks[indexPath.row].latitude?.doubleValue.locationText
        cell.longitudeLabel.text = landmarks[indexPath.row].longitude?.doubleValue.locationText
        cell.questionLabel.text = landmarks[indexPath.row].question

        return cell
    }

}

