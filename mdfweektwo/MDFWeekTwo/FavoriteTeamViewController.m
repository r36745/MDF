//
//  FavoriteTeamViewController.m
//  MDFWeekTwo
//
//  Created by Steven Roseman on 2/14/14.
//  Copyright (c) 2014 Steven Roseman. All rights reserved.
//

#import "FavoriteTeamViewController.h"
#import "FavoriteTeamClass.h"

@interface FavoriteTeamViewController ()
@property (strong, nonatomic) IBOutlet UILabel *teamLabel;
@property (strong, nonatomic) IBOutlet UILabel *teamDetailsLabel;
@property (strong, nonatomic) IBOutlet UIImageView *FavortieTeamView;
@end

@implementation FavoriteTeamViewController
@synthesize favoriteTeam, FavortieTeamView, teamDetailsLabel, teamLabel;



- (id)init
{
    self = [super init];
    if (self) {
        
        // Custom initialization
    }
    return self;
}



- (void)viewDidLoad
{
    FavoriteTeamClass *team1 = [[FavoriteTeamClass alloc]init];
    team1.myTeamLabel = @"Washington Football";
    team1.sportsTeamDetail = @"Teamn in transition, needs help \n on both sides of the ball";
    team1.teamImage = [UIImage imageNamed:@"washingtonFootball.jpeg"];
    
    FavoriteTeamClass *team2 = [[FavoriteTeamClass alloc]init];
    team2.myTeamLabel = @"Washington Wizards";
    team2.sportsTeamDetail = @"Young but learning\n potential playoff team";
    team2.teamImage= [UIImage imageNamed:@"wizards.jpg"];
    
    FavoriteTeamClass *team3 = [[FavoriteTeamClass alloc]init];
    team3.myTeamLabel = @"Washington Capitals";
    team3.sportsTeamDetail = @"Team poised to win Stanley Cup";
    team3.teamImage = [UIImage imageNamed:@"capitals.jpg"];
    
    teamArray = [NSArray arrayWithObjects:team1, team2, team3, nil];
    
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (IBAction)push
{
    if ([teamArray count] > 0)
    {
        FavortieTeamView.image = self.favoriteTeam.teamImage;
        teamLabel.text = self.favoriteTeam.myTeamLabel;
        teamDetailsLabel.text = self.favoriteTeam.sportsTeamDetail;
        
    }
    
    
}

-(void)viewWillAppear:(BOOL)animated
{
    
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
