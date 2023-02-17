//
//  Pokemon.swift
//  SwiftUI_Pokedex
//
//  Created by Tariyel Islami on 17.02.2023.
//

import Foundation


struct Pokemon : Decodable, Identifiable{
    let id: Int
    let name: String
    let imageUrl: String
    let type: String
}


let pokemonList : [Pokemon] = [
    Pokemon(id: 1, name:"Bulbasour", imageUrl: "Bulbasour", type: "poison"),
    Pokemon(id: 2, name:"Bulbasour", imageUrl: "Bulbasour", type: "poison"),
    Pokemon(id: 3, name:"Bulbasour", imageUrl: "Bulbasour", type: "poison"),
    Pokemon(id: 4, name:"Bulbasour", imageUrl: "Bulbasour", type: "poison"),
    Pokemon(id: 5, name:"Bulbasour", imageUrl: "Bulbasour", type: "poison"),
    Pokemon(id: 6, name:"Bulbasour", imageUrl: "Bulbasour", type: "poison"),
    Pokemon(id: 7, name:"Bulbasour", imageUrl: "Bulbasour", type: "poison"),
]
