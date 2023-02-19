//
//  AboutTextField.swift
//  SwiftUI_Pokedex
//
//  Created by Tariyel Islami on 19.02.2023.
//

import SwiftUI

struct AboutTextField: View {
    let title: String
    let power : String
    var body: some View {
        HStack(spacing: 32){
            Text(title)
                .bold()
                .foregroundColor(.gray.opacity(0.75))
                .frame(width: 100,alignment: .leading)
            
            Text(power).bold()
        }
    }
}
