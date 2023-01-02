//
//  ChargeLimitPercentageCommandOptions.swift
//  TeslaSwift
//
//  Created by Joao Nunes on 10/11/2016.
//  Copyright © 2016 Joao Nunes. All rights reserved.
//

import Foundation

public struct ChargeLimitPercentageCommandOptions: Encodable, Sendable {
	public var percent: Int?
	
    public init(limit: Int) {
		percent = limit
	}
	
	enum CodingKeys: String, CodingKey {
		case percent
	}
}
