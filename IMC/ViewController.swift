//
//  ViewController.swift
//  IMC
//
//  Created by Pablo Rosalvo on 08/11/2018.
//  Copyright © 2018 Pablo Rosalvo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var pesoKg: UITextField!
    @IBOutlet weak var alturaM: UITextField!
    @IBOutlet weak var ivImageResult: UIImageView!
    @IBOutlet weak var resultadoLabel: UILabel!
    @IBOutlet weak var viResult: UIView!
    @IBOutlet weak var vResult: UIView!
    
    var imc: Double = 0;
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
    @IBAction func calcRestult(_ sender: Any) {
        if let peso = Double(pesoKg.text!) , let altura = Double(alturaM.text!){
            
            imc = peso / (altura * altura) //ou pow(altura, 2);
            
            showResults()
        }
    }
    
    func showResults () {
        
        var result:String = ""
        var image:String = ""
        
        switch imc {
            
        case 0..<16:
            result = "Magreza"
            image = "abaixo"
            
        case 16..<18.5:
            result = "Abaixo do Peso"
            image = "abaixo"
            
        case 18.5..<25:
            result = "Peso Ideal"
            image = "ideal"
            
        case 25..<30:
            result = "Sobre Peso"
            image = "sobre"
            
            
        default:
            result = " Obesidade "
            image = "obesidade"
        }
        
        resultadoLabel.text = result
        ivImageResult.image = UIImage(named: image)
        viResult.isHidden = false
        
    }
}

