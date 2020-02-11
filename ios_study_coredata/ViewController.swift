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

extension Int16 {
    var correctText:String {
        String(format: "%d", self)
    }
}

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    var viewContext = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    var landmarks: [Landmark] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let fr = NSFetchRequest<NSFetchRequestResult>(entityName: "Landmark")
        fr.sortDescriptors = [NSSortDescriptor(key: #keyPath(Landmark.hiragana), ascending: true)]
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
        
        let landmark = landmarks[indexPath.row]
        cell.nameLabel.text = landmark.name
        cell.hiraganaLabel.text = landmark.hiragana
        cell.latitudeLabel.text = landmark.latitude?.doubleValue.locationText
        cell.longitudeLabel.text = landmark.longitude?.doubleValue.locationText
        cell.questionTextView.text = landmark.question
        cell.answer1Label.text = landmark.answer1
        cell.answer2Label.text = landmark.answer2
        cell.answer3Label.text = landmark.answer3
        cell.correctLabel.text = landmark.correct?.int16Value.correctText
        cell.foundLabel.text = landmark.found?.boolValue.description
        cell.passedLabel.text = landmark.passed?.boolValue.description
        cell.urlLabel.text = landmark.url

        return cell
    }

}

