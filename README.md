# OpenCV xcframework cocoapod
It's a temporary repo until xcframework will be supported in official OpenCV cocoapod.

## Building opencv2.xcframework
```
git clone https://github.com/opencv/opencv.git
python3 opencv/platforms/apple/build_xcframework.py --out ./build_xcframework
```
Grab a coffee, because you'll be here for a while.

## Usage
Add to your Podfile
```
pod 'OpenCVXF', :git => 'https://github.com/bakhtiyork/opencv-xf.git'

```