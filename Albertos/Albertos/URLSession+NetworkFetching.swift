//
//  URLSession+NetworkFetching.swift
//  AlbertosTests
//
//  Created by 조영민 on 4/17/25.
//

import Foundation
import Combine

extension URLSession: NetworkFetching {
    func load(_ request: URLRequest) -> AnyPublisher<Data, URLError> {
        return dataTaskPublisher(for: request)
            .map { $0.data }
            .eraseToAnyPublisher()
    }
}
