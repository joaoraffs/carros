//
//  ViewController.swift
//  LiveTouchCars
//
//  Created by João Raffs on 08/07/20.
//  Copyright © 2020 Joao Raffs. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print("chega aqui no didload")
        
        print(Model.instance.allCars)
       
    }
}

