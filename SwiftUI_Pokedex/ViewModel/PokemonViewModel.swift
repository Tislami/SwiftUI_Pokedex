//
//  PokemonViewModel.swift
//  SwiftUI_Pokedex
//
//  Created by Tariyel Islami on 17.02.2023.
//

import SwiftUI
import Foundation


class PokemonViewModel: ObservableObject{
    @Published var pokemons = [Pokemon]()
    let baseUrl = "https://pokedex-bb36f.firebaseio.com/pokemon.json"
    
    
    init(){
        fetchPokemon()
    }
    
    func fetchPokemon(){
        guard let url = URL(string: baseUrl) else { return }
        
        URLSession.shared.dataTask(with: url){ data, response, error in
            guard let data = data?.parseData(removeString: "null,") else { return }
            guard let pokemonData = try? JSONDecoder().decode([Pokemon].self, from: data) else { return }
            
            DispatchQueue.main.async {
                self.pokemons = pokemonData
            }
        }.resume()
    }
    
}


extension Data{
    func parseData(removeString string: String) -> Data?{
        let dataAsString = String(data: self, encoding: .utf8)
        let parseDataString = dataAsString?.replacingOccurrences(of: string, with: "")
        guard let data = parseDataString?.data(using: .utf8) else { return nil }
        return data
    }
}
