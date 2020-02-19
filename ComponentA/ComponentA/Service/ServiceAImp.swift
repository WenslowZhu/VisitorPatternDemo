//
//  ServiceAImp.swift
//  ComponentA
//
//  Created by tstone10 on 2020/2/19.
//  Copyright © 2020 ford. All rights reserved.
//

import Foundation

class ServiceAImp: ServiceAProtocol {

    weak var dataSource: RepositoryAProtocol?

    func setDataSource(_ dataSource: RepositoryAProtocol) {
        self.dataSource = dataSource
    }

    func demoFunction() -> Bool {
        guard let dataSource = dataSource else {
            assert(false, "dataSource 不可为空")//assert 只在 debug 环境起作用
        }
        return dataSource.demoFunction()
    }
}
