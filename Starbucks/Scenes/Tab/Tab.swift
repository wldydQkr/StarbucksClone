//
//  Tab.swift
//  Starbucks
//
//  Created by 박지용 on 2022/06/16.
//

import SwiftUI

enum Tab {
    case home
    case other
    
    // associate value : enum의 변수를 바로 리턴 시키는 것
    var tabTextItem: Text {
        switch self {
        case .home: return Text("Home")
        case .other: return Text("Other")
        }
    }
    
    var imageItem: Image {
        switch self {
        case .home: return Image(systemName: "house.fill")
        case .other: return Image(systemName: "ellipsis")
        }
    }
}
