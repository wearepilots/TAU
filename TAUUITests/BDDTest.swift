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
            XCTContext.runActivity(named: "Appa Gotova") { _  in
                XCTAssertTrue(app.buttons["enrollButton"].exists)
            }
        }
        func whenIEnter(city: String) {
            XCTContext.runActivity(named: "Vvodim Gorod") { _  in
            app.textFields["city"].tap()
                app.textFields["city"].typeText("London")
            }
        }
        func whenIEnrolled() {
            XCTContext.runActivity(named: "Tapaem Knopku") { _  in
            app.buttons["enrollButton"].tap()
            }
        }
        func thenIShouldSeeThankYouMessage() {
            XCTContext.runActivity(named: "Vidim Spasibo") { _  in
            XCTAssertTrue(app.staticTexts["Thanks for Joining!"].exists)
            }
    }
    
}


