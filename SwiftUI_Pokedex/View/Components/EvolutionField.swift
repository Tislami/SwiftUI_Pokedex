//
//  EvolutionField.swift
//  SwiftUI_Pokedex
//
//  Created by Tariyel Islami on 19.02.2023.
//

import SwiftUI

struct EvolutionFiedl: View {
    var pokemon: Pokemon
    
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 20)
                .fill(.gray.opacity(0.5))
            
            VStack{
                Text(pokemon.name.capitalized)
                    .foregroundColor(Color.white)
                    .font(.title2).bold()
                
                Image("Bulbasour")
                    .resizable()
            }
            .padding(8)
        }.frame(width: 250,height: 250)
    }
}
