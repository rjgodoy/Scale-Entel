//
//  GetAlarmasRegiones.swift
//  Scale Entel
//
//  Created by Rodrigo Godoy Méndez on 5/19/16.
//  Copyright © 2016 Yoyin. All rights reserved.
//

import Foundation

struct GetAlarmasRegiones {
    
    var valuesAlarmasRegion:[AnyObject] = []
    var valuesNombresRegion:[AnyObject] = []
    
    //Obtener datos de la base de datos Scale
    mutating func getAlarmasRegiones() -> [AnyObject] {
        let url = NSURL(string: "http://localhost/scaleapp/get_regiones.php")
        let data = NSData(contentsOfURL: url!)
        valuesAlarmasRegion = try! NSJSONSerialization.JSONObjectWithData(data!, options: NSJSONReadingOptions.MutableContainers) as! Array
        
        //Extraer las alarmas del array "values" y guardarlas en un array "alarmas"
        var alarmas:[AnyObject] = []
        for item in valuesAlarmasRegion {
            alarmas.append(item["alarmas"]!!)
        }
        return alarmas
    }
    
    //Obtener datos de la base de datos Scale
    mutating func getNombreRegion() -> [AnyObject] {
        let url = NSURL(string: "http://localhost/scaleapp/get_regiones.php")
        let data = NSData(contentsOfURL: url!)
        valuesNombresRegion = try! NSJSONSerialization.JSONObjectWithData(data!, options: NSJSONReadingOptions.MutableContainers) as! Array
        
        //Extraer las alarmas del array "values" y guardarlas en un array "alarmas"
        var region:[AnyObject] = []
        for item in valuesNombresRegion {
            region.append(item["nombre"]!!)
        }
        return region
    }
    
}
