//
//  VistaDetalle.swift
//  ListasGrid
//
//  Created by Paul F on 17/03/25.
//

import SwiftUI

//V-72,Paso 1.12,enviar parámetros.
struct VistaDetalle: View {
    
    //Paso 1.13,accedemos al modelo.
    let items : Modelo
    
    var body: some View{
        VStack(alignment: .leading, spacing: 3, content: {
            //Si quitamos este spacer , todo se pondría en medio ,porque esta empujando.
            Spacer()
            
            HStack{
                emoji(emoji: items)
                Text(items.nombre).font(.largeTitle)
                Spacer()
            }
            
            Text(items.descripcion).padding(.top)
           
            Spacer()
            
        })//Final VStack
        .padding(.all)
        .navigationBarTitle("Emojis")
    }
}


// Vista previa
#Preview {
    // Pasamos una instancia de Modelo para la vista previa.
    VistaDetalle(items: Modelo(
        emoji: "🥑",
        nombre: "Aguacate",
        descripcion: "El aguacate es un fruto exótico carnoso que se obtiene del árbol tropical del mismo nombre. En algunas partes de América del Sur se conoce como Palta."
    ))
}
