import UIKit
import AVFoundation

/// Wrapper around `AVCaptureTorchMode`.
public enum TorchMode {
  case on
  case off
  
  /// Returns the next torch mode.
  var next: TorchMode {
    switch self {
    case .on:
      return .off
    case .off:
      return .on
    }
  }
  
  /// Torch mode image.
  var image: UIImage {
    switch self {
    case .on:
      let origImage = UIImage(named: "flash-on")
      let tintedImage = origImage?.withRenderingMode(.alwaysTemplate)
      
      return tintedImage!
    case .off:
      let origImage = UIImage(named: "flash-off")
      let tintedImage = origImage?.withRenderingMode(.alwaysTemplate)
      
      return tintedImage!
    }
  }
  
  /// Returns `AVCaptureTorchMode` value.
  var captureTorchMode: AVCaptureDevice.TorchMode {
    switch self {
    case .on:
      return .on
    case .off:
      return .off
    }
  }
}
