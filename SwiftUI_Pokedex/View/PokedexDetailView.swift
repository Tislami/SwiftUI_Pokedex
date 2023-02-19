//
//  PokedexDetailView.swift
//  SwiftUI_Pokedex
//
//  Created by Tariyel Islami on 18.02.2023.
//

import SwiftUI

struct PokedexDetailView: View {
    
    @State var pokemon : Pokemon = defaultPokemon
    @State var isClicked : Bool = false
    
    var body: some View {
        ZStack{
            VStack(spacing: 0){
                HeadView(pokemon: pokemon).zIndex(1)
                
                BodyView(pokemon: pokemon)
            }
        }.background(pokemon.color)
            .ignoresSafeArea(edges: .bottom)
            .navigationBarTitleDisplayMode(.inline)
            .toolbar{
                ToolbarItem(placement: .navigationBarTrailing){
                    Button(action: { isClicked.toggle() }){
                        Image(systemName: isClicked ? "heart.fill" : "heart").foregroundColor(.white)
                        
                    }
                }
            }
    }
}
    
    
struct PokedexDetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            PokedexDetailView()
        }
    }
}
    
struct HeadView: View {
    var pokemon: Pokemon
    var body: some View {
        VStack(alignment: .center,spacing: 32){
            HStack{
                VStack(alignment: .leading,spacing: 2){
                    
                    Text(pokemon.name.capitalized)
                        .foregroundColor(Color.white)
                        .font(.system(size: 40,weight: .bold))
                        .frame(maxWidth: .infinity,alignment: .leading)
                    
                    TextWithBackground(text: pokemon.type)
                }.padding(.leading,8)
                
                Spacer()
                
                Text("#0\(pokemon.id)")
                    .font(.system(size: 24,weight: .bold))
                    .foregroundColor(.white)
                    .padding(.trailing)
                
            }.padding(.horizontal,16)
            
            AsyncImage(url: URL(string: pokemon.imageUrl)){ image in
                image
                    .resizable()
                    .scaledToFit()
                    .offset(y:30)
            } placeholder: {
                ProgressView()
            }
            .frame(width: 200,height: 200)
        }
    }
}
    
struct AboutView: View {
    var pokemon : Pokemon
    var body: some View {
        VStack(alignment: .leading, spacing: 32){
            VStack(alignment: .leading,spacing: 16){
                AboutTextField(title: "Species", power: "Seed")
                AboutTextField(title: "Height", power: "\(pokemon.height)")
                AboutTextField(title: "Weight", power: "\(pokemon.weight)")
                AboutTextField(title: "Abilities", power: "\(pokemon.height)")
            }
            
            ScrollView{
                Text(pokemon.description)
                    .bold()
                    .multilineTextAlignment(.center)
                
            }
        }
    }
}

struct BaseStats: View {
    var pokemon : Pokemon
    var body: some View {
        VStack{
            BaseStatBarField(title: "Hp", power: pokemon.attack)
            BaseStatBarField(title: "Attack", power: pokemon.attack)
            BaseStatBarField(title: "Defense", power: pokemon.defense)
            BaseStatBarField(title: "Sp. Atk", power: pokemon.attack)
            BaseStatBarField(title: "Sp. Def", power: pokemon.defense)
            BaseStatBarField(title: "Speed", power: pokemon.attack)
            BaseStatBarField(title: "Total", power: pokemon.defense)
        }
    }
}

struct Evolution: View {
    var pokemon : Pokemon
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false){
            HStack{
                ForEach(1..<5){ _ in
                    EvolutionFiedl(pokemon: pokemon)
                }
            }
        }
    }
}

struct BodyView: View {
    var pokemon : Pokemon
    @State var selection : Int = 0
    var body: some View {
        VStack{
            
            HStack(spacing: 0){
                TabSection(title: "About", tabIndex: 0,selection: $selection)
                TabSection(title: "Base Stats", tabIndex: 1,selection: $selection)
                TabSection(title: "Evolution", tabIndex: 2,selection: $selection)
            }.padding(.top,32)

            TabView(selection: $selection) {
                AboutView(pokemon: pokemon).tag(0)
                BaseStats(pokemon: pokemon).tag(1)
                Evolution(pokemon: pokemon).tag(2)
            }.tabViewStyle(.page)
        }
        .padding(.horizontal,16)
        .background(Color.white)
        .frame(maxWidth: .infinity,maxHeight: .infinity)
        .cornerRadius(32, corners: [.topLeft, .topRight])
    }
}
