//
//  MockUIRefreshControl.swift
//  UIRefreshControl_iOS_16_17Tests
//
//  Created by Ayokunle Pro on 9/16/24.
//

import UIKit

class MockUIRefreshControl: UIRefreshControl {
    private var _isRefreshing = false
    
    override var isRefreshing: Bool { _isRefreshing }
    
    override func beginRefreshing() {
        _isRefreshing = true
    }
    
    override func endRefreshing() {
        _isRefreshing = false
    }
}
