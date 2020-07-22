// swiftlint:disable all
import Amplify
import Foundation

public struct Tenant: Model {
  public let id: String
  public var name: String
  public var address1: String
  public var address2: String?
  public var city: String
  public var postcode: String
  public var bucket: String?
  public var solutions: List<Solution>?
  public var users: List<User>?
  
  public init(id: String = UUID().uuidString,
      name: String,
      address1: String,
      address2: String? = nil,
      city: String,
      postcode: String,
      bucket: String? = nil,
      solutions: List<Solution>? = [],
      users: List<User>? = []) {
      self.id = id
      self.name = name
      self.address1 = address1
      self.address2 = address2
      self.city = city
      self.postcode = postcode
      self.bucket = bucket
      self.solutions = solutions
      self.users = users
  }
}