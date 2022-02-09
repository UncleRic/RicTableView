//
//  MainViewController.swift
//  RicTableView
//
//  Created by Frederick Lee on 2/9/22.
//

import UIKit

class RicCell: UITableViewCell {}

class MainViewController: UIViewController, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    
    var data: [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(RicCell.self, forCellReuseIdentifier: "RicCell")
        data = ["Larry", "Moe", "Curly"]    // .sorted(), .reversed()
    }
    
    @IBAction func exitAction(_ sender: Any) {
        exit(0)
    }
    
    // ----------------------------------------------------------------------------------------------
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "RicCell", for: indexPath)
        cell.accessoryType = .detailDisclosureButton    // ... (.checkmark, .detailButton, .detailDisclosureButton)
        cell.textLabel!.text = data[indexPath.row]
        return cell
    }
    
}

