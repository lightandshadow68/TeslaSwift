//
//  BatteryData.swift
//  TeslaSwift
//
//  Created by Alec on 11/24/21.
//  Copyright © 2021 Joao Nunes. All rights reserved.
//

import Foundation

// MARK: - Welcome
public struct BatteryData: Codable, Sendable {
    public var siteName: String
    public var energyLeft: Double
    public var totalPackEnergy: Double
    public var gridStatus: String
    public var defaultRealMode: String
    public var operation: String
    public var installationDate: Date
    public var batteryCount: Int
    public var backup: Backup
    public var userSettings: UserSettings
    public var components: Components
    public var powerReading: [PowerReading]

    enum CodingKeys: String, CodingKey {
        case siteName = "site_name"
        case energyLeft = "energy_left"
        case totalPackEnergy = "total_pack_energy"
        case gridStatus = "grid_status"
        case backup
        case userSettings = "user_settings"
        case components
        case defaultRealMode = "default_real_mode"
        case operation
        case installationDate = "installation_date"
        case powerReading = "power_reading"
        case batteryCount = "battery_count"
    }
    
    // MARK: - Backup
    public struct Backup: Codable, Sendable {
        public var backupReservePercent: Double
        public var events: [Event]

        enum CodingKeys: String, CodingKey {
            case backupReservePercent = "backup_reserve_percent"
            case events
        }
    }

    // MARK: - Event
    public struct Event: Codable, Sendable {
        let timestamp: Date
        let duration: Int
    }

    // MARK: - Components
    public struct Components: Codable, Sendable {
        public var solar: Bool
        public var solarType: String
        public var battery: Bool
        public var grid: Bool
        public var backup: Bool
        public var gateway: String
        public var loadMeter: Bool
        public var touCapable: Bool
        public var stormModeCapable: Bool
        public var flexEnergyRequestCapable: Bool
        public var carChargingDataSupported: Bool
        public var offGridVehicleChargingReserveSupported: Bool
        public var vehicleChargingPerformanceViewEnabled: Bool
        public var vehicleChargingSolarOffsetViewEnabled: Bool
        public var batterySolarOffsetViewEnabled: Bool
        public var setIslandingModeEnabled: Bool
        public var backupTimeRemainingEnabled: Bool
        public var batteryType: String
        public var configurable: Bool
        public var gridServicesEnabled: Bool

        enum CodingKeys: String, CodingKey {
            case solar
            case solarType = "solar_type"
            case battery, grid, backup, gateway
            case loadMeter = "load_meter"
            case touCapable = "tou_capable"
            case stormModeCapable = "storm_mode_capable"
            case flexEnergyRequestCapable = "flex_energy_request_capable"
            case carChargingDataSupported = "car_charging_data_supported"
            case offGridVehicleChargingReserveSupported = "off_grid_vehicle_charging_reserve_supported"
            case vehicleChargingPerformanceViewEnabled = "vehicle_charging_performance_view_enabled"
            case vehicleChargingSolarOffsetViewEnabled = "vehicle_charging_solar_offset_view_enabled"
            case batterySolarOffsetViewEnabled = "battery_solar_offset_view_enabled"
            case setIslandingModeEnabled = "set_islanding_mode_enabled"
            case backupTimeRemainingEnabled = "backup_time_remaining_enabled"
            case batteryType = "battery_type"
            case configurable
            case gridServicesEnabled = "grid_services_enabled"
        }
    }

    // MARK: - PowerReading
    public struct PowerReading: Codable, Sendable {
        public var timestamp: Date
        public var loadPower: Double
        public var solarPower: Double
        public var gridPower: Double
        public var batteryPower: Double
        public var generatorPower: Double

        enum CodingKeys: String, CodingKey {
            case timestamp
            case loadPower = "load_power"
            case solarPower = "solar_power"
            case gridPower = "grid_power"
            case batteryPower = "battery_power"
            case generatorPower = "generator_power"
        }
    }

    // MARK: - UserSettings
    public struct UserSettings: Codable, Sendable {
        public var stormModeEnabled: Bool
        public var syncGridAlertEnabled: Bool
        public var breakerAlertEnabled: Bool

        enum CodingKeys: String, CodingKey {
            case stormModeEnabled = "storm_mode_enabled"
            case syncGridAlertEnabled = "sync_grid_alert_enabled"
            case breakerAlertEnabled = "breaker_alert_enabled"
        }
    }
}
