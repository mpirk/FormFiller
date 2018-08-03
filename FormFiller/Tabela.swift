//
//  Tabela.swift
//  FormFiller
//
//  Created by Marcelo Pirk on 03/08/18.
//  Copyright © 2018 Marcelo Pirk. All rights reserved.
//

import UIKit

class Tabela: UITableViewController {
    
    //................................................................................................... VARS
    var fillData = [String:Any]()

    //................................................................................................... LIFECYCLE
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    //................................................................................................... TABELA

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 0
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 0
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

        return cell
    }

}
