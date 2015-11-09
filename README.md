### PEAR-Indicator-iOS [![GitHub license](https://img.shields.io/badge/LICENSE-MIT%20LICENSE-blue.svg)](https://github.com/HirokiUmatani/PEAR-Indicator-iOS/LICENSE) [![CocoaPods](https://img.shields.io/badge/platform-ios-lightgrey.svg)](https://cocoapods.org/pods/PEAR-Indicator-iOS) [![CocoaPods](https://img.shields.io/cocoapods/v/PEAR-Indicator-iOS.svg)](https://cocoapods.org/pods/PEAR-Indicator-iOS)  

====
### Overview
This ios library will display the cool indicator in something load.

### Demo Screen
![autolayout_demo](http://pear.chat/image/indicator-demo-o.gif)

### Installation
<code>
pod 'PEAR-Indicator-iOS'
</code>

### Usage

#####□import  
``` Objective-C
#import "IndicatorView.h"
```

#####□create instance  

``` Objective−C
IndicatorView *indicator = [[IndicatorView alloc]initWithTarget:self.view // paste the indicator View
                                                     userEnable:YES // It can be touched in the indicator displayed in the other views
                                                        message:@"Now Loading .." // message in the loading
                                                backgroundColor:[UIColor blackColor] // background color of the indicator
                                                      fontColor:[UIColor whiteColor]]; // Text color of the loading message
```

### Document
[document library](http://cocoadocs.org/docsets/PEAR-Indicator-iOS)

### Licence
[MIT](https://github.com/HirokiUmatani/PEAR-Indicator-iOS/blob/master/LICENSE)

### Author
[Hiroki Umatani](https://github.com/HirokiUmatani)
