//
//  BaseStatBarView.swift
//  SwiftUI_Pokedex
//
//  Created by Tariyel Islami on 19.02.2023.
//

import SwiftUI

struct BaseStatBarField: View {
    
    var title: String
    var power: Int
    @State private var width : CGFloat? = nil
    
    var body: some View {
        HStack{
            Text(title)
                .bold()
                .foregroundColor(.gray.opacity(0.75))
                .frame(width: 100,alignment: .leading)
            
            Text("\(Int(power))").bold()
                .frame(width: 32)
            
            
                ZStack(alignment: .leading){
                    
                    RoundedRectangle(cornerRadius: 16)
                        .fill(power > 50 ? Color.green : Color.red)
                        .frame(width: width, height: 12, alignment: .leading)
                    
                    RoundedRectangle(cornerRadius: 16)
                        .fill(.gray.opacity(0.5))
                        .frame(height: 12)
                        .background(
                            GeometryReader { geometry in
                                Color.clear
                                    .onAppear {
                                        width = geometry.size.width * CGFloat(power) / (power > 100 ? 600 : 100)
                                        
                                    }
                            }
                        )
                    
                }
            }
        
    }
}

struct BaseStatBarField_Previews: PreviewProvider {
    static var previews: some View {
        BaseStatBarField(title: "Total",power: 321)
            .padding(.horizontal,16)
    }
}
