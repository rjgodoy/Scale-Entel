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
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        //Array 1: Regiones
        let regionButton = [regionXVButton, regionIButton, regionIIButton, regionIIIButton, regionIVButton, regionVButton, regionMButton, regionVIButton, regionVIIButton, regionVIIIButton, regionIXButton, regionXIVButton, regionXButton, regionXIButton, regionXIIButton]
        
        
        //Bordes de los botones
        for button in regionButton {
            button.layer.cornerRadius = 5.0
        }
        
        
        //Obtener numero de sitios alarmadoss de la base de datos Scale
        /*for dbAlarmas in regionButton {
         dbAlarmas.setTitle("", forState: UIControlState.Normal)
         }*/
        
        
        //Array 2: Cantidad de sitios alarmados por región
        var qSitiosAlarmadosPorRegion = [Int]()
        for region in regionButton {
            qSitiosAlarmadosPorRegion.append(Int(region.titleLabel!.text!)!)
        }
        
        
        //Cambia color del boton según número de sitios en Array 2
        var i = 0
        for sitiosAlarmados in qSitiosAlarmadosPorRegion {
            if sitiosAlarmados == 0 {
                regionButton[i].backgroundColor = normalColor
                i=i+1
            } else if sitiosAlarmados >= 10 {
                regionButton[i].backgroundColor = dangerColor
                i=i+1
            } else {
                regionButton[i].backgroundColor = alertColor
                i=i+1
            }
        }

        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func regionXVButtonPressed(sender: UIButton) {
    }
    
    @IBAction func regionIButtonPressed(sender: UIButton) {
    }
    
    @IBAction func regionIIButtonPressed(sender: UIButton) {
    }
    
    @IBAction func regionIIIButtonPressed(sender: UIButton) {
    }
    
    @IBAction func regionIVButtonPressed(sender: UIButton) {
    }
    
    @IBAction func regionVButtonPressed(sender: UIButton) {
    }

    @IBAction func regionMButtonPressed(sender: UIButton) {
    }

    @IBAction func regionVIButtonPressed(sender: UIButton) {
    }
    
    @IBAction func regionVIIButtonPressed(sender: UIButton) {
    }
    
    @IBAction func regionVIIIButtonPressed(sender: UIButton) {
    }
    
    @IBAction func regionIXButtonPressed(sender: UIButton) {
    }
    
    @IBAction func regionXIVButtonPressed(sender: UIButton) {
    }
    
    @IBAction func regionXButtonPressed(sender: UIButton) {
    }
    
    @IBAction func regionXIButtonPressed(sender: UIButton) {
    }
    
    @IBAction func regionXIIButtonPressed(sender: UIButton) {
    }
    
    
    
}

