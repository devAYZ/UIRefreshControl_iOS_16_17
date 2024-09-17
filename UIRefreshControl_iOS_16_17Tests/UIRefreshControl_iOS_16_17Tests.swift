//
//  UIRefreshControl_iOS_16_17Tests.swift
//  UIRefreshControl_iOS_16_17Tests
//
//  Created by Ayokunle Pro on 9/13/24.
//

import XCTest
@testable import UIRefreshControl_iOS_16_17

final class UIRefreshControl_iOS_16_17Tests: XCTestCase {
    
    var sut: TableViewController!
    
    override func setUp() {
        super.setUp()
        sut = .init()
    }
    
    override func tearDown() {
        sut = nil
        super.tearDown()
    }
    
    func test_refreshControl_isRefreshing_NotStarted() {
        sut.loadViewIfNeeded()
        
        XCTAssertEqual(sut.refreshControl?.isRefreshing, false)
    }

    func test_refreshControl_isRefreshing_Started() {
        
        sut.beginAppearanceTransition(true, animated: false) // Calls: viewWIllApear + viewIsAppearing
        sut.endAppearanceTransition()

        XCTAssertEqual(sut.refreshControl?.isRefreshing, true)
    }

}

extension TableViewController {
    func useMockUIRefreshControl() {
        let mockUIRefreshControl = MockUIRefreshControl()
        
        refreshControl?.allTargets.forEach { target in
            refreshControl?.actions(forTarget: target, forControlEvent: .primaryActionTriggered)?.forEach { action in
                mockUIRefreshControl.addTarget(target, action: Selector(action), for: .primaryActionTriggered)
            }
        }
        
        refreshControl = mockUIRefreshControl
    }
}
