Pod::Spec.new do |spec|
  spec.name         = "OpenCVXF"
  spec.version      = "4.3.0"
  spec.summary      = "OpenCV framework"
  spec.description  = "From https://github.com/opencv/opencv"
  spec.homepage     = "https://opencv.org/"
  spec.license      = { :type => '3-clause BSD', :file => 'LICENSE' } 
  spec.author       = "https://opencv.org/"
  spec.source       = { :git => "https://github.com/bakhtiyork/opencv-xf.git" }

  # iOS
  spec.ios.deployment_target = "14.0"
	spec.ios.frameworks = [
    "Accelerate",
    "AssetsLibrary",
    "AVFoundation",
    "CoreGraphics",
    "CoreMedia",
    "CoreVideo",
    "Foundation",
    "QuartzCore",
    "UIKit"
  ]
 
  # OSX
  spec.osx.deployment_target = "11.0"
  spec.osx.frameworks = [
    "Accelerate",
    "AVFoundation",
    "CoreGraphics",
    "CoreMedia",
    "CoreVideo",
    "Foundation",
    "OpenCL",
    "QuartzCore"
  ]

  spec.prepare_command = <<-CMD
    cat opencv2.xcframework.zip.* > opencv2.xcframework.zip
    unzip -o opencv2.xcframework.zip
  CMD

  spec.source_files = "opencv2.xcframework/ios-arm64_armv7/opencv2.framework/Versions/A/Headers/**/*{.h,.hpp}"
  # spec.header_dir = "opencv2"
  # spec.header_mappings_dir = "opencv2.xcframework/ios-arm64_armv7/opencv2.framework/Versions/A/Headers"
  spec.preserve_paths = "opencv2.xcframework"
  spec.vendored_frameworks = "opencv2.xcframework"
  spec.requires_arc = false
  spec.libraries = "c++"
  spec.pod_target_xcconfig = {
      "CLANG_CXX_LANGUAGE_STANDARD" => "c++17",
      "CLANG_CXX_LIBRARY" => "libc++",
  }
end
