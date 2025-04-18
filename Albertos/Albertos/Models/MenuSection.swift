//
//  MenuSection.swift
//  Albertos
//
//  Created by 조영민 on 4/18/25.
//

struct MenuSection: Identifiable, Equatable {
    let category: String
    let items: [MenuItem]
    
    var id: String {
        category
    }
}
