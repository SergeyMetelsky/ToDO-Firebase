//
//  TasksViewController.swift
//  ToDo_Firebase
//
//  Created by Sergey on 6/7/21.
//

import UIKit
import Firebase

class TasksViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        cell.backgroundColor = .clear
        cell.textLabel?.text = "This is cell number \(indexPath.row)"
        cell.textLabel?.textColor = .white
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    @IBAction func addButtonPressed(_ sender: UIBarButtonItem) {
    }
    @IBAction func signOutButtonPressed(_ sender: UIBarButtonItem) {
        do {
            try Auth.auth().signOut()
        } catch {
            print(error.localizedDescription)
        }
        dismiss(animated: true, completion: nil)
    }
}
