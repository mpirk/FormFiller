//
//  TabelaBrain.swift
//  FormFiller
//
//  Created by Marcelo Pirk on 03/08/18.
//  Copyright © 2018 Marcelo Pirk. All rights reserved.
//

import Foundation

extension Tabela {
    
    func makeDados(plistName: String) -> [String:Any]? {
        
        var retorno: [String:Any]?
        
        //carrego o arquivo do bundle
        if let path = Bundle.main.path(forResource: plistName, ofType: "plist"),
            let myDict = NSDictionary(contentsOfFile: path) as? [String: Any] {
            retorno = myDict
        }
        
        return retorno
        
    }
    
}
