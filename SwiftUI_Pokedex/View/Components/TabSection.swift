//
//  TabSection.swift
//  SwiftUI_Pokedex
//
//  Created by Tariyel Islami on 19.02.2023.
//

import SwiftUI

struct TabSection: View {
    
    @State var title : String
    @State var tabIndex : Int
    @Binding var selection : Int
    
    var body: some View {
        VStack{
            Button(action: {selection = tabIndex }, label:{
                Text(title).bold().foregroundColor(selection==tabIndex ? .black : .gray)}
            )
            Divider().frame(height: 2).background(selection==2 ? .blue : .gray)
        }
    }
}

