// swiftlint:disable all
import Amplify
import Foundation

public struct S3ObjectFile: Model {
  public let id: String
  public var bucket: String?
  public var region: String?
  public var key: String?
  
  public init(id: String = UUID().uuidString,
      bucket: String? = nil,
      region: String? = nil,
      key: String? = nil) {
      self.id = id
      self.bucket = bucket
      self.region = region
      self.key = key
  }
}