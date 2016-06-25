//
//  GetAlarmasRegiones.swift
//  Scale Entel
//
//  Created by Rodrigo Godoy Méndez on 5/19/16.
//  Copyright © 2016 Yoyin. All rights reserved.
//

import Foundation

struct GetAlarmasRegiones {
    
    var alarmasRegion:[AnyObject] = []
    var nombresRegion:[AnyObject] = []
    
    //Obtener datos de la base de datos Scale
    mutating func getAlarmasRegiones() -> [AnyObject] {
        let url = NSURL(string: "http://localhost/scaleapp/get_regiones.php")
        let data = NSData(contentsOfURL: url!)
        alarmasRegion = try! NSJSONSerialization.JSONObjectWithData(data!, options: NSJSONReadingOptions.MutableContainers) as! Array
        
        //Extraer las alarmas del array "values" y guardarlas en un array "alarmas"
        var codigo = [AnyObject](), id = [AnyObject](), alarmas = [AnyObject](), nombres = [AnyObject]()
        for item in alarmasRegion {
            codigo.append(item["cod_region"]!!)
            id.append(item["id_region"]!!)
            alarmas.append(item["alarmas"]!!)
            nombres.append(item["nombre"]!!)
        }
        return alarmas
    }
    
    //Obtener datos de la base de datos Scale
    mutating func getNombreRegion() -> [AnyObject] {
        let url = NSURL(string: "http://localhost/scaleapp/get_regiones.php")
        let data = NSData(contentsOfURL: url!)
        nombresRegion = try! NSJSONSerialization.JSONObjectWithData(data!, options: NSJSONReadingOptions.MutableContainers) as! Array
        
        //Extraer las alarmas del array "values" y guardarlas en un array "alarmas"
        var region:[AnyObject] = []
        for item in nombresRegion {
            region.append(item["nombre"]!!)
        }
        return region
    }
    
}
