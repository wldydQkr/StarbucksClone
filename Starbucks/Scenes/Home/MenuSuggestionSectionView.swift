//
//  MenuSuggestionSectionView.swift
//  Starbucks
//
//  Created by 박지용 on 2022/06/17.
//

import SwiftUI

struct MenuSuggestionSectionView: View {
    var body: some View {
        VStack {
            Text("\(User.shared.username)님을 위한 추천 메뉴")
                .font(.headline)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.horizontal, 16.0)
            ScrollView(.horizontal, showsIndicators: false) {
                LazyHStack {
                    ForEach(CoffeeMenu.sample) { menu in
                        MenuSuggestionItemView(coffeeMenu: menu)
                    }
                }
                .padding(.horizontal, 16.0)
            }
        }
    }
}

struct MenuSuggestionItemView: View {
    let coffeeMenu: CoffeeMenu
    
    var body: some View {
        VStack {
            Image("coffee")
                .resizable()
                .clipShape(Circle()) // 프레임을 원 모양으로 만들어줌 굉장히 간단함.
                .frame(width: 100.0, height: 100.0)
            Text(coffeeMenu.name)
                .font(.caption)
        }
    }
}

struct MenuSuggestionSectionView_Previews: PreviewProvider {
    static var previews: some View {
        MenuSuggestionSectionView()
    }
}
