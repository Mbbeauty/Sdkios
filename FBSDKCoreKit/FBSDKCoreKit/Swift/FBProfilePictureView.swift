// Copyright (c) 2016-present, Facebook, Inc. All rights reserved.
//
// You are hereby granted a non-exclusive, worldwide, royalty-free license to use,
// copy, modify, and distribute this software in source code or binary form for use
// in connection with the web services and APIs provided by Facebook.
//
// As with any software that integrates with the Facebook platform, your use of
// this software is subject to the Facebook Developer Principles and Policies
// [http://developers.facebook.com/policy/]. This copyright notice shall be
// included in all copies or substantial portions of the software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS
// FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
// COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER
// IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
// CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

import Foundation
import UIKit

// Need to treat ObjC as separate dependency for SPM because it does not
// support mixed Swift and ObjC sources.
#if SWIFT_PACKAGE
import FBSDKCoreKitObjC
#endif

/**
 FBProfilePictureView Extension
 */
public extension FBProfilePictureView {
  /**
   Create a new instance of `UserProfilePictureView`.

   - Parameter frame: Optional frame rectangle for the view, measured in points.
   - Parameter profile: Optional profile to display a picture for. Default: `UserProfile.current`.
   */
  convenience init(frame: CGRect = .zero, profile: Profile? = nil) {
    self.init(frame: frame)

    if let profile = profile {
      profileID = profile.userID
    }

    autoresizingMask = [.flexibleWidth, .flexibleHeight]
    setNeedsImageUpdate()
  }
}
