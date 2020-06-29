//
//  Simple_App_To_TestTests.swift
//  Simple App To TestTests
//
//  Created by Ajeet Kumar on 28/06/20.
//  Copyright © 2020 DigitalCurry. All rights reserved.
//

import XCTest
@testable import Simple_App_To_Test

class Simple_App_To_TestTests: XCTestCase {

    func testCalculateRandomString() throws {
        counter = 2
        let str = calculateRandomString()
        XCTAssertTrue(str == "Random text 3")
    }

}
