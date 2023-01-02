//
//  EnergySiteStatus.swift
//  TeslaSwift
//
//  Created by Alec on 11/24/21.
//  Copyright © 2021 Joao Nunes. All rights reserved.
//

import Foundation

// MARK: - EnergySiteStatus
public struct EnergySiteStatus: Codable, Sendable {
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
        case resourceType = "resource_type"
        case siteName = "site_name"
        case gatewayID = "gateway_id"
        case energyLeft = "energy_left"
        case totalPackEnergy = "total_pack_energy"
        case percentageCharged = "percentage_charged"
        case batteryType = "battery_type"
        case backupCapable = "backup_capable"
        case batteryPower = "battery_power"
        case syncGridAlertEnabled = "sync_grid_alert_enabled"
        case breakerAlertEnabled = "breaker_alert_enabled"
    }
}
