//
//  SetTemperatureCommandOptions.swift
//  TeslaSwift
//
//  Created by Joao Nunes on 10/11/2016.
//  Copyright © 2016 Joao Nunes. All rights reserved.
//

import Foundation

public struct SetTemperatureCommandOptions: Encodable, Sendable {

	public var driverTemp: Double?
	public var passengerTemp: Double?
    public init(driverTemperature: Double, passengerTemperature: Double) {
		driverTemp = driverTemperature
		passengerTemp = passengerTemperature
	}
	
	enum CodingKeys: String, CodingKey {
		case driverTemp		 = "driver_temp"
		case passengerTemp	 = "passenger_temp"
	}
}
