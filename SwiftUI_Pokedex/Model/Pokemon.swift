//
//  Pokemon.swift
//  SwiftUI_Pokedex
//
//  Created by Tariyel Islami on 17.02.2023.
//

import Foundation
import SwiftUI


struct Pokemon : Decodable, Identifiable{
    let id: Int
    let name: String
    let imageUrl: String
    let type: String
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
