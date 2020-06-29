//
//  Simple_App_To_TestUITests.swift
//  Simple App To TestUITests
//
//  Created by Ajeet Kumar on 28/06/20.
//  Copyright © 2020 DigitalCurry. All rights reserved.
//

import XCTest

class Simple_App_To_TestUITests: XCTestCase {

    func testButtonClick() throws {
        // UI tests must launch the application that they test.
        let app = XCUIApplication()
        app.launch()
        
        // Find the button in the UI based on button's text
        let button = app.buttons["Click Me!"].firstMatch
        button.tap()
        
        /**
                 We can use the below code also for the same purpose.
                 But the above code is more optimised in terms of performance.
                 It might not matter in a simple app like this, but could save
                 a lot of time in a complex UI
                 */
        //        app.buttons["Click Me!"].tap()
        
        let str = "Random text 1"
        let textView = app.staticTexts[str]
        
        // If the text ran successfully, the the above textView will be != Nil
        XCTAssertEqual(textView.exists, true)
        
        
    }
}
