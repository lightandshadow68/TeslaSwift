//
//  BatteryStatus.swift
//  TeslaSwift
//
//  Created by Alec on 11/24/21.
//  Copyright © 2021 Joao Nunes. All rights reserved.
//

import Foundation

// MARK: - BatteryStatus
public struct BatteryStatus: Codable, Sendable {
    public var siteName: String
    public var id: String
    public var energyLeft: Double
    public var totalPackEnergy: Double
    public var percentageCharged: Double
    public var batteryPower: Double

    enum CodingKeys: String, CodingKey {
        case siteName = "site_name"
        case id
        case energyLeft = "energy_left"
        case totalPackEnergy = "total_pack_energy"
        case percentageCharged = "percentage_charged"
        case batteryPower = "battery_power"
    }
}
