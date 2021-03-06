//
//  AlertViewController.m
//  iOSPlayground
//
//  Created by Samuel Mullen on 1/28/13.
//  Copyright (c) 2013 Mullen, LLC. All rights reserved.
//

#import "AlertViewController.h"

@interface AlertViewController ()

@end

@implementation AlertViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
  [super viewDidLoad];

    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)doDismiss:(id)sender {
  NSString *message = @"Are you sure?";
  
  UIAlertView *alertView = [[UIAlertView alloc]
                            initWithTitle:@"Dismiss Alert Page"
                            message: message
                            delegate:self
                            cancelButtonTitle:[self noButtonTitle]
                            otherButtonTitles:[self yesButtonTitle], nil];
  [alertView show];
}

- (NSString *) yesButtonTitle {
  return @"Yes";
}
- (NSString *) noButtonTitle {
  return @"No";
}

- (void)     alertView:(UIAlertView *)alertView
  clickedButtonAtIndex:(NSInteger)buttonIndex
{
  NSString *buttonTitle = [alertView buttonTitleAtIndex:buttonIndex];
  
  if ([buttonTitle isEqualToString:[self yesButtonTitle]]) {
    [self.presentingViewController dismissViewControllerAnimated:YES completion:nil];
  }
}

@end
