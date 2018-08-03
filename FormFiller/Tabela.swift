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
    var mainConfig:[String:Any]?
    var fillData:Array<[String:Any]>?

    //................................................................................................... LIFECYCLE
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let allData = makeDados(plistName: "formSample") {
            
            mainConfig = allData["mainAttr"] as? [String:Any]
            fillData = allData["cells"] as? Array<[String:Any]>
            
        }
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    //................................................................................................... TABELA

    override func numberOfSections(in tableView: UITableView) -> Int {
        
        return 1
        
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return fillData?.count ?? 0
        
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

        return cell
    }

}
