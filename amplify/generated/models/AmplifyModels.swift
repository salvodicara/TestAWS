// swiftlint:disable all
import Amplify
import Foundation

// Contains the set of classes that conforms to the `Model` protocol. 

final public class AmplifyModels: AmplifyModelRegistration {
  public let version: String = "51b384f5cf110a65833ad050d7065689"
  
  public func registerModels(registry: ModelRegistry.Type) {
    ModelRegistry.register(modelType: Tenant.self)
    ModelRegistry.register(modelType: Solution.self)
    ModelRegistry.register(modelType: Version.self)
    ModelRegistry.register(modelType: S3ObjectFile.self)
    ModelRegistry.register(modelType: UserVersion.self)
    ModelRegistry.register(modelType: User.self)
  }
}