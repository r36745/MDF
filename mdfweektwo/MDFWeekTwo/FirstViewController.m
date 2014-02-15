//
//  FirstViewController.m
//  MDFWeekTwo
//
//  Created by Steven Roseman on 2/10/14.
//  Copyright (c) 2014 Steven Roseman. All rights reserved.
//

#import "FirstViewController.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

-(IBAction)back:(UIStoryboardSegue *)segue
{
    [self.navigationController popToRootViewControllerAnimated:YES];
}


- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
