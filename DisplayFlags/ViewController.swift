//
//  ViewController.swift
//  DisplayFlags
//
//  Created by Lee Sangoroh on 25/04/2023.
//

import UIKit

class ViewController: UITableViewController {
    
    //var countryflags = [String]()
    var countryflags = ["estonia.jpg", "france.jpg", "germany.jpg", "ireland.jpg", "italy.jpg","monaco.jpg","nigeria.jpg","poland.jpg","russia.jpg","spain.jpg","uk.jpg","us.jpg"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //setting navbar title
        title = "Display flags"
        //set title to large
        navigationController?.navigationBar.prefersLargeTitles = true
        
//        let fm = FileManager.default
//        let path = Bundle.main.resourcePath!
//        let items = try! fm.contentsOfDirectory(atPath: path)
//
//        for item in items {
//            if item.hasSuffix("jpg") {
//                countryflags.append(item)
//            }
//        }
//
//        print(countryflags)
    }
    
    //number of rows on the table
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return countryflags.count
    }
    
    //what each row should look like
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //make cell reusable
        let cell = tableView.dequeueReusableCell(withIdentifier: "Flag", for: indexPath)
        cell.textLabel?.text = countryflags[indexPath.row]
        return cell
    }


}

