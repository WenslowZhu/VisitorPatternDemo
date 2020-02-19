//
//  ComponentASetup.swift
//  ComponentA
//
//  Created by tstone10 on 2020/2/19.
//  Copyright © 2020 ford. All rights reserved.
//

import Foundation

public struct ComponentASetup {

    static var applicationID: String?
    static var environment: Environment = .prod
    static var componentListJSONPath: URL?//用来配置 URL Host 的 JSON 文件

    public static func configure(applicationID: String, environment: Environment, componentListJSONPath: URL?) {
        self.applicationID = applicationID
        self.environment = environment
        self.componentListJSONPath = componentListJSONPath
    }
}

// 这个枚举只是这个 Demo 的示例。项目中不要自己定义 Environment 枚举
public enum Environment: String {
    case prod = "Prod"
    case performance = "Performance"
    case qa = "QA"
    case staging = "Staging"
    case uat = "UAT"
}
