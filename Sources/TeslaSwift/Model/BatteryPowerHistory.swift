//
//  BatteryPowerHistory.swift
//  TeslaSwift
//
//  Created by Alec on 11/24/21.
//  Copyright © 2021 Joao Nunes. All rights reserved.
//

import Foundation

// MARK: - BatteryPowerHistory
public struct BatteryPowerHistory: Codable, Sendable {
    public var serialNumber: String
    public var timeSeries: [TimeSeries]
    public var selfConsumptionData: [SelfConsumptionDatum]

    enum CodingKeys: String, CodingKey {
        case serialNumber = "serial_number"
        case timeSeries = "time_series"
        case selfConsumptionData = "self_consumption_data"
    }
    
    // MARK: - SelfConsumptionDatum
    public struct SelfConsumptionDatum: Codable, Sendable {
        public var timestamp: Date
        public var solar: Double
        public var battery: Double
    }

    // MARK: - TimeSeries
    public struct TimeSeries: Codable, Sendable {
        public var timestamp: Date
        public var solarPower: Double
        public var batteryPower: Double
        public var gridPower: Double
        public var gridServicesPower: Double
        public var generatorPower: Double

        enum CodingKeys: String, CodingKey {
            case timestamp
            case solarPower = "solar_power"
            case batteryPower = "battery_power"
            case gridPower = "grid_power"
            case gridServicesPower = "grid_services_power"
            case generatorPower = "generator_power"
        }
    }
}
