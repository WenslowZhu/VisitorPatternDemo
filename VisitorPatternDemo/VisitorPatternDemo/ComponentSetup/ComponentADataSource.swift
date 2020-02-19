//
//  ComponentADataSource.swift
//  VisitorPatternDemo
//
//  Created by tstone10 on 2020/2/19.
//  Copyright © 2020 ford. All rights reserved.
//

import Foundation
import ComponentA
import RepositoryA

class ComponentADataSource {

    static let share = ComponentADataSource()// 需要定义成单例

    let componentAImp: ComponentAProtocol = ComponentAFactory.makeComponentA()
    let repositoryAImp = RepositoryAImp()

    func setDataSource() {
        componentAImp.setDataSource(self)
    }
}

extension ComponentADataSource: RepositoryAProtocol {
    func demoFunction() -> Bool {
        return repositoryAImp.demoFunction()
    }
}
