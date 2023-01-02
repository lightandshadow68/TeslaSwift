//
//  GenericResponse.swift
//  TeslaSwift
//
//  Created by Joao Nunes on 24/06/16.
//  Copyright © 2016 Joao Nunes. All rights reserved.
//

import Foundation

public struct Response<T: Decodable>: Decodable {
	public var response: T
	
	public init(response: T) {
		self.response = response
	}
	
	// MARK: Codable protocol
	
	enum CodingKeys: String, CodingKey {
		case response
	}
}

public class ArrayResponse<T: Decodable>: Decodable {
	public var response: [T] = []
	
	// MARK: Codable protocol
	
	enum CodingKeys: String, CodingKey {
		case response
	}
}

public class BoolResponse: Decodable {
	public var response: Bool
	
	public init(response: Bool) {
		self.response = response
	}
	
	// MARK: Codable protocol
	
	enum CodingKeys: String, CodingKey {
		case response
	}
}
