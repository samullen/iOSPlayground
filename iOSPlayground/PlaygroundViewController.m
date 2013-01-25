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

  @synthesize playgroundAreas;

- (void)viewDidLoad {
  [super viewDidLoad];
  
  playgroundAreas = @[
    [NSDictionary dictionaryWithObjectsAndKeys:
     @"Tab Bar", @"label", @"Playing with the Tab Bar", @"description", nil],
  ];
  
  self.view.backgroundColor = [UIColor whiteColor];
  
  self.playgroundAreaView =
    [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
  
  self.playgroundAreaView.dataSource = self;
  
  self.playgroundAreaView.autoresizingMask =
    UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
  
  [self.view addSubview:self.playgroundAreaView];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)tableView:(UITableView *)tableView
 numberOfRowsInSection:(NSInteger)section
{
  return [self.playgroundAreas count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView
         cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
  UITableViewCell* result = nil;
  
  if ([tableView isEqual:self.playgroundAreaView]) {
    static NSString *CellIdentifier = @"playgroundCells";
    
    result = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    if (result == nil) {
      result = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle
                                      reuseIdentifier:CellIdentifier];
    }
    
    NSDictionary* playgroundArea = self.playgroundAreas[indexPath.row];

    result.textLabel.text = [NSString stringWithFormat:@"%@", [playgroundArea objectForKey:@"label"]];
    result.detailTextLabel.text = [NSString stringWithFormat:@"%@", [playgroundArea objectForKey:@"description"]];
  }

  return result;
}

@end
