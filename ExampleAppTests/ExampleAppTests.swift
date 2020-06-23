//
//  ExampleAppTests.swift
//  ExampleAppTests
//
//  Created by Ralf Ebert on 23.06.20.
//

import XCTest
import Snap
import SwiftUI
@testable import ExampleApp

class ExampleAppTests: XCTestCase {

    override func setUp() {
        super.setUp()
        // isRecording = true
      }

      func testContentView() {
        // Rendering an image for a SwiftUI View and comparing it with the Snap.swift framework in a unit test
        let window = UIApplication.shared.windows.first
        let controller = UIHostingController(rootView: ContentView())
        window!.rootViewController = controller
        let view = controller.view!
        view.frame = CGRect(x: 0, y: 0, width: 200, height: 200)
        expect(view).toMatchSnapshot()
        // What's missing?
        // - Being able to render images for SwiftUI views with the view being off screen
        // - XCTest API to assert images
        // - API to create fake UI events (like XCUI* API but for unit tests; f.e. fake a tap on the button)
        // - A way to compare SwiftUI views textually or dive into the view hierarchy programatically
      }

}
