// swiftlint:disable all
import Amplify
import Foundation

extension Tenant {
  // MARK: - CodingKeys 
   public enum CodingKeys: String, ModelKey {
    case id
    case name
    case address1
    case address2
    case city
    case postcode
    case bucket
    case solutions
    case users
  }
  
  public static let keys = CodingKeys.self
  //  MARK: - ModelSchema 
  
  public static let schema = defineSchema { model in
    let tenant = Tenant.keys
    
    model.pluralName = "Tenants"
    
    model.fields(
      .id(),
      .field(tenant.name, is: .required, ofType: .string),
      .field(tenant.address1, is: .required, ofType: .string),
      .field(tenant.address2, is: .optional, ofType: .string),
      .field(tenant.city, is: .required, ofType: .string),
      .field(tenant.postcode, is: .required, ofType: .string),
      .field(tenant.bucket, is: .optional, ofType: .string),
      .hasMany(tenant.solutions, is: .optional, ofType: Solution.self, associatedWith: Solution.keys.tenant),
      .hasMany(tenant.users, is: .optional, ofType: User.self, associatedWith: User.keys.tenant)
    )
    }
}