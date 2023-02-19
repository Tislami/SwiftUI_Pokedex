//
//  PokedexItemView.swift
//  SwiftUI_Pokedex
//
//  Created by Tariyel Islami on 17.02.2023.
//

import SwiftUI

struct PokedexItemView: View {
    
    @State var pokemon : Pokemon
    
    var body: some View {
        ZStack {
            VStack(alignment: .leading) {
                Text(pokemon.name.capitalized)
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding(.top,4)
                    .padding(.leading)
                
                HStack{
                    
                    Text(pokemon.type)
                        .font(.subheadline).bold()
                        .foregroundColor(.white)
                        .padding(.horizontal,16)
                        .padding(.vertical,8)
                        .overlay(content: {
                            RoundedRectangle(cornerRadius: 20)
                                .fill(Color.white.opacity(0.25))
                        })
                        .frame(width: 100,height: 24)
                    
                    AsyncImage(url: URL(string: pokemon.imageUrl)){ image in
                        image.resizable()
                            .scaledToFit()
                            .padding([.bottom,.trailing],4)
                    } placeholder: {
                        ProgressView()
                    }.frame(width: 70,height: 70)
                }
            }
        }
        .background(pokemon.color)
        .cornerRadius(12)
        .shadow(color: pokemon.color,radius: 6,x: 0,y: 0)
    }
}
