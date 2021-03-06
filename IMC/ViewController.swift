//
//  ViewController.swift
//  IMC
//
//  Created by Vinicio Brejinski on 02/05/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }



    @IBOutlet weak var tfWeight: UITextField!
    @IBOutlet weak var tfHeight: UITextField!
    @IBOutlet weak var ivResult: UIImageView!
    @IBOutlet weak var lbResult: UILabel!

    var imc: Double = 0
    
    @IBAction func calculate(_ sender: Any) {
        if let weight =  Double(tfWeight.text!), let height = Double(tfHeight.text!) {
            imc = weight / (height * height)
            showResults()
        }
    }
    
    func showResults() {
        var result: String = ""
        var image: String = ""
        
        switch imc {
            case 0..<16:
                result = "Magreaa"
                image = "magreza"
            case 16..<18.5:
                result = "Abaixo do peso"
                image = "abaixo"
            case 18.5..<25:
                result = "Peso ideal"
                image = "ideal"
            case 25..<30:
                result = "Sobre peso"
                image = "sobre"
            default:
                result = "Obesidade"
                image = "obesidade"
        }
        
        lbResult.text = result
        ivResult.image = UIImage(named: image)
    }
}


