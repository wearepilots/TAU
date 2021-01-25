import Foundation
import XCTest

class TAUUITestBase: XCTestCase {
    
    var app = XCUIApplication()
    
    override func setUpWithError() throws {
     
        continueAfterFailure = false
        app.launch()
    }

    override func tearDownWithError() throws {
    }
}
