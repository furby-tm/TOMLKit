// Copyright (c) 2021 Jeff Lebrun
//
//  Licensed under the MIT License.
//
//  The full text of the license can be found in the file named LICENSE.

extension InternalTOMLDecoder.SVDC {
	func decodeNil() -> Bool {
		false
	}

	func decode(_ type: Bool.Type) throws -> Bool {
		guard let b = tomlValue.bool else {
			throw DecodingError.typeMismatch(Bool.self, DecodingError.Context(codingPath: self.codingPath, debugDescription: "A \"\(type)\" does not exist in this table."))
		}

		return b
	}

	func decode(_ type: String.Type) throws -> String {
		guard let s = tomlValue.string else {
			throw DecodingError.typeMismatch(String.self, DecodingError.Context(codingPath: self.codingPath, debugDescription: "A \"\(type)\" does not exist in this table."))
		}

		return s
	}

	func decode(_ type: Double.Type) throws -> Double {
		guard let d = tomlValue.double else {
			throw DecodingError.typeMismatch(Double.self, DecodingError.Context(codingPath: self.codingPath, debugDescription: "A \"\(type)\" does not exist in this table."))
		}

		return d
	}

	func decode(_ type: Float.Type) throws -> Float {
		guard let d = tomlValue.double else {
			throw DecodingError.typeMismatch(Float.self, DecodingError.Context(codingPath: self.codingPath, debugDescription: "A \"\(type)\" does not exist in this table."))
		}

		return Float(d)
	}

	func decode(_ type: Int.Type) throws -> Int {
		guard let i = tomlValue.int else {
			throw DecodingError.typeMismatch(Int.self, DecodingError.Context(codingPath: self.codingPath, debugDescription: "A \"\(type)\" does not exist in this table."))
		}

		return i
	}

	func decode(_ type: Int8.Type) throws -> Int8 {
		guard let i = tomlValue.int else {
			throw DecodingError.typeMismatch(type, DecodingError.Context(codingPath: self.codingPath, debugDescription: "A \"\(type)\" does not exist in this table."))
		}

		return type.init(i)
	}

	func decode(_ type: Int16.Type) throws -> Int16 {
		guard let i = tomlValue.int else {
			throw DecodingError.typeMismatch(type, DecodingError.Context(codingPath: self.codingPath, debugDescription: "A \"\(type)\" does not exist in this table."))
		}

		return type.init(i)
	}

	func decode(_ type: Int32.Type) throws -> Int32 {
		guard let i = tomlValue.int else {
			throw DecodingError.typeMismatch(type, DecodingError.Context(codingPath: self.codingPath, debugDescription: "A \"\(type)\" does not exist in this table."))
		}

		return type.init(i)
	}

	func decode(_ type: Int64.Type) throws -> Int64 {
		guard let i = tomlValue.int else {
			throw DecodingError.typeMismatch(type, DecodingError.Context(codingPath: self.codingPath, debugDescription: "A \"\(type)\" does not exist in this table."))
		}

		return type.init(i)
	}

	func decode(_ type: UInt.Type) throws -> UInt {
		guard let i = tomlValue.int else {
			throw DecodingError.typeMismatch(type, DecodingError.Context(codingPath: self.codingPath, debugDescription: "A \"\(type)\" does not exist in this table."))
		}

		return type.init(i)
	}

	func decode(_ type: UInt8.Type) throws -> UInt8 {
		guard let i = tomlValue.int else {
			throw DecodingError.typeMismatch(type, DecodingError.Context(codingPath: self.codingPath, debugDescription: ""))
		}

		return type.init(i)
	}

	func decode(_ type: UInt16.Type) throws -> UInt16 {
		guard let i = tomlValue.int else {
			throw DecodingError.typeMismatch(type, DecodingError.Context(codingPath: self.codingPath, debugDescription: ""))
		}

		return type.init(i)
	}

	func decode(_ type: UInt32.Type) throws -> UInt32 {
		guard let i = tomlValue.int else {
			throw DecodingError.typeMismatch(type, DecodingError.Context(codingPath: self.codingPath, debugDescription: ""))
		}

		return type.init(i)
	}

	func decode(_ type: UInt64.Type) throws -> UInt64 {
		guard let i = tomlValue.int else {
			throw DecodingError.typeMismatch(type, DecodingError.Context(codingPath: self.codingPath, debugDescription: ""))
		}

		return type.init(i)
	}

	func decode<T>(_: T.Type) throws -> T where T: Decodable {
		let decoder = InternalTOMLDecoder(self.tomlValue)

		return try T(from: decoder)
	}
}
