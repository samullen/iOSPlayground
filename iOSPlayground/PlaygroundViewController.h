//
//  PlaygroundViewController.h
//  iOSPlayground
//
//  Created by Samuel Mullen on 1/25/13.
//  Copyright (c) 2013 Mullen, LLC. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PlaygroundViewController : UIViewController <UITableViewDelegate, UITableViewDataSource>

@property (nonatomic, strong) UITableView *playgroundAreaView;
@property (nonatomic, strong) NSArray *playgroundAreas;

@end
