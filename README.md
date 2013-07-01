# OTP Authenticator

Two-factor authentication client, with support for HOTP and TOTP. This
is a fork of the original Google Authenticator client for iOS.

## Development

This project uses [CocoaPods](http://cocoapods.org/) to manage
dependencies. To install CocoaPods use

```
gem install cocoapods
```

Once you have CocoaPods installed, you can fetch all dependencies
using

```
pod install
```

You can now open the `OTPAuth.xcworkspace` file in XCode and run the
application.

## Configuration

It is designed to be configured via a URL handler, as follows:

`otpauth://TYPE/LABEL?PARAMETERS`

where TYPE is `hotp` or `totp` and `LABEL` is a human readable label
to help distinguish multiple otp generators.

The supported PARAMETERS are:

```
  algorithm=(SHA1|SHA256|SHA512|MD5)
    OPTIONAL, defaults to SHA1.

  secret=[websafe Base64 encoded secret key, no padding]
    REQUIRED, 128 bits or more.

  digits=(6|8)
    OPTIONAL, defaults to 6.

  counter=N  (hotp specific)
    REQUIRED

  period=N  (totp specific)
    OPTIONAL, defaults to 30.
```

## References

1. HOTP: An HMAC-Based One-Time Password Algorithm
   http://tools.ietf.org/html/rfc4226
2. TOTP: Time-based One-time Password Algorithm
   http://tools.ietf.org/html/draft-mraihi-totp-timebased

## License

Copyright 2013 Rising Oak LLC.
Copyright 2011 Google Inc.

Licensed under the Apache License, Version 2.0 (the "License"); you may not
use this file except in compliance with the License.  You may obtain a copy
of the License at

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS, WITHOUT
WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.  See the
License for the specific language governing permissions and limitations under
the License.
