//
//  ViewController.swift
//  Todoey
//
//  Created by mc on 2/5/18.
//  Copyright © 2018 MUWONGE SYRUS. All rights reserved.
//

import UIKit

class TodoeyViewController: UITableViewController {
        let itemListArray = ["call Martin","go to the shop","buy cookies"]

    override func viewDidLoad() {
        super.viewDidLoad()
    }
//MARK-Todoey list datasource methods
    //override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
      //  return itemListArray.count
        
    //}
    //override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       // let cell = tableView.dequeueReusableCell(withIdentifier: "TodoeyItemCell", for:indexPath)
       // cell.textLabel?.text = itemListArray[indexPath.row]
       // return cell
    //}
//BONUS-another way to do the same thing above
 //   let cell = UITableViewCell(style:.default,reuseIdentifier:"TodoeyItemCell")
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemListArray.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TodoeyItemCell", for: indexPath)
        cell.textLabel?.text = itemListArray[indexPath.row]
        return cell
    }
    //MARK- add Delegate methods
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //print(indexPath.row)
        tableView.deselectRow(at: indexPath, animated: true)
     
        //print(itemListArray[indexPath.row])
        //tableView.cellForRow(at: indexPath)?.accessoryType = .checkmark
        if tableView.cellForRow(at: indexPath)?.accessoryType == .checkmark{
         tableView.cellForRow(at: indexPath)?.accessoryType = .none
        }
        else{
            tableView.cellForRow(at: indexPath)?.accessoryType = .checkmark
        }
    }
}

