//
//  ViewController.swift
//  agingPeople
//
//  Created by Gurpal Bhoot on 10/31/18.
//  Copyright © 2018 Gurpal Bhoot. All rights reserved.
//

import UIKit

class MainVC: UIViewController {
    
    // Outlets
    @IBOutlet weak var peopleTableView: UITableView!

    // Variables
    var peopleNames = ["Rio Ferdy", "Ryan Giggsy", "David Becks", "Gary Nevz", "Phil Nevz", "Roy Keano", "Stevie Brucey", "Cristi Ronny", "Dwight Yorkie", "Toni Valencia", "Ole Solskjaer", "Eric Cantona"]
    var peopleAges = [Int]()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        configureTable()
        addPeopleAges()
    }
    
    // Functions
    func configureTable() {
        peopleTableView.delegate = self
        peopleTableView.dataSource = self
        peopleTableView.reloadData()
    }
    
    func addPeopleAges() {
        for _ in 1...12 {
            peopleAges.append(Int.random(in: 5...95))
        }
    }
}

extension MainVC: UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return peopleNames.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: ID_REUSE_PEOPLE_CELL) as? PeopleCell else { return UITableViewCell() }
        
        let index = indexPath.row
        cell.configureCell(name: peopleNames[index], age: peopleAges[index], index: index+1)
        return cell
    }
}

