// swiftlint:disable all
import Amplify
import Foundation

extension Solution {
  // MARK: - CodingKeys 
   public enum CodingKeys: String, ModelKey {
    case id
    case name
    case versions
    case link
    case ownerUser
    case tenant
  }
  
  public static let keys = CodingKeys.self
  //  MARK: - ModelSchema 
  
  public static let schema = defineSchema { model in
    let solution = Solution.keys
    
    model.pluralName = "Solutions"
    
    model.fields(
      .id(),
      .field(solution.name, is: .required, ofType: .string),
      .hasMany(solution.versions, is: .optional, ofType: Version.self, associatedWith: Version.keys.solution),
      .field(solution.link, is: .optional, ofType: .string),
      .field(solution.ownerUser, is: .required, ofType: .string),
      .belongsTo(solution.tenant, is: .required, ofType: Tenant.self, targetName: "tenantID")
    )
    }
}