//
//  GetAlarmas.swift
//  Scale Entel
//
//  Created by Rodrigo Godoy Méndez on 5/19/16.
//  Copyright © 2016 Yoyin. All rights reserved.
//

import Foundation

struct Getaatos {
    
    var valuesRegion:[AnyObject] = []
    var valuesComuna:[AnyObject] = []
    
    //Obtener datos de la base de datos Scale para alarmas por Región
    mutating func getAlarmasRegiones() -> Array<AnyObject> {
        let url = NSURL(string: "http://localhost/scaleapp/getRegiones.php")
        let data = NSData(contentsOfURL: url!)
        valuesRegion = try! NSJSONSerialization.JSONObjectWithData(data!, options: NSJSONReadingOptions.MutableContainers) as! Array
        
        //Extraer las alarmas del array "values" y guardarlas en un array "alarmas"
        var alarmas:[AnyObject] = []
        var i = 0
        for item in valuesRegion {
            alarmas.append(item["alarmas"]!!)
            i += 1
        }
        return alarmas
    }
    
    //Obtener datos de la base de datos Scale para alarmas por Comuna
    mutating func getAlarmasComunas() -> Array<AnyObject> {
        let url = NSURL(string: "http://localhost/scaleapp/getComunas.php")
        let data = NSData(contentsOfURL: url!)
        valuesComuna = try! NSJSONSerialization.JSONObjectWithData(data!, options: NSJSONReadingOptions.MutableContainers) as! Array
        
        //Extraer las alarmas del array "values" y guardarlas en un array "alarmas"
        var alarmas:[AnyObject] = []
        var i = 0
        for item in valuesComuna {
            alarmas.append(item["alarmas"]!!)
            i += 1
        }
        return alarmas
    }

    
    

}