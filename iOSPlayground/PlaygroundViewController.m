//
//  PlaygroundViewController.m
//  iOSPlayground
//
//  Created by Samuel Mullen on 1/25/13.
//  Copyright (c) 2013 Mullen, LLC. All rights reserved.
//

#import "PlaygroundViewController.h"

@interface PlaygroundViewController ()

@end

@implementation PlaygroundViewController

- (void)viewDidLoad {
  [super viewDidLoad];
  
  self.playgroundAreaView =
    [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
  
  [self.view addSubview:self.playgroundAreaView];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
