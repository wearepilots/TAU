//
//  TAUUITests.swift
//  TAUUITests
//
//  Created by a.shchepakin on 22.01.2021.
//  Copyright © 2021 Shashikant Jagtap. All rights reserved.
//

import XCTest

class TAUUITests: XCTestCase {

    

    func testAllElementsMainScreen() {
        XCUIApplication().activate()
        let app = XCUIApplication()
        app/*@START_MENU_TOKEN@*/.staticTexts["welcomeMessage"]/*[[".staticTexts[\"Welcome to XCUITest Course \"]",".staticTexts[\"welcomeMessage\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        app/*@START_MENU_TOKEN@*/.staticTexts["enterCity"]/*[[".staticTexts[\"Enter Your City \"]",".staticTexts[\"enterCity\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        app/*@START_MENU_TOKEN@*/.buttons["enrollButton"]/*[[".buttons[\"Enroll\"]",".buttons[\"enrollButton\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        app.staticTexts["Please Enter City"].tap()
        XCTAssertTrue(app.staticTexts["Please Enter City"].exists)
    }
        
        func testThankYouMessage() {
            XCUIApplication().activate()
            let app = XCUIApplication()
            app/*@START_MENU_TOKEN@*/.staticTexts["welcomeMessage"]/*[[".staticTexts[\"Welcome to XCUITest Course \"]",".staticTexts[\"welcomeMessage\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
            XCUIApplication().textFields["city"].tap()
            XCUIApplication().textFields["city"].typeText("London")
            XCUIApplication().buttons["enrollButton"].tap()
            XCTAssertTrue(app.staticTexts["Thanks for Joining!"].exists)
        }
    }

    
