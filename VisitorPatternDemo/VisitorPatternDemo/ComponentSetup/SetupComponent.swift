//
//  SetupComponent.swift
//  VisitorPatternDemo
//
//  Created by tstone10 on 2020/2/19.
//  Copyright © 2020 ford. All rights reserved.
//

import Foundation
import ComponentA

struct SetupComponent {

    static func setupComponent() {
        setupComponentA()
    }

    private static func setupComponentA() {
        ComponentASetup.configure(applicationID: "124",
                                  environment: Environment.performance,
                                  componentListJSONPath: nil)
    }
}
