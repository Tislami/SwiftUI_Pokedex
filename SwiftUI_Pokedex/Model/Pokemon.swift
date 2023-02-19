//
//  Pokemon.swift
//  SwiftUI_Pokedex
//
//  Created by Tariyel Islami on 17.02.2023.
//

import Foundation
import SwiftUI


struct Pokemon : Decodable, Identifiable{
    let attack: Int
    let defense: Int
    let description: String
    let height: Int
    let id: Int
    let imageUrl: String
    let name: String
    let type: String
    let weight: Int

    var color: Color {
        get{
            switch type{
            case "fire": return .red
            case "poison" : return .green
            case "water" : return .teal
            case "electric" : return .yellow
            case "psychic": return .purple
            case "normal": return .orange
            case "ground" : return .gray
            case "flying" : return .blue
            case "fairy": return .pink
            default : return .indigo
            }
        }
    }
}



let defaultPokemon = Pokemon(attack: 49, defense: 49, description: "Bulbasaur can be seen napping in bright sunlight.\nThere is a seed on its back. By soaking up the sun’s rays,\nthe seed grows progressively larger.", height: 7, id: 1,
                             
                             imageUrl: "https://firebasestorage.googleapis.com/v0/b/pokedex-bb36f.appspot.com/o/pokemon_images%2F2CF15848-AAF9-49C0-90E4-28DC78F60A78?alt=media&token=15ecd49b-89ff-46d6-be0f-1812c948e334", name: "bulbasaur", type: "poison", weight: 69)

