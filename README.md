SnowFalling
====================

Snow Falling in Swift like a LINE for iOS on Dec 25.

## Demo

![SnowFalling](https://github.com/pixyzehn/SnowFalling/blob/master/Assets/SnowFalling.gif)

## Install

Add the SnowFalling folder (including SnowFallingView.swift) in your project.
Set the kDefaultFlakeFileName as an image file name.

Default values are as follows.

```Swift
let kDefaultFlakeFileName               = "snowflake"
let kDefaultFlakesCount                 = 200
let kDefaultFlakeWidth: Float           = 40.0
let kDefaultFlakeHeight: Float          = 46.0
let kDefaultMinimumSize: Float          = 0.4
let kDefaultMaximumSize: Float          = 0.8
let kDefaultAnimationDurationMin: Float = 6.0
let kDefaultAnimationDurationMax: Float = 12.0
```

According to need, you can adjust other parameter.

```Swift
sfv = SnowFallingView(frame: CGRectMake(0, 0, view.frame.size.width * 2, view.frame.size.height * 2))
sfv?.flakeFileName        = "snowflake"
sfv?.flakesCount          = 100  // Default is 100.
sfv?.flakeWidth           = 40.0 // Default is 40.0
sfv?.flakeHeight          = 46.0 // Default is 46.0
sfv?.flakeMinimumSize     = 0.6  // Default is 0.4
sfv?.flakeMaximumSize     = 0.8  // Default is 0.8
sfv?.animationDurationMin = 6.0  // Default is 6.0
sfv?.animationDurationMax = 12.0 // Default is 12.0
view.addSubview(sfv!)
```

See SnowFalling—Sample project for more information.

## Description

In demo, If you try to tap 3 times(that is triple tap), you can change the status whether snow is falling or not.

I think you cannot see a snowfall for a long time :-c

## Licence

[MIT](https://github.com/pixyzehn/SnowFalling/blob/master/LICENSE)

## Author

[pixyzehn](https://github.com/pixyzehn)
