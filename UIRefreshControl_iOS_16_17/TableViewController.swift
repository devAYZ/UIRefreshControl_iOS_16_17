//
//  TableViewController.swift
//  UIRefreshControl_iOS_16_17
//
//  Created by Ayokunle Pro on 9/13/24.
//

import UIKit

class TableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        view.backgroundColor = .systemGray5
        
        refreshControl = UIRefreshControl()
        
        refreshControl?.addTarget(self, action: #selector(refresh), for: .primaryActionTriggered)
        
        //refresh()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        //refresh()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        refresh()
    }

    @objc func refresh() {
        refreshControl?.beginRefreshing()
    }

}

