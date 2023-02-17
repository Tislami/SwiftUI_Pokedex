//
//  PokedexListView.swift
//  SwiftUI_Pokedex
//
//  Created by Tariyel Islami on 17.02.2023.
//

import SwiftUI

struct PokedexListView: View {
    
    var columns : [GridItem] = [
        GridItem(.flexible()),
        GridItem(.flexible()),
    ]
    
    var body: some View {
        NavigationView{
            ScrollView{
                LazyVGrid(columns: columns,spacing: 16) {
                    ForEach(pokemonList, id: \.id){ pokemon in
                        PokedexItemView(pokemon: pokemon)
                    }
                }
            }
            .navigationTitle("Pokedex")
        }
    }
}

struct PokedexView_Previews: PreviewProvider {
    static var previews: some View {
        PokedexListView()
    }
}