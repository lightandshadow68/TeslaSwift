//
//  ValetCommandOptions.swift
//  TeslaSwift
//
//  Created by Joao Nunes on 12/04/16.
//  Copyright © 2016 Joao Nunes. All rights reserved.
//

import Foundation

public struct ValetCommandOptions: Codable, Sendable {
	public var on: Bool = false
	public var password: String?
	
    public init(valetActivated: Bool, pin: String?) {
		on = valetActivated
		password = pin
	}
	
	enum CodingKeys: String, CodingKey {
		case on
		case password
	}
}
