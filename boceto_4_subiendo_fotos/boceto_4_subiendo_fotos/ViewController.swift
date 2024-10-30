//
//  ViewController.swift
//  boceto_4_subiendo_fotos
//
//  Created by alumno on 10/30/24.
//

import UIKit

class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    //PR protocolo - C Clase

    @IBOutlet var fotografia: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func subir_foto_mostrar(_ sender: Any) {
        let seleccionar_imagen = UIImagePickerController()
        seleccionar_imagen.delegate = self
        
        seleccionar_imagen.sourceType = UIImagePickerController.SourceType.photoLibrary
        
        seleccionar_imagen.allowsEditing = false
        
        self.present(seleccionar_imagen, animated: true)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        if let imagen_seleccionada = info[UIImagePickerController.InfoKey.originalImage] as? UIImage{
            fotografia.image = imagen_seleccionada
        }
        else{
            //en caso de que no se selecciono
        }
        self.dismiss(animated: true)
    }
    
}

