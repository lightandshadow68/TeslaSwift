//
//  SpeedLimitOptions.swift
//  TeslaSwift
//
//  Created by Joao Nunes on 15/12/2018.
//  Copyright © 2018 Joao Nunes. All rights reserved.
//

import Foundation

public struct SetSpeedLimitOptions: Codable, Sendable {
	
	public var limit: Measurement<UnitSpeed>
	
	enum CodingKeys: String, CodingKey {
		case limit = "limit_mph"
	}
	
	public init(limit: Measurement<UnitSpeed>) {
		self.limit = limit.converted(to: UnitSpeed.milesPerHour)
	}
	
	public init(from decoder: Decoder) throws {
		
		let container = try decoder.container(keyedBy: CodingKeys.self)
		
		if let value = try? container.decode(Int.self, forKey: .limit) {
			limit = Measurement<UnitSpeed>(value: Double(value), unit: UnitSpeed.milesPerHour)
		} else {
			limit = Measurement<UnitSpeed>(value: 0, unit: UnitSpeed.milesPerHour)
		}
	}
	
	public func encode(to encoder: Encoder) throws {
		var container = encoder.container(keyedBy: CodingKeys.self)
		
		let milesUnit = limit.converted(to: UnitSpeed.milesPerHour)
		try container.encode(Int(milesUnit.value), forKey: .limit)
	}
	
}

public struct SpeedLimitPinOptions: Codable, Sendable {
	
	public var pin: String // 4 digits pin
	
	public init(pin: String) {
		self.pin = pin
	}
	
	enum CodingKeys: String, CodingKey {
		case pin
	}
}
