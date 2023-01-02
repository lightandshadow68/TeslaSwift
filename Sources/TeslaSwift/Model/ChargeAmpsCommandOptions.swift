//
//  ChargeAmpsCommandOptions.swift
//  TeslaSwift
//
//  Created by João Nunes on 30/10/2021.
//  Copyright © 2021 Joao Nunes. All rights reserved.
//

import Foundation

public struct ChargeAmpsCommandOptions: Encodable, Sendable {

    public var amps: Int

    public init(amps: Int) {
        self.amps = amps
    }

    enum CodingKeys: String, CodingKey {
        case amps = "charging_amps"
    }
}
