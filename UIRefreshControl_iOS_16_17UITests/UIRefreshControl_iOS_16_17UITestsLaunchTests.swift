//
//  UIRefreshControl_iOS_16_17UITestsLaunchTests.swift
//  UIRefreshControl_iOS_16_17UITests
//
//  Created by Ayokunle Pro on 9/13/24.
//

import XCTest

final class UIRefreshControl_iOS_16_17UITestsLaunchTests: XCTestCase {

    override class var runsForEachTargetApplicationUIConfiguration: Bool {
        true
    }

    override func setUpWithError() throws {
        continueAfterFailure = false
    }

    func testLaunch() throws {
        let app = XCUIApplication()
        app.launch()

        // Insert steps here to perform after app launch but before taking a screenshot,
        // such as logging into a test account or navigating somewhere in the app

        let attachment = XCTAttachment(screenshot: app.screenshot())
        attachment.name = "Launch Screen"
        attachment.lifetime = .keepAlways
        add(attachment)
    }
}
