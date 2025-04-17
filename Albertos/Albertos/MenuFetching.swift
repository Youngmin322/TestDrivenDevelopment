//
//  MenuFetching.swift
//  Albertos
//
//  Created by 조영민 on 4/16/25.
//
import Combine

protocol MenuFetching {
    func fetchMenu() -> AnyPublisher<[MenuItem], Error>
}
