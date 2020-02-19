//
//  ComponentAImp.swift
//  ComponentA
//
//  Created by tstone10 on 2020/2/19.
//  Copyright © 2020 ford. All rights reserved.
//

import Foundation

class ComponentAImp: ComponentAProtocol {

    static let share: ComponentAProtocol = ComponentAImp()

    let serviceAImp: ServiceAProtocol

    init(serviceAImp: ServiceAProtocol) {
        self.serviceAImp = serviceAImp
    }

    convenience init () {
        self.init(serviceAImp: ServiceAImp())
    }

    func setDataSource(_ dataSource: RepositoryAProtocol) {
        serviceAImp.setDataSource(dataSource)
    }

    func demoFunction() -> Bool {
        return serviceAImp.demoFunction()
    }
}
