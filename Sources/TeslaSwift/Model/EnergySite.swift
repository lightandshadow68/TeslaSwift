//
//  EnergySite.swift
//  TeslaSwift
//
//  Created by Alec on 11/24/21.
//  Copyright © 2021 Joao Nunes. All rights reserved.
//

import Foundation

// MARK: - EnergySite
public struct EnergySite: Codable, Sendable {
    
    // Unique to EnergySite
    public var id: String?
    public var energySiteID: Decimal
    public var assetSiteID: String?
    public var components: Components?
    
    // Also available in EnergySiteStatus
    public var resourceType: String
    public var siteName: String
    public var gatewayID: String
    public var energyLeft: Double
    public var totalPackEnergy: Double
    public var percentageCharged: Double
    public var batteryType: String
    public var backupCapable: Bool
    public var batteryPower: Double
    public var syncGridAlertEnabled: Bool
    public var breakerAlertEnabled: Bool

    enum CodingKeys: String, CodingKey {
        case energySiteID = "energy_site_id"
        case resourceType = "resource_type"
        case siteName = "site_name"
        case id
        case gatewayID = "gateway_id"
        case assetSiteID = "asset_site_id"
        case energyLeft = "energy_left"
        case totalPackEnergy = "total_pack_energy"
        case percentageCharged = "percentage_charged"
        case batteryType = "battery_type"
        case backupCapable = "backup_capable"
        case batteryPower = "battery_power"
        case syncGridAlertEnabled = "sync_grid_alert_enabled"
        case breakerAlertEnabled = "breaker_alert_enabled"
        case components
    }

    // MARK: - Components
    public struct Components: Codable, Sendable {
        public var battery: Bool
        public var batteryType: String
        public var solar: Bool
        public var solarType: String
        public var grid: Bool
        public var loadMeter: Bool
        public var marketType: String

        enum CodingKeys: String, CodingKey {
            case battery
            case batteryType = "battery_type"
            case solar
            case solarType = "solar_type"
            case grid
            case loadMeter = "load_meter"
            case marketType = "market_type"
        }
    }
}
