//
//  PushButton.swift
//  Flo
//
//  Created by Memo Figueredo on 12/26/18.
//  Copyright © 2018 Memo Figueredo. All rights reserved.
//

import UIKit

@IBDesignable
class PushButton: UIButton {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    
    private struct constantes {
        static let lineaAncho: CGFloat = 3.0
        static let escalaBotton: CGFloat = 0.6
        static let mitadBotton: CGFloat = 0.5
    }
    
    private var mitadAncho: CGFloat {
        return bounds.width/2
    }
    
    private var mitadAltura: CGFloat {
        return bounds.height/2
    }
    
    @IBInspectable var color: UIColor = UIColor.blue
    @IBInspectable var añadaColor: Bool = true
    
    
    override func  draw ( _ rect: CGRect) {
        let path = UIBezierPath (ovalIn: rect)
        color.setFill ()
        path.fill ()
        
        
        //Configura las variables de ancho y alto
        
        //para el trazado horizontal
        let trazadoAncho: CGFloat = min(bounds.width, bounds.height) * constantes.escalaBotton
        let trazadoAnchoGrande = trazadoAncho/2
        
        
        //crea la ruta
        let trazadoGrande = UIBezierPath()
        
        //establece el ancho de línea de la ruta al alto del trazo
        trazadoGrande.lineWidth = constantes.lineaAncho
        
        //mover el punto inicial a la ruta
        //al inicio del trazado horizontal
        
        trazadoGrande.move(to: CGPoint(
            x: mitadAncho - trazadoAnchoGrande + constantes.mitadBotton,
            y: mitadAltura + constantes.mitadBotton
        ))
        
        // agregar un punto a la ruta al final del trazo
        trazadoGrande.addLine(to: CGPoint(
            
            x: mitadAncho + trazadoAnchoGrande + constantes.mitadBotton,
            y: mitadAncho + constantes.mitadBotton
        ))
        
        
        
        //linea vertical
        if añadaColor {
            
        trazadoGrande.move(to: CGPoint(
            x: mitadAncho + constantes.mitadBotton,
            y: mitadAltura - trazadoAnchoGrande + constantes.mitadBotton
        ))
        
        trazadoGrande.addLine(to: CGPoint(
            x: mitadAncho + constantes.mitadBotton,
            y: mitadAncho + trazadoAnchoGrande + constantes.mitadBotton
        ))
        
        }
        
    
        //Establecer el color del trazado
        
        UIColor.white.setStroke()
        
        //Dibujar el trazo
        trazadoGrande.stroke()
        
        
    }


}
