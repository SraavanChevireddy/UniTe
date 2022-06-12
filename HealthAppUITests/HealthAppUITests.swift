//
//  HealthAppUITests.swift
//  HealthAppUITests
//
//  Created by Sraavan Chevireddy on 6/11/22.
//

import XCTest

class HealthAppUITests: XCTestCase {

    override func setUpWithError() throws {
        continueAfterFailure = false
    }
    
    func test_basicKeyboardInput() throws {
        let app = XCUIApplication()
        app.launch()
        
        let enterYourFirstNameTextField = app.textFields["Enter your firstname"]
        enterYourFirstNameTextField.tap()
        enterYourFirstNameTextField.typeText("Samuel")
        
        let enterYourLastNameTextField = app.textFields["Enter your last name"]
        enterYourLastNameTextField.tap()
        enterYourLastNameTextField.typeText("Jonson")
        
        let tf_dob = app.textFields["Enter Date Of Birth"]
        tf_dob.tap()
        tf_dob.typeText("12/31/1995")
        
    }
    
    func testClearButton() throws{
        
        let app = XCUIApplication()
        app.launch()
        
        let enterYourFirstNameTextField = app.textFields["Enter your firstname"]
        enterYourFirstNameTextField.tap()
        enterYourFirstNameTextField.typeText("Samuel")
        
        let enterYourLastNameTextField = app.textFields["Enter your last name"]
        enterYourLastNameTextField.tap()
        enterYourLastNameTextField.typeText("Jonson")
        
        let tf_dob = app.textFields["Enter Date Of Birth"]
        tf_dob.tap()
        tf_dob.typeText("12/31/1995")
        
        let registerNavigationBar = app.navigationBars["Register"]
        registerNavigationBar.buttons["Cancel"].tap()
        app.alerts["Are you sure you want to clear fileds ?"].scrollViews.otherElements.buttons["Dismiss"].tap()
    }
    
    func testSubmit() throws{
        let app = XCUIApplication()
        app.launch()
        
        let enterYourFirstNameTextField = app.textFields["Enter your firstname"]
        enterYourFirstNameTextField.tap()
        enterYourFirstNameTextField.typeText("Samuel")
        
        let enterYourLastNameTextField = app.textFields["Enter your last name"]
        enterYourLastNameTextField.tap()
        enterYourLastNameTextField.typeText("Jonson")
        
        let registerNavigationBar = app.navigationBars["Register"]
        registerNavigationBar.buttons["Next"].tap()
        app.alerts["Form Sumbitted Successfully"].scrollViews.otherElements.buttons["Dismiss"].tap()
    }
    

    func testLaunchPerformance() throws {
        if #available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 7.0, *) {
            // This measures how long it takes to launch your application.
            measure(metrics: [XCTApplicationLaunchMetric()]) {
                XCUIApplication().launch()
            }
        }
    }
}
