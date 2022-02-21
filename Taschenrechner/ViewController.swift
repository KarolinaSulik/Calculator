//
//  ViewController.swift
//  251121project
//
//  Created by Karolina Sulik on 25.11.21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameDerSeite: UILabel!
    @IBOutlet weak var ersteZahl: UITextField!
    @IBOutlet weak var zweiteZahl: UITextField!
    @IBOutlet weak var ergebnis: UILabel!
    @IBOutlet weak var buttonDivision: UIButton!
    @IBOutlet weak var buttonMultiplikation: UIButton!
    @IBOutlet weak var buttonSubstaktion: UIButton!
    @IBOutlet weak var buttonAddition: UIButton!
    @IBOutlet weak var zeigErgebnis: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        nameDerSeite.layer.cornerRadius = 30
        ersteZahl.layer.cornerRadius = 30
        zweiteZahl.layer.cornerRadius = 30
        ergebnis.layer.cornerRadius = 30
        buttonDivision.layer.cornerRadius = 60
        buttonMultiplikation.layer.cornerRadius = 60
        buttonSubstaktion.layer.cornerRadius = 60
        buttonAddition.layer.cornerRadius = 60
        
        let tapRecognizer = UITapGestureRecognizer()
        tapRecognizer.addTarget(self, action: #selector(onTap(_:)))
        view.addGestureRecognizer(tapRecognizer)
    }
    
    @IBAction func onTap(_ sender: UITapGestureRecognizer) {
        ersteZahl.resignFirstResponder()
        zweiteZahl.resignFirstResponder()
    }
    
    @IBAction func substrahiereButtonTapped(_ sender: UIButton) {
        if
        let tekst1 = ersteZahl.text,
        let tekst2 = zweiteZahl.text,
        let liczba1 = Double(tekst1), let liczba2 = Double(tekst2) {
            ergebnis.text = "\(rounding(liczba1 - liczba2))"
            return
        } else {
        ergebnis.text = "Du solltest eine Zahl schreiben!"
        }
    }
    
    @IBAction func addiereButtonTapped(_ sender: UIButton) {
        if
        let tekst1 = ersteZahl.text,
        let tekst2 = zweiteZahl.text,
        let liczba1 = Double(tekst1), let liczba2 = Double(tekst2) {
            ergebnis.text = "\(rounding(liczba1 + liczba2))"
            return
        } else {
        ergebnis.text = "Du solltest eine Zahl schreiben!"
        }
    }
        
    @IBAction func mutlipliziereButtonTapped(_ sender: UIButton) {
        if
        let tekst1 = ersteZahl.text,
        let tekst2 = zweiteZahl.text,
        let liczba1 = Double(tekst1), let liczba2 = Double(tekst2) {
            ergebnis.text = "\(rounding(liczba1 * liczba2))"
            return
        } else {
        ergebnis.text = "Du solltest eine Zahl schreiben!"
        }
    }
        
                
    @IBAction func dividiereButtonTapped(_ sender: UIButton) {
        if
        let tekst1 = ersteZahl.text,
        let tekst2 = zweiteZahl.text,
        let liczba1 = Double(tekst1), let liczba2 = Double(tekst2) {
            ergebnis.text = "\(rounding(liczba1 / liczba2))"
            return
        } else {
        ergebnis.text = "Du solltest eine Zahl schreiben!"
        }
    }
    
    func rounding(_ liczba: Double) -> Double {
        (liczba * 1000).rounded()/1000
    }
    
}

