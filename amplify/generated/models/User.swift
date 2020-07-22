// swiftlint:disable all
import Amplify
import Foundation

public struct User: Model {
  public let id: String
  public var name: String
  public var email: String
  public var tenant: Tenant?
  public var solo: Bool?
  public var memberships: List<UserVersion>?
  public var admin: Bool?
  
  public init(id: String = UUID().uuidString,
      name: String,
      email: String,
      tenant: Tenant? = nil,
      solo: Bool? = nil,
      memberships: List<UserVersion>? = [],
      admin: Bool? = nil) {
      self.id = id
      self.name = name
      self.email = email
      self.tenant = tenant
      self.solo = solo
      self.memberships = memberships
      self.admin = admin
  }
}