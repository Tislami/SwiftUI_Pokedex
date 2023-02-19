//
//  PokedexListView.swift
//  SwiftUI_Pokedex
//
//  Created by Tariyel Islami on 17.02.2023.
//

import SwiftUI

struct PokedexListView: View {
    
    @ObservedObject var viewModel = PokemonViewModel()
    
    var columns : [GridItem] = [
        GridItem(.flexible()),
        GridItem(.flexible()),
    ]
    
    var body: some View {
        NavigationStack{
            ScrollView{
                LazyVGrid(columns: columns,spacing: 16) {
                    ForEach(viewModel.pokemons, id: \.id){ pokemon in
                        NavigationLink(destination:            PokedexDetailView(pokemon: pokemon), label: {
                            PokedexItemView(pokemon: pokemon)
                        })
                        let _ = print(pokemon)
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
