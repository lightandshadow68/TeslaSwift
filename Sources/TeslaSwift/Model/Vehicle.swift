//
//  VehicleExtended.swift
//  TeslaSwift
//
//  Created by Joao Nunes on 12/03/2017.
//  Copyright © 2017 Joao Nunes. All rights reserved.
//

import Foundation

public struct Vehicle: Codable, Sendable {
    public var backseatToken: String?
    public var backseatTokenUpdatedAt: Date?
    public var calendarEnabled: Bool?
    public var color: String?
    public var displayName: String?
    public var id: String? {
        get {
            guard let value = idInt else { return nil }
            return "\(value)"
        }
        set {
            guard let newValue = newValue else { idInt = nil; return }
            idInt = Int64(newValue)
        }
    }
    public var idInt: Int64?
    public var idS: String?
    public var inService: Bool?
    public var optionCodes: String?
    public var state: String?
    public var tokens: [String]?
    public var vehicleID: Int64?
    public var vin: String?
	public var userId: Int64?
	public var chargeState: ChargeState?
	public var climateState: ClimateState?
	public var driveState: DriveState?
	public var guiSettings: GuiSettings?
	public var vehicleConfig: VehicleConfig?
	public var vehicleState: VehicleState?

	private enum CodingKeys: String, CodingKey {
		case userId		                = "user_id"
		case chargeState	            = "charge_state"
		case climateState	            = "climate_state"
		case driveState		            = "drive_state"
		case guiSettings		        = "gui_settings"
		case vehicleConfig	            = "vehicle_config"
		case vehicleState	            = "vehicle_state"
        case backseatToken              = "backseat_token"
        case backseatTokenUpdatedAt     = "backseat_token_updated_at"
        case calendarEnabled            = "calendar_enabled"
        case color                      = "color"
        case displayName                = "display_name"
        case idInt                      = "id"
        case idS                        = "id_s"
        case inService                  = "in_service"
        case optionCodes                = "option_codes"
        case state                      = "state"
        case tokens                     = "tokens"
        case vehicleID                  = "vehicle_id"
        case vin                        = "vin"
	}
	
	public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        backseatToken = try? container.decode(String.self, forKey: .backseatToken)
        backseatTokenUpdatedAt = try? container.decode(Date.self, forKey: .backseatTokenUpdatedAt)
        calendarEnabled = {
            if let boolValue = try? container.decode(Bool.self, forKey: .calendarEnabled) {
                return boolValue
            } else if let intValue = try? container.decode(Int.self, forKey: .calendarEnabled) {
                    return intValue > 0
            } else {
                return nil
            }
        }()
        color = try? container.decode(String.self, forKey: .color)
        displayName = try? container.decode(String.self, forKey: .displayName)
        idInt = try? container.decode(Int64.self, forKey: .idInt)
        idS = try? container.decode(String.self, forKey: .idS)
        inService = {
            if let boolValue = try? container.decode(Bool.self, forKey: .inService) {
                return boolValue
            } else if let intValue = try? container.decode(Int.self, forKey: .inService) {
                return intValue > 0
            } else {
                return nil
            }
        }()
        optionCodes = try? container.decode(String.self, forKey: .optionCodes)
        state = try? container.decode(String.self, forKey: .state)
        tokens = try? container.decode([String].self, forKey: .tokens)
        vehicleID = try? container.decode(Int64.self, forKey: .vehicleID)
        vin = try? container.decode(String.self, forKey: .vin)
		userId = try container.decodeIfPresent(Int64.self, forKey: .userId)
		chargeState = try container.decodeIfPresent(ChargeState.self, forKey: .chargeState)
		climateState = try container.decodeIfPresent(ClimateState.self, forKey: .climateState)
		driveState = try container.decodeIfPresent(DriveState.self, forKey: .driveState)
		guiSettings = try container.decodeIfPresent(GuiSettings.self, forKey: .guiSettings)
		vehicleConfig = try container.decodeIfPresent(VehicleConfig.self, forKey: .vehicleConfig)
		vehicleState = try container.decodeIfPresent(VehicleState.self, forKey: .vehicleState)
	}
	
	public func encode(to encoder: Encoder) throws {
		var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(backseatToken, forKey: .backseatToken)
        try container.encodeIfPresent(backseatTokenUpdatedAt, forKey: .backseatTokenUpdatedAt)
        try container.encodeIfPresent(calendarEnabled, forKey: .calendarEnabled)
        try container.encodeIfPresent(color, forKey: .color)
        try container.encodeIfPresent(displayName, forKey: .displayName)
        try container.encodeIfPresent(idInt, forKey: .idInt)
        try container.encodeIfPresent(idS, forKey: .idS)
        try container.encodeIfPresent(inService, forKey: .inService)
        try container.encodeIfPresent(optionCodes, forKey: .optionCodes)
        try container.encodeIfPresent(state, forKey: .state)
        try container.encodeIfPresent(tokens, forKey: .tokens)
        try container.encodeIfPresent(vehicleID, forKey: .vehicleID)
        try container.encodeIfPresent(vin, forKey: .vin)
		try container.encodeIfPresent(userId, forKey: .userId)
		try container.encodeIfPresent(chargeState, forKey: .chargeState)
		try container.encodeIfPresent(climateState, forKey: .climateState)
		try container.encodeIfPresent(driveState, forKey: .driveState)
		try container.encodeIfPresent(guiSettings, forKey: .guiSettings)
		try container.encodeIfPresent(vehicleConfig, forKey: .vehicleConfig)
		try container.encodeIfPresent(vehicleState, forKey: .vehicleState)
        
	}
}
