//
//  ViewController.swift
//  SortApp
//
//  Created by Hakim Laoukili on 2020-10-20.
//  Copyright © 2020 Hakim Laoukili. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet var tabel: UITableView!
    
    //Text Array in Cell iteams
    var models = [
    "Hakim",
    "Johan",
    "Emil",
    "Dan",
    "Jacob",
    "Erik",
    "Francissco"]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tabel.delegate = self
        tabel.dataSource = self
        
        
    }
    //  Adding Nr of Rows
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return models.count
    }
//Cell for Row
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tabel.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = models[indexPath.row]
        cell.textLabel?.font = UIFont(name: "Bold", size: 22)
        cell.textLabel?.textColor = .link
        return cell
    }
    
    //Comando TabelViewCan Move
    func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    //Moves the Rows
    func tableView(_ tableView: UITableView, moveRowAt sourceIndexPath: IndexPath, to destinationIndexPath: IndexPath) {
        models.swapAt(sourceIndexPath.row, destinationIndexPath.row)
    }
    @IBAction func didTapSort() {
        if tabel.isEditing {
            tabel.isEditing = false
             }
            else {
                tabel.isEditing = true
            }
            
        
        
    }
}

