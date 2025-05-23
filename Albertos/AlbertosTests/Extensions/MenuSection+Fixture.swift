//
//  MenuSection+Fixture.swift
//  AlbertosTests
//
//  Created by 조영민 on 4/15/25.
//

@testable import Albertos

extension MenuSection {
    static func fixture(
        category: String = "category",
        items: [MenuItem] = [
            .fixture(category: "category"),
            .fixture(category: "category"),
            .fixture(category: "category"),
        ]
    ) -> MenuSection {
        MenuSection(
            category: category,
            items: items
        )
    }
}
