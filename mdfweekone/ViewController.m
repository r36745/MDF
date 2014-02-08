//
//  ViewController.m
//  MdfWeekOne
//
//  Created by Steven Roseman on 2/6/14.
//  Copyright (c) 2014 Steven Roseman. All rights reserved.
//

#import "ViewController.h"
#import "TvShowViewController.h"
#import "TvCustomClass.h"
#import "TvShowCustomCell.h"

@interface ViewController ()

@property (strong, nonatomic) IBOutlet UITableView *tvTableView;

@end

@implementation ViewController
@synthesize tvTableView;

- (IBAction)editButton {
    
    tvTableView.editing = !tvTableView.isEditing;
}



- (void)viewDidLoad
{
    TvCustomClass *tvShow1 = [[TvCustomClass alloc]init];
    
    tvShow1.tvShowName = @"Banshee";
    tvShow1.tvShowDescription = @"Amish Wild West";
    tvShow1.showImage = [UIImage imageNamed:@"banshee.jpg"];
    
    TvCustomClass *tvShow2 = [[TvCustomClass alloc]init];
    tvShow2.tvShowName = @"Spartacus";
    tvShow2.tvShowDescription = @"Ancient Rome";
    tvShow2.showImage = [UIImage imageNamed:@"spartacus.jpg"];
    
    TvCustomClass *tvShow3 = [[TvCustomClass alloc]init];
    tvShow3.tvShowName = @"Football Game";
    tvShow3.tvShowDescription = @"Wash vs. CowGirls";
    tvShow3.showImage = [UIImage imageNamed:@"washingtonFootball.jpeg"];
    
    TvCustomClass *tvShow4 = [[TvCustomClass alloc]init];
    tvShow4.tvShowName = @"Amish Mafia";
    tvShow4.tvShowDescription = @"Reality show";
    tvShow4.showImage = [UIImage imageNamed:@"amishMafia.jpeg"];
    
    TvCustomClass *tvShow5 = [[TvCustomClass alloc]init];
    tvShow5.tvShowName = @"The Americans";
    tvShow5.tvShowDescription = @"Russian Spies";
    tvShow5.showImage = [UIImage imageNamed:@"theAmericans.jpg"];
    
    TvCustomClass *tvShow6 = [[TvCustomClass alloc]init];
    tvShow6.tvShowName = @"Bates Motel";
    tvShow6.tvShowDescription = @"Alfred Hitchcock Bates Motel";
    tvShow6.showImage = [UIImage imageNamed:@"batesMotel.jpeg"];
    
    TvCustomClass *tvShow7 = [[TvCustomClass alloc]init];
    tvShow7.tvShowName = @"Bar Rescue";
    tvShow7.tvShowDescription = @"Saves bars ";
    tvShow7.showImage = [UIImage imageNamed:@"barRescue.jpg"];
    
    TvCustomClass *tvShow8 = [[TvCustomClass alloc]init];
    tvShow8.tvShowName = @"Return of the Dead";
    tvShow8.tvShowDescription = @"Zombies ";
    tvShow8.showImage = [UIImage imageNamed:@"returnDead.jpeg"];
    
    TvCustomClass *tvShow9 = [[TvCustomClass alloc]init];
    tvShow9.tvShowName = @"Entourage";
    tvShow9.tvShowDescription = @"Superstar & friends";
    tvShow9.showImage = [UIImage imageNamed:@"entourage.jpeg"];
    
    TvCustomClass *tvShow10 = [[TvCustomClass alloc]init];
    tvShow10.tvShowName = @"Black Sails";
    tvShow10.tvShowDescription = @"Pirates for money";
    tvShow10.showImage = [UIImage imageNamed:@"blackSails.gif"];
    
    TvCustomClass *tvShow11 = [[TvCustomClass alloc]init];
    tvShow11.tvShowName = @"Magic City";
    tvShow11.tvShowDescription = @"Mobsters in Miami";
    tvShow11.showImage = [UIImage imageNamed:@"magicCity.jpeg"];
    
    TvCustomClass *tvShow12 = [[TvCustomClass alloc]init];
    tvShow12.tvShowName = @"Luck";
    tvShow12.tvShowDescription = @"Mobsters and horse gambling";
    tvShow12.showImage = [UIImage imageNamed:@"luck.jpeg"];
    
    TvCustomClass *tvShow13 = [[TvCustomClass alloc]init];
    tvShow13.tvShowName = @"Scooby Doo";
    tvShow13.tvShowDescription = @"Mystery Cartoon";
    tvShow13.showImage = [UIImage imageNamed:@"scoobyDoo.jpeg"];
    
    TvCustomClass *tvShow14 = [[TvCustomClass alloc]init];
    tvShow14.tvShowName = @"Dirty Jobs";
    tvShow14.tvShowDescription = @"Grooling jobs";
    tvShow14.showImage = [UIImage imageNamed:@"dirtyjobs.jpg"];
    
    TvCustomClass *tvShow15 = [[TvCustomClass alloc]init];
    tvShow15.tvShowName = @"The Real Husbands of Hollywood";
    tvShow15.tvShowDescription = @"Parody of HouseWivesShow";
    tvShow15.showImage = [UIImage imageNamed:@"realHusbands.jpeg"];
    
    TvCustomClass *tvShow16 = [[TvCustomClass alloc]init];
    tvShow16.tvShowName = @"HomeLand";
    tvShow16.tvShowDescription = @"CIA fighting Terrorism";
    tvShow16.showImage = [UIImage imageNamed:@"homeland.jpeg"];
    
    TvCustomClass *tvShow17 = [[TvCustomClass alloc]init];
    tvShow17.tvShowName = @"StrikeBack";
    tvShow17.tvShowDescription = @"British Intelligence";
    tvShow17.showImage = [UIImage imageNamed:@"strikeBack.jpeg"];
    
    TvCustomClass *tvShow18 = [[TvCustomClass alloc]init];
    tvShow18.tvShowName = @"TrueBlood";
    tvShow18.tvShowDescription = @"Vampires in the Bayou";
    tvShow18.showImage = [UIImage imageNamed:@"trueBlood.jpeg"];
    
    TvCustomClass *tvShow19 = [[TvCustomClass alloc]init];
    tvShow19.tvShowName = @"Modern Family";
    tvShow19.tvShowDescription = @"Family Comedy";
    tvShow19.showImage = [UIImage imageNamed:@"modernFamily.jpeg"];
    
    TvCustomClass *tvShow20 = [[TvCustomClass alloc]init];
    tvShow20.tvShowName = @"Moonshiners";
    tvShow20.tvShowDescription = @"Reality, moonshing";
    tvShow20.showImage = [UIImage imageNamed:@"moonshiners.jpeg"];
    
    TvCustomClass *tvShow21 = [[TvCustomClass alloc]init];
    tvShow21.tvShowName = @"The Amazing Race";
    tvShow21.tvShowDescription = @"Race around the world";
    tvShow21.showImage = [UIImage imageNamed:@"amazingRace.jpeg"];
    
    //Tv Show Objects in the array
    tvShowArray = [[NSMutableArray alloc] initWithObjects: tvShow1, tvShow2, tvShow3, tvShow4, tvShow5, tvShow6, tvShow7, tvShow8, tvShow9, tvShow10, tvShow11, tvShow12, tvShow13, tvShow14, tvShow15, tvShow16, tvShow17, tvShow18, tvShow19, tvShow20, tvShow21
                   , nil];
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    
    return [tvShowArray count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
   
    TvShowCustomCell *cell = [tableView dequeueReusableCellWithIdentifier:@"tvShowCell"];
    if (cell != nil)
    {
        TvCustomClass *currentShow = [tvShowArray objectAtIndex:indexPath.row];
        [cell updateCellWithShow:currentShow.tvShowName secondString:currentShow.tvShowDescription cellImage:currentShow.showImage];
      
    }
    return cell;
}

//this is for passing details to tv View Controller
-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    TvShowViewController *tvShowViewController = segue.destinationViewController;
    if ( tvShowViewController != nil)
    {
        UITableViewCell *cell = (UITableViewCell*)sender;
        NSIndexPath *indexPath = [tvTableView indexPathForCell:cell];
        
        TvCustomClass *currentShow = [tvShowArray objectAtIndex:indexPath.row];
        
        
        tvShowViewController.currentShow = currentShow;
        
        
    }
}

- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete)
    {
        [tvShowArray removeObjectAtIndex:indexPath.row];
        [tableView deleteRowsAtIndexPaths:[NSArray arrayWithObject:indexPath] withRowAnimation:UITableViewRowAnimationAutomatic];
    }
}

-(IBAction)back:(UIStoryboardSegue*)segue
{
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
