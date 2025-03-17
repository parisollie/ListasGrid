//
//  ContentView.swift
//  ListasGrid
//
//  Created by Paul Jaime Felix Flores on 10/04/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        //V-0, Paso 1.0,creamos nuestra lista
        NavigationView{
            //Paso 1.5,mandamos a llamar a nuestra lista de Modelo ,List(lista).
            List(lista){item in
                //Paso 1.14
                NavigationLink(
                    //V-72,mandamos a llamar los parámetros.
                    destination: VistaDetalle(items: item)){
                        //Paso 1.9 , emoji lado izq y datos lado derecho
                        HStack{
                            //Paso 1.10 ,mandamos a llamar a nuestra estructura emoji.
                            emoji(emoji: item)
                            //Paso 1.11, mandamos a llamar el nombre del emoji.
                            Text(item.nombre)
                                .font(.subheadline)
                        }
                    }
                
            }.navigationTitle("Lista de emojis")
        }
    }
}


#Preview{
    ContentView()
}
