//
//  RegisterComponent.swift
//  VisitorPatternDemo
//
//  Created by tstone10 on 2020/2/19.
//  Copyright © 2020 ford. All rights reserved.
//

import Foundation
import ComponentA

struct RegisterComponent {

    static func resigterComponent() {
        resigterComponentA()
    }

    private static func resigterComponentA() {

        // 1. 用ServieLocator 注册 ComponentA
        /*
         伪代码

         CNLocator.register { () -> ComponentAProtocol in
             return ComponentAFactory.makeComponentA()
         }
         */

        // 2. 调用访客模式
        ComponentADataSource.share.setDataSource()
    }
}
