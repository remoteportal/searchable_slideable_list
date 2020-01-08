import Flutter
import UIKit

public class SwiftSearchableSlideableListPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "searchable_slideable_list", binaryMessenger: registrar.messenger())
    let instance = SwiftSearchableSlideableListPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    result("iOS " + UIDevice.current.systemVersion)
  }
}
