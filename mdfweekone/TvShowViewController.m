//
//  TvShowViewController.m
//  MdfWeekOne
//
//  Created by Steven Roseman on 2/6/14.
//  Copyright (c) 2014 Steven Roseman. All rights reserved.
//

#import "TvShowViewController.h"
#import "TvShowCustomCell.h"

@interface TvShowViewController ()

@end

@implementation TvShowViewController

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
    
    tvNameLabel.text = self.currentShow.tvShowName;
    tvDescriptionLabel.text = self.currentShow.tvShowDescription;
    secondImageView.image = self.currentShow.showImage;
    
   
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
