//
//  MenuListViewModelTests.swift
//  AlbertosTests
//
//  Created by 조영민 on 4/16/25.
//

@testable import Albertos
import XCTest

final class MenuListViewModelTests: XCTestCase {
    
    // 메뉴 리스트 첫 Publisher는 빈 리스트를 발행
    func testWhenFetchingStartsPublishesEmptyMenu() {}

    // 메뉴 리스트 조회가 성공하면, 메뉴를 그룹화하는 클로저를 사용하여 섹션을 생성한다.
    func testWhenFecthingSucceedsPublishesSectionsBuiltFromReceivedMenuAndGivenGroupingClosure() {}
  
    // 메뉴 리스트 조회가 실패하면, 에러를 발행한다.
    func testWhenFetchingFailsPublishesAnError() {}
  }
