//
//  PacienteClinicDataViewController.swift
//  Hepatitis2020
//
//  Created by aaron on 26/11/2020.
//  Copyright © 2020 ual. All rights reserved.
//

import UIKit


class AddPruebaViewController: UIViewController {

    var paciente: Paciente!
    @IBOutlet weak var fatiga: UITextField!
    @IBOutlet weak var esple: UITextField!
    @IBOutlet weak var ascitis: UITextField!
    @IBOutlet weak var bulimia: UITextField!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        limpiar(self)
    }
    
    @IBAction func limpiar(_ sender: Any) {
        self.fatiga.text = ""
        self.esple.text = ""
        self.ascitis.text = ""
        self.bulimia.text = ""
    }
  
    @IBAction func enviar(_ sender: Any) {
        
        if((fatiga.text?.isEmpty)! || (esple.text?.isEmpty)! || (ascitis.text?.isEmpty)! || (bulimia.text?.isEmpty)!){
            
        }else{
            DataBaseService().Add_Prueba(paciente: paciente, prueba: Prueba(fatiga: Int(self.fatiga.text!)!, esplenomegalia: Int(self.esple.text!)!, ascitis: Int(self.ascitis.text!)!, nivelBulimia: Int(self.bulimia.text!)!, numeroPrueba: paciente.pruebas.count, resultado: calcularResultado()))
        }
        
        
        //TODO popUp. Calcular
    }
    
    func calcularResultado() -> Double{
        return 0
    }
    
    @IBAction func cancel(_ sender: Any) {

        dismiss(animated: true, completion: nil)
    }
}
