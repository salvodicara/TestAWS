// swiftlint:disable all
import Amplify
import Foundation

extension User {
  // MARK: - CodingKeys 
   public enum CodingKeys: String, ModelKey {
    case id
    case name
    case email
    case tenant
    case solo
    case memberships
    case admin
  }
  
  public static let keys = CodingKeys.self
  //  MARK: - ModelSchema 
  
  public static let schema = defineSchema { model in
    let user = User.keys
    
    model.pluralName = "Users"
    
    model.fields(
      .id(),
      .field(user.name, is: .required, ofType: .string),
      .field(user.email, is: .required, ofType: .string),
      .belongsTo(user.tenant, is: .optional, ofType: Tenant.self, targetName: "tenantID"),
      .field(user.solo, is: .optional, ofType: .bool),
      .hasMany(user.memberships, is: .optional, ofType: UserVersion.self, associatedWith: UserVersion.keys.user),
      .field(user.admin, is: .optional, ofType: .bool)
    )
    }
}