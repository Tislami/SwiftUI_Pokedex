//
//  TopTabBar.swift
//  SwiftUI_Pokedex
//
//  Created by Tariyel Islami on 19.02.2023.
//

import SwiftUI

struct TabBarButton: View {
    let text: String
    @Binding var isSelected: Bool
    var body: some View {
        Text(text)
            .fontWeight(isSelected ? .heavy : .regular)
            .padding(.bottom,10)
    }
}


struct CustomTopTabBar: View {
    @State var tabIndex: Int = 0
    var body: some View {
        HStack(spacing: 20) {
            TabBarButton(text: "FirstView", isSelected: .constant(tabIndex == 0))
                .onTapGesture { onButtonTapped(index: 0) }
            TabBarButton(text: "SecondView", isSelected: .constant(tabIndex == 1))
                .onTapGesture { onButtonTapped(index: 1) }
            Spacer()
        }
    }
    
    private func onButtonTapped(index: Int) {
        withAnimation { tabIndex = index }
    }
}



struct CustomTopTabBar_Previews: PreviewProvider {
    static var previews: some View {
        CustomTopTabBar()
    }
}
