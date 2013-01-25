//
//  PlaygroundAppDelegate.h
//  iOSPlayground
//
//  Created by Samuel Mullen on 1/25/13.
//  Copyright (c) 2013 Mullen, LLC. All rights reserved.
//

#import <UIKit/UIKit.h>

@class PlaygroundViewController;

@interface PlaygroundAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) PlaygroundViewController *viewController;

@end
