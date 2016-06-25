//
//  GetAlarmasComunas.swift
//  Scale Entel
//
//  Created by Rodrigo Godoy Méndez on 5/19/16.
//  Copyright © 2016 Yoyin. All rights reserved.
//

import Foundation

struct GetAlarmasComunas {
    
    var valuesComuna:[AnyObject] = []
    
    //Obtener datos de la base de datos Scale para alarmas por Comuna
    mutating func getAlarmasComunas() -> [AnyObject] {
        let url = NSURL(string: "http://localhost/scaleapp/getComunas.php")
        let data = NSData(contentsOfURL: url!)
        valuesComuna = try! NSJSONSerialization.JSONObjectWithData(data!, options: NSJSONReadingOptions.MutableContainers) as! Array
        
        //Extraer las alarmas del array "values" y guardarlas en un array "alarmas"
        var comunas:[AnyObject] = []
        var i = 0
        for item in valuesComuna {
            comunas.append(item["comuna"]!!)
            i += 1
        }
        return comunas
    }
    
    
}