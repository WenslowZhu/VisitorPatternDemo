//
//  ComponentAProtocol.swift
//  ComponentA
//
//  Created by tstone10 on 2020/2/19.
//  Copyright © 2020 ford. All rights reserved.
//

import Foundation

public protocol ComponentAProtocol {
    func setDataSource(_ dataSource: RepositoryAProtocol)
    func demoFunction() -> Bool
}
