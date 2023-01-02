//
//  EnergySiteLiveStatus.swift
//  TeslaSwift
//
//  Created by Alec on 11/24/21.
//  Copyright © 2021 Joao Nunes. All rights reserved.
//

import Foundation

// MARK: - EnergySiteLiveStatus
public struct EnergySiteLiveStatus: Codable, Sendable {
    public var solarPower: Double
    public var energyLeft: Double
    public var totalPackEnergy: Double
    public var percentageCharged: Double
    public var backupCapable: Bool
    public var batteryPower: Double
    public var loadPower: Double
    public var gridStatus: String
    public var gridServicesActive: Bool
    public var gridPower: Double
    public var gridServicesPower: Double
    public var generatorPower: Double
    public var islandStatus: String
    public var stormModeActive: Bool
    public var timestamp: Date

    enum CodingKeys: String, CodingKey {
        case solarPower = "solar_power"
        case energyLeft = "energy_left"
        case totalPackEnergy = "total_pack_energy"
        case percentageCharged = "percentage_charged"
        case backupCapable = "backup_capable"
        case batteryPower = "battery_power"
        case loadPower = "load_power"
        case gridStatus = "grid_status"
        case gridServicesActive = "grid_services_active"
        case gridPower = "grid_power"
        case gridServicesPower = "grid_services_power"
        case generatorPower = "generator_power"
        case islandStatus = "island_status"
        case stormModeActive = "storm_mode_active"
        case timestamp
    }
}
