//
//  VehicleConfig.swift
//  TeslaSwift
//
//  Created by Joao Nunes on 12/03/2017.
//  Copyright © 2017 Joao Nunes. All rights reserved.
//

import Foundation

public struct VehicleConfig: Codable, Sendable {
	public var canAcceptNavigationRequests: Bool?
	public var canActuateTrunks: Bool?
	public var carSpecialType: String?
	public var carType: String?
	public var chargePortType: String?
	public var euVehicle: Bool?
	public var exteriorColor: String?
	public var hasAirSuspension: Bool?
	public var hasLudicrousMode: Bool?
	public var motorizedChargePort: Bool?
	public var perfConfig: String?
	public var plg: Bool?
	public var rearSeatHeaters: Int?
	public var rearSeatType: Int?
	public var rhd: Bool?
	public var roofColor: String? // "None" for panoramic roof
	public var seatType: Int?
	public var spoilerType: String?
	public var sunRoofInstalled: Int?
	public var thirdRowSeats: String?
	public var timeStamp: Double?
	public var trimBadging: String?
	public var wheelType: String?

	enum CodingKeys: String, CodingKey {
		case canAcceptNavigationRequests = "can_accept_navigation_requests"
		case canActuateTrunks	= "can_actuate_trunks"
		case carSpecialType		 = "car_special_type"
		case carType				 = "car_type"
		case chargePortType			= "charge_port_type"
		case euVehicle			 = "eu_vehicle"
		case exteriorColor		 = "exterior_color"
		case hasAirSuspension 	= "has_air_suspension"
		case hasLudicrousMode	 = "has_ludicrous_mode"
		case motorizedChargePort  = "motorized_charge_port"
		case perfConfig			 = "perf_config"
		case plg				= "plg"
		case rearSeatHeaters		 = "rear_seat_heaters"
		case rearSeatType		 = "rear_seat_type"
		case rhd					 = "rhd"
		case roofColor			 = "roof_color"
		case seatType			 = "seat_type"
		case spoilerType			 = "spoiler_type"
		case sunRoofInstalled	 = "sun_roof_installed"
		case thirdRowSeats		 = "third_row_seats"
		case timeStamp			= "timestamp"
		case trimBadging			 = "trim_badging"
		case wheelType			 = "wheel_type"
	}
	
	public init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)
		
		canAcceptNavigationRequests = try? container.decode(Bool.self, forKey: .canAcceptNavigationRequests)
		canActuateTrunks = try? container.decode(Bool.self, forKey: .canActuateTrunks)
		carSpecialType = try? container.decode(String.self, forKey: .carSpecialType)
		carType = try? container.decode(String.self, forKey: .carType)
		chargePortType = try? container.decode(String.self, forKey: .chargePortType)
		euVehicle = try? container.decode(Bool.self, forKey: .euVehicle)
		hasAirSuspension = try? container.decode(Bool.self, forKey: .hasAirSuspension)
		exteriorColor = try? container.decode(String.self, forKey: .exteriorColor)
		hasLudicrousMode = try? container.decode(Bool.self, forKey: .hasLudicrousMode)
		motorizedChargePort = try? container.decode(Bool.self, forKey: .motorizedChargePort)
		perfConfig = try? container.decode(String.self, forKey: .perfConfig)
		plg = try? container.decode(Bool.self, forKey: .plg)
		
		rearSeatHeaters = try? container.decode(Int.self, forKey: .rearSeatHeaters)
		
		rearSeatType = try? container.decode(Int.self, forKey: .rearSeatType)
		rhd = try? container.decode(Bool.self, forKey: .rhd)
		roofColor = try? container.decode(String.self, forKey: .roofColor) // "None" for panoramic roof
		seatType = try? container.decode(Int.self, forKey: .seatType)
		spoilerType = try? container.decode(String.self, forKey: .spoilerType)
		sunRoofInstalled = try? container.decode(Int.self, forKey: .sunRoofInstalled)
		thirdRowSeats = try? container.decode(String.self, forKey: .thirdRowSeats)
		timeStamp = try? container.decode(Double.self, forKey: .timeStamp)
		trimBadging = try? container.decode(String.self, forKey: .trimBadging)
		wheelType = try? container.decode(String.self, forKey: .wheelType)
	}
	
	public func encode(to encoder: Encoder) throws {
		var container = encoder.container(keyedBy: CodingKeys.self)
		
		try container.encodeIfPresent(canAcceptNavigationRequests, forKey: .canAcceptNavigationRequests)
		try container.encodeIfPresent(canActuateTrunks, forKey: .canActuateTrunks)
		try container.encodeIfPresent(carSpecialType, forKey: .carSpecialType)
		try container.encodeIfPresent(carType, forKey: .carType)
		try container.encodeIfPresent(chargePortType, forKey: .chargePortType)
		try container.encodeIfPresent(euVehicle, forKey: .euVehicle)
		try container.encodeIfPresent(exteriorColor, forKey: .exteriorColor)
		try container.encodeIfPresent(hasAirSuspension, forKey: .hasAirSuspension)
		try container.encodeIfPresent(hasLudicrousMode, forKey: .hasLudicrousMode)
		try container.encodeIfPresent(motorizedChargePort, forKey: .motorizedChargePort)
		try container.encodeIfPresent(perfConfig, forKey: .perfConfig)
		try container.encodeIfPresent(plg, forKey: .plg)
		try container.encodeIfPresent(rearSeatHeaters, forKey: .rearSeatHeaters)

		try container.encodeIfPresent(rearSeatType, forKey: .rearSeatType)
		try container.encodeIfPresent(rhd, forKey: .rhd)
		try container.encodeIfPresent(roofColor, forKey: .roofColor)
		try container.encodeIfPresent(seatType, forKey: .seatType)
		try container.encodeIfPresent(spoilerType, forKey: .spoilerType)
		try container.encodeIfPresent(sunRoofInstalled, forKey: .sunRoofInstalled)
		try container.encodeIfPresent(thirdRowSeats, forKey: .thirdRowSeats)
		try container.encodeIfPresent(timeStamp, forKey: .timeStamp)
		try container.encodeIfPresent(trimBadging, forKey: .trimBadging)
		try container.encodeIfPresent(wheelType, forKey: .wheelType)
	}
}
