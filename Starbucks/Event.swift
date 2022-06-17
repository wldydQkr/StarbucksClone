//
//  Event.swift
//  Starbucks
//
//  Created by 박지용 on 2022/06/17.
//

import SwiftUI

struct Event: Identifiable {
    let id = UUID()
    
    let image: Image
    let title: String
    let description: String
    
    static let sample: [Event] = [
        Event(image: Image("event"), title: "미션 e-스티커 추가 증정 이벤트", description: "스타벅스 리프레셔와 함께 22 서머e-프리퀀시를 즐겨보세요."),
        Event(image: Image("event"), title: "22 서머 e-프리퀀시 이벤트 안내", description: "즐거운 여행 속 '나에게 기대감과 즐거움을 주는 스타벅스의 여름 이야기")
    ]
}
