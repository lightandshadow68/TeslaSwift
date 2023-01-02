//
//  EnergySiteInfo.swift
//  TeslaSwift
//
//  Created by Alec on 11/24/21.
//  Copyright © 2021 Joao Nunes. All rights reserved.
//

import Foundation

// MARK: - EnergySiteInfo
public struct EnergySiteInfo: Codable, Sendable {
    public var id: String
    public var siteName: String
    public var backupReservePercent: Double
    public var defaultRealMode: String
    public var installationDate: Date
    public var version: String
    public var batteryCount: Int
    public var nameplatePower: Double
    public var nameplateEnergy: Double
    public var installationTimeZone: String
    public var offGridVehicleChargingReservePercent: Double
    
    public var userSettings: UserSettings
    public var touSettings: TOUSettings
    public var components: Components

    enum CodingKeys: String, CodingKey {
        case id
        case siteName = "site_name"
        case backupReservePercent = "backup_reserve_percent"
        case defaultRealMode = "default_real_mode"
        case installationDate = "installation_date"
        case userSettings = "user_settings"
        case components, version
        case batteryCount = "battery_count"
        case touSettings = "tou_settings"
        case nameplatePower = "nameplate_power"
        case nameplateEnergy = "nameplate_energy"
        case installationTimeZone = "installation_time_zone"
        case offGridVehicleChargingReservePercent = "off_grid_vehicle_charging_reserve_percent"
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

    // MARK: - TouSettings
    public struct TOUSettings: Codable, Sendable {
        public var optimizationStrategy: String
        public var schedule: [Schedule]

        enum CodingKeys: String, CodingKey {
            case optimizationStrategy = "optimization_strategy"
            case schedule
        }
    }

    // MARK: - Schedule
    public struct Schedule: Codable, Sendable {
        public var target: String
        public var weekDays: [Int]
        public var startSeconds: Int
        public var endSeconds: Int

        enum CodingKeys: String, CodingKey {
            case target
            case weekDays = "week_days"
            case startSeconds = "start_seconds"
            case endSeconds = "end_seconds"
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
