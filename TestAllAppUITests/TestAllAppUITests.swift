//
//  TestAllAppUITests.swift
//  TestAllAppUITests
//
//  Created by Matheus Lucas on 06/05/21.
//

import XCTest

class TestAllAppUITests: XCTestCase {

    override func setUp()  {
        continueAfterFailure = false
    }

  
    func testExample() {
        let app = XCUIApplication()
        app.launch()
        
        let darkModeToggle = app.switches["darkModeToggle"]
        let darkModeText = app.staticTexts["darkModeText"]
        
        let emailAdreess = app.textFields["emailField"]
        
        let senha = app.secureTextFields["senhaField"]
        
        let sendForm = app.staticTexts["sendForm"]
        
        emailAdreess.tap()
        emailAdreess.typeText("mateuslucas.ti@gmail.com")
        senha.tap()
        senha.typeText("123")
        
        darkModeToggle.tap()
        XCTAssertEqual("ON", darkModeText.label)
        XCTAssertEqual("ON", darkModeText.label)
        XCTAssertEqual("ON", darkModeText.label)
        sendForm.tap()

    }

}
