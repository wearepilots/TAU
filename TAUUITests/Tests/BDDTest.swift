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


    

