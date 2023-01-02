//
//  Product.swift
//  TeslaSwift
//
//  Created by Alec on 11/23/21.
//  Copyright © 2021 Joao Nunes. All rights reserved.
//

import Foundation

public struct Product: Codable, Sendable {
    public var vehicle: VehicleSummary?
    public var energySite: EnergySite?
    
    public var isValidProduct: Bool { vehicle != nil || energySite != nil}
    
    public init(from decoder: Decoder) throws {
        let vehicleContainer = try decoder.container(keyedBy: VehicleSummary.CodingKeys.self)
        let energySiteContainer = try decoder.container(keyedBy: EnergySite.CodingKeys.self)
        
        if vehicleContainer.contains(VehicleSummary.CodingKeys.vehicleID) {
            self.vehicle = try VehicleSummary(from: decoder)
            self.energySite = nil
        } else if energySiteContainer.contains(EnergySite.CodingKeys.energySiteID) {
            self.vehicle = nil
            self.energySite = try EnergySite(from: decoder)
        } else {
            self.vehicle = nil
            self.energySite = nil
        }
    }
}
