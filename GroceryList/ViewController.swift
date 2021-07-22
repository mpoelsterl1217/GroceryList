//
//  ViewController.swift
//  GroceryList
//
//  Created by Matthew Poelsterl on 7/22/21.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    //Globals
    var groceryList = ["Apples", "Carrots", "Barbecue Sauce"]
    
    //Outlets
    @IBOutlet weak var groceryListTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        groceryListTableView.delegate = self
        groceryListTableView.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return groceryList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "protoCell")
        cell?.textLabel?.text = groceryList[indexPath.row]
        return cell!
    }
    
    //Actions

}

