//
//  GridList.swift
//  ListasGrid
//
//  Created by Paul Jaime Felix Flores on 10/04/23.
//
import SwiftUI
import Foundation

//Paso 2.0
struct GridList: View {
    /*

     Paso 2.5
     let gridItem = [
        GridItem(.adaptive(minimum:100))
     ]
     V-74
     let gridItem = [
        //asi tenemos 50% y 50%
        GridItem(.flexible()),
        GridItem(.flexible()),
     ]
     
     */
    
    /*
     Paso 2.6
     Es lo mismo que la parte de arriba
     count es el numero de columnas
     Array inicializamos la clase del grid intem.
     .flexible , hace  los emojis vertical.
     */
    let gridItem : [GridItem] = Array(repeating: .init(.flexible(maximum: 80)), count: 3)
  
    var body: some View {
        //V-73,Paso 2.2,paa poder poner un title.
        NavigationView{
            //Paso 2.1
            ScrollView(){
                //Paso 2.3 ,Vertical V, hace un grid con columnas.
                LazyVGrid(columns: gridItem,spacing: 30) {
                    //Paso 2.4,traemos nuestros emojis
                    ForEach(lista){ item in
                        Text(item.emoji).font(.system(size: 80))
                    }
                }
            }.navigationBarTitle("Grids")
        }
    }
}


#Preview
{
    GridList()
}
