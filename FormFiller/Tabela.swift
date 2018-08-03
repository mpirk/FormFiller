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

    //................................................................................................... TABELA

    override func numberOfSections(in tableView: UITableView) -> Int {
        
        return 1
        
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return fillData?.count ?? 0
        
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        let cellType = getCellType(fillData: fillData!, index: indexPath.row)
        
        switch cellType {
        case "header":
            return 30
            
        case "field":
            return 48
            
        case "button":
            return 60
            
        default:
            return 30
        }
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if let cellData:[String:Any] = fillData?[indexPath.row] {
            
            if cellData["cellType"] as! String == "header" {
                
                let cell: CellHeader = tableView.dequeueReusableCell(withIdentifier: "headerCell") as! CellHeader
                
                //pego as informações de configuração
                
                cell.lbl_texto.text = "teste"
                return cell
                
            }
            
        } else {
            
        }
        
        let cell: CellHeader = tableView.dequeueReusableCell(withIdentifier: "headerCell") as! CellHeader
        cell.lbl_texto.text = "empty"
        return cell
    }

}
