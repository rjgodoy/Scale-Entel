//
//  GetDatos.swift
//  Scale Entel
//
//  Created by Rodrigo Godoy Méndez on 5/20/16.
//  Copyright © 2016 Yoyin. All rights reserved.
//

import Foundation

struct GetDatos {

    // Entrega el dato por region (dato: id_region, sitios, region, nombre, alarmas, cod_region)
    func getDatosNacional(region: Int, dato: String) -> String {
        let url = NSURL(string: "http://localhost/scaleapp/traer_alarmas_nacional.php")
        let data = NSData(contentsOfURL: url!)
        let alarmasRegion:[AnyObject] = try! NSJSONSerialization.JSONObjectWithData(data!, options: NSJSONReadingOptions.MutableContainers) as! Array
        let datos = alarmasRegion[region][dato]!!.description
        return datos
    }

    
    
    //Entrega un array el dato solicitado (dato: comuna, sitios, region, cod_region, alarmas)
    func getDatosRegion(region: Int, dato: String) -> [String] {
        let url = NSURL(string: "http://localhost/scaleapp/traer_datos_region.php?region=" + region.description)
        let data = NSData(contentsOfURL: url!)
        let datosRegion:[AnyObject] = try! NSJSONSerialization.JSONObjectWithData(data!, options: NSJSONReadingOptions.MutableContainers) as! Array
        var datos = [String]()
        for item in 0...datosRegion.count-1 {
            datos.append(datosRegion[item][dato]!!.description)
        }
        return datos
    }

    
    
    //Entrega un array el dato solicitado (dato: region, comuna, nombre, id, tipo_nodo, lat_google, cod_pop, lon_google, CELADAS_ALARMADAS)
    func getDatosComuna(region: Int, comuna: String, dato: String) -> [String] {
        let url = NSURL(string: "http://localhost/scaleapp/traer_datos_comunas.php?region=" + region.description)
        let data = NSData(contentsOfURL: url!)
        let datosComuna:[AnyObject] = try! NSJSONSerialization.JSONObjectWithData(data!, options: NSJSONReadingOptions.MutableContainers) as! Array
        var datos = [String]()
        for item in 0...datosComuna.count-1 {
            if datosComuna[item]["comuna"]!!.description.containsString(comuna) {
                datos.append(datosComuna[item][dato]!!.description)
            }
        }
        return datos
    }
    
    
    
    //Entrega el dato solicitado (dato: alarma, cod_sitio, fecha, tecnologia)
    func getDatosSitio(region: Int, comuna: String, cod_sitio: String, dato: String) -> String {
        let url = NSURL(string: "http://localhost/scaleapp/traer_datos_sitios.php?region=" + region.description + "&comuna=" + comuna + "&cod_sitio=" + cod_sitio)
        let data = NSData(contentsOfURL: url!)
        let datosSitio:[AnyObject] = try! NSJSONSerialization.JSONObjectWithData(data!, options: NSJSONReadingOptions.MutableContainers) as! Array
        return datosSitio[0][dato]!!.description
    }
    
}