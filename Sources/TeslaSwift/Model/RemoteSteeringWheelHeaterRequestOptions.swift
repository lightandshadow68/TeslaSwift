//
//  RemoteSteeringWheelHeaterRequestOptions.swift
//  TeslaSwift
//
//  Created by Jordan Owens on 2/17/19.
//  Copyright © 2019 Jordan Owens. All rights reserved.
//

import Foundation

public struct RemoteSteeringWheelHeaterRequestOptions: Encodable, Sendable {
    public var on: Bool

    public init(on: Bool) {
        self.on = on
    }

    enum CodingKeys: String, CodingKey {
        case on
    }
}
