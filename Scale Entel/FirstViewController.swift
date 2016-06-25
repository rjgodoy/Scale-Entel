//
//  FirstViewController.swift
//  Scale Entel
//
//  Created by Rodrigo Godoy Méndez on 4/25/16.
//  Copyright © 2016 Yoyin. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet weak var regionXVButton: UIButton!
    @IBOutlet weak var regionIButton: UIButton!
    @IBOutlet weak var regionIIButton: UIButton!
    @IBOutlet weak var regionIIIButton: UIButton!
    @IBOutlet weak var regionIVButton: UIButton!
    @IBOutlet weak var regionVButton: UIButton!
    @IBOutlet weak var regionMButton: UIButton!
    @IBOutlet weak var regionVIButton: UIButton!
    @IBOutlet weak var regionVIIButton: UIButton!
    @IBOutlet weak var regionVIIIButton: UIButton!
    @IBOutlet weak var regionIXButton: UIButton!
    @IBOutlet weak var regionXIVButton: UIButton!
    @IBOutlet weak var regionXButton: UIButton!
    @IBOutlet weak var regionXIButton: UIButton!
    @IBOutlet weak var regionXIIButton: UIButton!
    
    //Colores
    let normalColor = UIColor(red: 28/255, green: 132/255, blue: 198/255, alpha: 1)
    let alertColor = UIColor(red: 1, green: 128/255, blue: 0, alpha: 1)
    let dangerColor = UIColor(red: 254/255, green: 43/255, blue: 2/255, alpha: 1)
    
    var values:[AnyObject] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        //Array 1: Regiones
        let regionButton = [regionXVButton, regionIButton, regionIIButton, regionIIIButton, regionIVButton, regionVButton, regionMButton, regionVIButton, regionVIIButton, regionVIIIButton, regionIXButton, regionXIVButton, regionXButton, regionXIButton, regionXIIButton]
        
        //Bordes de los botones
        /*for button in regionButton {
            button.layer.cornerRadius = 0.0
        }*/
        
        //Mostrar numero de sitios alarmados por región obtenidos de la base de datos Scale
        var j = 0
        for alarmas in regionButton {
            let index = GetDatos()
            alarmas.setTitle(index.getDatosNacional(j, dato: "alarmas"), forState: UIControlState.Normal)
            j += 1
        }
        
        //Array 2: Cantidad de sitios alarmados por región
        var cantidadSitiosAlarmadosPorRegion:[Int] = []
        for region in regionButton {
            cantidadSitiosAlarmadosPorRegion.append(Int(region.titleLabel!.text!)!)
        }
        
        //Cambia color del boton según número de sitios en Array 2
        var i = 0
        for sitiosAlarmados in cantidadSitiosAlarmadosPorRegion {
            if sitiosAlarmados == 0 {
                regionButton[i].backgroundColor = normalColor
                i=i+1
            } else if sitiosAlarmados >= 10 {
                UIButton.animateWithDuration(1.0, delay: 0.0, options: [.Repeat, .Autoreverse], animations: {
                    regionButton[i].backgroundColor = self.alertColor
                    regionButton[i].backgroundColor = self.dangerColor
                    }, completion: nil)
                i += 1
            } else {
                regionButton[i].backgroundColor = alertColor
                i += 1
            }
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func regionXVButtonPressed(sender: UIButton) {
        let comunas = GetDatos()
        let comuna = comunas.getDatosRegion(1, dato: "comuna")
        let alarma = comunas.getDatosRegion(1, dato: "alarmas")
        for item in 0...comuna.count-1 {
            print(comuna[item],": ",alarma[item])
        }
        
    }
    
    @IBAction func regionIButtonPressed(sender: UIButton) {
        let comunas = GetDatos()
        let comuna = comunas.getDatosRegion(2, dato: "comuna")
        let alarma = comunas.getDatosRegion(2, dato: "alarmas")
        for item in 0...comuna.count-1 {
            print(comuna[item],": ",alarma[item])
        }
    }
    
    @IBAction func regionIIButtonPressed(sender: UIButton) {
        let comunas = GetDatos()
        let comuna = comunas.getDatosRegion(3, dato: "comuna")
        let alarma = comunas.getDatosRegion(3, dato: "alarmas")
        for item in 0...comuna.count-1 {
            print(comuna[item],": ",alarma[item])
        }
    }
    
    @IBAction func regionIIIButtonPressed(sender: UIButton) {
        let comunas = GetDatos()
        let comuna = comunas.getDatosRegion(4, dato: "comuna")
        let alarma = comunas.getDatosRegion(4, dato: "alarmas")
        for item in 0...comuna.count-1 {
            print(comuna[item],": ",alarma[item])
        }
    }
    
    @IBAction func regionIVButtonPressed(sender: UIButton) {
        let comunas = GetDatos()
        let comuna = comunas.getDatosRegion(5, dato: "comuna")
        let alarma = comunas.getDatosRegion(5, dato: "alarmas")
        for item in 0...comuna.count-1 {
            print(comuna[item],": ",alarma[item])
        }
    }
    
    @IBAction func regionVButtonPressed(sender: UIButton) {
        let comunas = GetDatos()
        let comuna = comunas.getDatosRegion(6, dato: "comuna")
        let alarma = comunas.getDatosRegion(6, dato: "alarmas")
        for item in 0...comuna.count-1 {
            print(comuna[item],": ",alarma[item])
        }
    }

    @IBAction func regionMButtonPressed(sender: UIButton) {
        let comunas = GetDatos()
        let comuna = comunas.getDatosRegion(7, dato: "comuna")
        let alarma = comunas.getDatosRegion(7, dato: "alarmas")
        for item in 0...comuna.count-1 {
            print(comuna[item],": ",alarma[item])
        }
    }

    @IBAction func regionVIButtonPressed(sender: UIButton) {
        let comunas = GetDatos()
        let comuna = comunas.getDatosRegion(8, dato: "comuna")
        let alarma = comunas.getDatosRegion(8, dato: "alarmas")
        for item in 0...comuna.count-1 {
            print(comuna[item],": ",alarma[item])
        }
    }
    
    @IBAction func regionVIIButtonPressed(sender: UIButton) {
        let comunas = GetDatos()
        let comuna = comunas.getDatosRegion(9, dato: "comuna")
        let alarma = comunas.getDatosRegion(9, dato: "alarmas")
        for item in 0...comuna.count-1 {
            print(comuna[item],": ",alarma[item])
        }
    }
    
    @IBAction func regionVIIIButtonPressed(sender: UIButton) {
        let comunas = GetDatos()
        let comuna = comunas.getDatosRegion(10, dato: "comuna")
        let alarma = comunas.getDatosRegion(10, dato: "alarmas")
        for item in 0...comuna.count-1 {
            print(comuna[item],": ",alarma[item])
        }
    }
    
    @IBAction func regionIXButtonPressed(sender: UIButton) {
        let comunas = GetDatos()
        let comuna = comunas.getDatosRegion(11, dato: "comuna")
        let alarma = comunas.getDatosRegion(11, dato: "alarmas")
        for item in 0...comuna.count-1 {
            print(comuna[item],": ",alarma[item])
        }
    }
    
    @IBAction func regionXIVButtonPressed(sender: UIButton) {
        let comunas = GetDatos()
        let comuna = comunas.getDatosRegion(12, dato: "comuna")
        let alarma = comunas.getDatosRegion(12, dato: "alarmas")
        for item in 0...comuna.count-1 {
            print(comuna[item],": ",alarma[item])
        }
    }
    
    @IBAction func regionXButtonPressed(sender: UIButton) {
        let comunas = GetDatos()
        let comuna = comunas.getDatosRegion(13, dato: "comuna")
        let alarma = comunas.getDatosRegion(13, dato: "alarmas")
        for item in 0...comuna.count-1 {
            print(comuna[item],": ",alarma[item])
        }
    }
    
    @IBAction func regionXIButtonPressed(sender: UIButton) {
        let comunas = GetDatos()
        let comuna = comunas.getDatosRegion(14, dato: "comuna")
        let alarma = comunas.getDatosRegion(14, dato: "alarmas")
        for item in 0...comuna.count-1 {
            print(comuna[item],": ",alarma[item])
        }
    }
    
    @IBAction func regionXIIButtonPressed(sender: UIButton) {
        let comunas = GetDatos()
        let comuna = comunas.getDatosRegion(15, dato: "comuna")
        let alarma = comunas.getDatosRegion(15, dato: "alarmas")
        for item in 0...comuna.count-1 {
            print(comuna[item],": ",alarma[item])
        }
    }
    
}

