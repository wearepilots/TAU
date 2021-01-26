import Foundation
import XCTest

class BDDTest: TAUUITestBase {
    
    func testThankyouMessageinBDStyle() {
        givenAppIsReady()
        whenIEnter(city: "London")
        whenIEnrolled()
        thenIShouldSeeThankYouMessage()
        
    }
}
    extension TAUUITestBase {
        
        func givenAppIsReady() {
            
            XCTAssertTrue(app.buttons["enrollButton"].exists)
        }
        func whenIEnter(city: String) {
            
            app.textFields["city"].tap()
            app.textFields["city"].typeText("London")
        }
        func whenIEnrolled() {
            
            app.buttons["enrollButton"].tap()
        }
        func thenIShouldSeeThankYouMessage() {
            
            XCTAssertTrue(app.staticTexts["Thanks for Joining!"].exists)
    }
    
}


