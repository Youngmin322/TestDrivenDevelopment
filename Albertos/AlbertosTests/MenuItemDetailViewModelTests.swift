//
//  MenuItemDetailViewModelTests.swift
//  AlbertosTests
//
//  Created by 조영민 on 4/17/25.
//

@testable import Albertos
import XCTest

// 메뉴 상세 페이지의 뷰모델 상태 값을 테스트
final class MenuItemDetailViewModelTests: XCTestCase {
    
    // 메뉴가 추가되었을 때, 주문 버튼은 주문 삭제를 표시해야 함
    func testWhenItemIsInOrderButtonSaysRemove() {
        // Arrange
        let item = MenuItem.fixture()
        let orderController = OrderController()
        let viewModel = MenuItemDetail.ViewModel(item: item, orderController: orderController)
        
        // Act
        orderController.addToOrder(item)
        
        // Assert
        XCTAssertEqual(viewModel.orderButtonText, "주문 삭제")
    }
    
    // 메뉴가 장바구니에 담겨있지 않으면, 주문 버튼은 "주문 추가"를 표시해야 함
    func testWhenItemIsNotInOrderButtonSaysAdd() {
        // Arrange
        let item = MenuItem.fixture()
        let orderController = OrderController()
        let viewModel = MenuItemDetail.ViewModel(item: item, orderController: orderController)
        
        // Assert
        XCTAssertEqual(viewModel.orderButtonText, "주문 추가")
    }
    
    // 메뉴가 장바구니에 담겨있으면, 주문 버튼을 누르면 장바구니에서 삭제됨
    func testWhenItemIsInOrderButtonActionRemovesIt() {
        // Arrange
        let item = MenuItem.fixture()
        let orderController = OrderController()
        let viewModel = MenuItemDetail.ViewModel(item: item, orderController: orderController)
        
        // Act
        orderController.addToOrder(item)
        viewModel.addOrRemoveFromOrder()
        
        // Assert
        XCTAssertFalse(orderController.order.items.contains{ $0 == item })
    }
    
    // 메뉴가 장바구니에 담겨있지 않을 때, 주문 버튼을 누르면 장바구니에 추가됨
    func testWhenItemIsNotInOrderButtonActionAddsIt() {
        // Arrange
        let item = MenuItem.fixture()
        let orderController = OrderController()
        let viewModel = MenuItemDetail.ViewModel(item: item, orderController: orderController)
        
        // Act
        viewModel.addOrRemoveFromOrder()
        
        // Assert
        XCTAssertTrue(orderController.order.items.contains { $0 == item})
    }
}
