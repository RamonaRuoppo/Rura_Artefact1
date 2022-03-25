//
//  CollectionList.swift
//  FinalArtefact
//
//  Created by Ramona Ruoppo on 24/03/22.
//

import Foundation
import UIKit

class TableView: UITableViewController {
    
    @IBOutlet weak var navTitle: UINavigationItem!
        
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.rowHeight = UITableView.automaticDimension
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        tableView.reloadData()
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
           
        if section == 0 {
            return tasks1.count
        } else {
            return 0
        }
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // Dequeue cell
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TasksTableViewCell
        
        // Fetch model object to display
        let tasks1 = tasks1[indexPath.row]
        
        // Configure cell
        cell.update(with: tasks1)
        cell.showsReorderControl = true
        
        // Return cell
        return cell
    }
    
        
    @IBAction func actionMark(_ sender: UIButton) {
        
        sender.isSelected = !sender.isSelected
        
        sender.setImage(UIImage(systemName: "circle.fill"), for: .selected)
        sender.setImage(UIImage(systemName: "circle"), for: .normal)
        
    }
    
    
}



