//
//  emoji.swift
//  ListasGrid
//
//  Created by Paul F on 17/03/25.
//

import SwiftUI

//V-71,paso 1.6 -Estructura emoji
struct emoji: View {
    //Paso 1.7 ,LLenamos nuestra estructuctura del emoji. con nuestro modelo.
    let emoji : Modelo
    
    var body: some View{
        ZStack{
            //Paso 1.8,accedemos al emoji
            Text(emoji.emoji)
                .shadow(radius: 3)
                .font(.largeTitle)
                .frame(width: 65, height: 65)
                //overlay para cambiar el circulo, stroke es la linea del círculo.
                .overlay(
                    Circle().stroke(Color.purple, lineWidth: 3)
                )
        }
    }
}

// Vista previa
#Preview {
    // Pasamos una instancia de Modelo para la vista previa
    emoji(emoji: Modelo(
        emoji: "🙋🏼‍♂️",
        nombre: "Mano alzada",
        descripcion: "Persona que levanta la mano para preguntar."
    ))
}
