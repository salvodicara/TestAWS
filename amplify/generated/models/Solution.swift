// swiftlint:disable all
import Amplify
import Foundation

public struct Solution: Model {
  public let id: String
  public var name: String
  public var versions: List<Version>?
  public var link: String?
  public var ownerUser: String
  public var tenant: Tenant
  
  public init(id: String = UUID().uuidString,
      name: String,
      versions: List<Version>? = [],
      link: String? = nil,
      ownerUser: String,
      tenant: Tenant) {
      self.id = id
      self.name = name
      self.versions = versions
      self.link = link
      self.ownerUser = ownerUser
      self.tenant = tenant
  }
}