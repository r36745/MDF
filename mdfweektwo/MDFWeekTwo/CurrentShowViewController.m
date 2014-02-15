//
//  CurrentShowViewController.m
//  MDFWeekTwo
//
//  Created by Steven Roseman on 2/11/14.
//  Copyright (c) 2014 Steven Roseman. All rights reserved.
//

#import "CurrentShowViewController.h"
#import "SecondViewController.h"

@interface CurrentShowViewController ()

@end

@implementation CurrentShowViewController


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
	// Do any additional setup after loading the view.
}



-(void)viewWillAppear:(BOOL)animated
{
    NSString *urlString = self.currentShow.tvShowUrl;
    showTextView.text = [self.currentShow.showDetails stringByAppendingString:urlString];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
