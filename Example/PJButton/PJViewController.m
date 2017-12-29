//
//  PJViewController.m
//  PJButton
//
//  Created by Pratik Jamariya on 12/29/2017.
//  Copyright (c) 2017 Pratik Jamariya. All rights reserved.
//

#import "PJViewController.h"
#import "PJButton.h"

@interface PJViewController ()

@end

@implementation PJViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    [[PJButton appearance] setSpinnerColor:[UIColor blueColor]];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)badgeAction:(PJButton *)sender {
    NSLog(@"Badge Button Action");
    [sender perfrommingBackgroundTask:YES];
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(3 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [sender perfrommingBackgroundTask:NO];
    });
}

- (IBAction)customButtonAction:(PJButton *)sender {
    NSLog(@"Custom Button Action");
}

@end
