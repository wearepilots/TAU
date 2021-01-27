
import Foundation
import XCTest

extension TAUUITestBase {
    
    func givenAppIsReady() {
        XCTContext.runActivity(named: "Chekaem Knopku") { _  in
            XCTAssertTrue(TAUScreen.enrollButton.element.exists)
        }
    }
    func whenIEnter(city: String) {
        XCTContext.runActivity(named: "Vvodim Gorod") { _  in
            TAUScreen.cityTextField.element.tap()
            TAUScreen.cityTextField.element.typeText("London")
        }
    }
    func whenIEnrolled() {
        XCTContext.runActivity(named: "Tapaem Knopku") { _  in
            TAUScreen.enrollButton.element.tap()
        }
    }
    func thenIShouldSeeThankYouMessage() {
        XCTContext.runActivity(named: "Vidim Spasibo") { _  in
        XCTAssertTrue(TAUScreen.thankYouMessage.element.exists)
        }
}

}

