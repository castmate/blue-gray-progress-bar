//
//  BlueIndicatorImage.h
//  TestCastmateELEMENTS
//
//  Created by Andrew Smales on 2015-06-21.
//  Copyright (c) 2015 Andrew Smales. All rights reserved.
//

// The idea of this class is to create a re-usable progress indicator for the login button and other similar
// bits of the Castmate app. It is approximately sized to fit underneath an iOS7 login button
//
// The extra feature is that the bar does not show up instantly when you click the button, because quite often,
// the app will connect to the server and log in in a split second, and having the progress bar show up for that
// brief time and then disappear feels wrong. I think it's a better idea to delay it for a fraction of a second
// and then display it if there actually is a substantial wait.
//
// Having this delay might seem like the UI isn't as fast in responding as it actually is, and that's a worry, but
// I think the 0.3 second delay probably is hidden by the time it takes the user to remove their finger. Although if that's
// the case, some might say: Why have the delay at all.
//
// The visibleState property is here to track whether the button is showing or not, since during the tiny delay
// before it appears, it technically SHOULD be visible, however it is still hidden, maybe some Schrödinger's cat thing.

#import <UIKit/UIKit.h>

@interface BlueIndicatorImage : UIImageView

@property BOOL visibleState;

-(void) show;
-(void) hide;
-(void) runAnimation;

@end
