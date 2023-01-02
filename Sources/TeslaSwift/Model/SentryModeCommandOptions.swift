//
//  SentryModeCommandOptions.swift
//  TeslaSwift
//
//  Created by Jordan Owens on 3/18/19.
//  Copyright © 2019 Jordan Owens. All rights reserved.
//

import Foundation

public struct SentryModeCommandOptions: Encodable, Sendable {
    public var on: Bool

    public init(activated: Bool) {
        self.on = activated
    }

    enum CodingKeys: String, CodingKey {
        case on
    }
}
