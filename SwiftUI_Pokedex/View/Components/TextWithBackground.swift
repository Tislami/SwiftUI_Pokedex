//
//  TextWithBackground.swift
//  SwiftUI_Pokedex
//
//  Created by Tariyel Islami on 18.02.2023.
//

import SwiftUI

struct TextWithBackground: View {
    var text: String
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 20)
                .fill(Color.white.opacity(0.25))
                .frame(height: 40)
            
            Text(text)
                .font(.system(size: 24,weight: .bold))
                .foregroundColor(.white)
                .padding(.horizontal,16)
            
                
        }.fixedSize()
    }
}


struct TextWithBackground_Previews: PreviewProvider {
    static var previews: some View {
        TextWithBackground(text: "flying")
            .frame(maxWidth: .infinity,maxHeight: .infinity)
            .background(.black)
        
    }
}
