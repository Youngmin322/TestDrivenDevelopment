//
//  NetworkFetchingStub.swift
//  AlbertosTests
//
//  Created by 조영민 on 4/17/25.
//
@testable import Albertos
import Foundation
import Combine

class NetworkFetchingStub: NetworkFetching {
    private let result: Result<Data, URLError>
    
    init(returning result: Result<Data, URLError>) {
        self.result = result
    }
    
    func load(_ request: URLRequest) -> AnyPublisher<Data, URLError> {     return result.publisher     // 실제 비동기 동작을 시뮬레이션하기 위해 지연을 사용
            .delay(for: 0.01, scheduler: RunLoop.main)
            .eraseToAnyPublisher()
    }
}
