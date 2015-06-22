//
//  BlueIndicatorImage.m
//  TestCastmateELEMENTS
//
//  Created by Andrew Smales on 2015-06-21.
//  Copyright (c) 2015 Andrew Smales. All rights reserved.
//

#import "BlueIndicatorImage.h"

@implementation BlueIndicatorImage


-(id) initWithCoder:(NSCoder *)aDecoder {
    self = [super initWithCoder:aDecoder];

    self.image = [UIImage imageNamed:@"blue-indicator.png"];
    self.hidden = TRUE;
    return self;
}

-(void) show {
    // Here is where we start the timer and run the animation when it is done (unless we've already hidden it again)

    self.visibleState = YES;
    [NSTimer scheduledTimerWithTimeInterval:0.3 target:self selector:@selector(runAnimation) userInfo:nil repeats:NO];
}

-(void) runAnimation {
    if (self.visibleState) {
        [self setAnimation];
        self.hidden = 0;
    }
}

-(void) hide {
    self.visibleState = NO;
    self.hidden = 1;
}

-(void) setAnimation {

    NSMutableArray *imageNames = [[NSMutableArray alloc] init];
    NSMutableArray *images = [[NSMutableArray alloc] init];
    
    for (int x = 0; x < 28; x++) {
        [imageNames addObject:[NSString stringWithFormat:@"blue-indicator%i",x]];
    }
    for (int x = 0; x < imageNames.count; x++) {
        [images addObject:[UIImage imageNamed:[imageNames objectAtIndex:x]]];
    }
    
    self.animationImages = images;
    self.animationDuration = 0.8;
    self.animationRepeatCount = HUGE_VAL;
    
    [self startAnimating];

}

@end
