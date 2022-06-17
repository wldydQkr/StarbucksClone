//
//  MainTabView.swift
//  Starbucks
//
//  Created by 박지용 on 2022/06/16.
//

import SwiftUI

struct MainTabView: View {
    var body: some View {
        TabView {
            Text("Home") // 각각 넣으면 유지보수의 어려움이 있기 때문에 별도의 enum으로 정의를 해둔다.
                .tabItem {
                    Tab.home.imageItem
                    Tab.home.tabTextItem
                }
            Text("Ohter")
                .tabItem {
                    Tab.other.imageItem
                    Tab.other.tabTextItem
                }
        }
    }
}

//struct MainTabView_Previews: PreviewProvider {
//    static var previews: some View {
//        MainTabView()
//    }
//}

// LazyHStack

struct SampleListView: View {
    
    struct Number: Identifiable {
        let value: Int
        var id: Int { value }
    }
    
    let numbers: [Number] = (0...100).map { Number(value: $0) }
    
    var body: some View {
        List {
            Section(header: Text("첫번째")) {
                ForEach(numbers) { number in
                    Text("\(number.value)")
                }
            }
            
            Section(header: Text("두번째"), footer: Text("Footer")) {
                ForEach(numbers) { number in
                    Text("\(number.value)")
                }
            }
        }
    }
}

struct SampleListView_Preview: PreviewProvider {
    static var previews: some View {
        SampleListView()
    }
}

