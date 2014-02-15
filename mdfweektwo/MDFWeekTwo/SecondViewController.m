//
//  SecondViewController.m
//  MDFWeekTwo
//
//  Created by Steven Roseman on 2/10/14.
//  Copyright (c) 2014 Steven Roseman. All rights reserved.
//

#import "SecondViewController.h"
#import "CustomCell.h"
#import "CurrentShowViewController.h"

@interface SecondViewController ()
@property (strong, nonatomic) IBOutlet UITableView *tvTableView;

@end

@implementation SecondViewController
@synthesize delegate;
@synthesize tvTableView;

- (IBAction)editButton
{
    tvTableView.editing = !tvTableView.isEditing;
}



- (void)viewDidLoad
{
    
    SecondViewClass *tvShow1 = [[SecondViewClass alloc]init];
    
    tvShow1.tvShowName = @"Banshee";
    tvShow1.tvShowDescription = @"Amish Wild West";
    tvShow1.showImage = [UIImage imageNamed:@"banshee.jpg"];
    tvShow1.showDetails = @"After a 15-year stretch, a master thief (Antony Starr) emerges from prison to discover that Anastasia (Ivana Milicevic), his former girlfriend and partner-in-crime, has apparently settled down to motherhood and is married to the DA of the (fictitious) Pennsylvania backwater of Banshee.\n\n";
    tvShow1.tvShowUrl = @"http://search.ebscohost.com.oclc.fullsail.edu:81/login.aspx?direct=true&db=f3h&AN=90486279&site=ehost-live";
    
    SecondViewClass *tvShow2 = [[SecondViewClass alloc]init];
    tvShow2.tvShowName = @"Spartacus";
    tvShow2.tvShowDescription = @"Ancient Rome";
    tvShow2.showImage = [UIImage imageNamed:@"spartacus.jpg"];
    tvShow2.showDetails = @"After losing star Andy Whitfield to cancer, Starz's runaway hit Spartacus faced an uncertain future--but now newcomer Liam McIntyre is stepping in to pick up the sword and give the series a fighting chance.\n\n";
    tvShow2.tvShowUrl = @"http://search.ebscohost.com.oclc.fullsail.edu:81/login.aspx?direct=true&db=f3h&AN=82721024&site=ehost-live";
    
    SecondViewClass *tvShow3 = [[SecondViewClass alloc]init];
    tvShow3.tvShowName = @"Football Game";
    tvShow3.tvShowDescription = @"Wash vs. CowGirls";
    tvShow3.showImage = [UIImage imageNamed:@"washingtonFootball.jpeg"];
    tvShow3.showDetails = @"Other topics include the television program Lost Treasures of NFL Films, the acquisition process for football films by the company for use in its archives, and a discussion regarding the purposes of archives.\n\n";
    tvShow3.tvShowUrl = @"http://search.ebscohost.com.oclc.fullsail.edu:81/login.aspx?direct=true&db=f3h&AN=60073771&site=ehost-live";
    
    SecondViewClass *tvShow4 = [[SecondViewClass alloc]init];
    tvShow4.tvShowName = @"Amish Mafia";
    tvShow4.tvShowDescription = @"Reality show";
    tvShow4.showImage = [UIImage imageNamed:@"amishMafia.jpeg"];
    tvShow4.showDetails = @"The mere title 'Amish Mafia sounds' like parody, a la those Saturday Night Live sketches from the final 30 minutes. And given perhaps the most remarkable disclaimer ever -- the program features dramatic reenactments based on eyewitness accounts, testimonials and the legend of the Amish Mafia -- one might rightfully view this as high camp as opposed to anything remotely approaching reality. By that measure, sister network Discovery's latest attempt to exploit the non-TV-watching Amish is either a shark-jumping example of structured reality hitting its nadir, or in its brazenness, the screwball comedy of 2012.\n\n";
    tvShow4.tvShowUrl = @"http://search.ebscohost.com.oclc.fullsail.edu:81/login.aspx?direct=true&db=f3h&AN=84202486&site=ehost-live";
    
    SecondViewClass *tvShow5 = [[SecondViewClass alloc]init];
    tvShow5.tvShowName = @"The Americans";
    tvShow5.tvShowDescription = @"Russian Spies";
    tvShow5.showImage = [UIImage imageNamed:@"theAmericans.jpg"];
    tvShow5.showDetails = @"MARRIAGE HAS its share of challenges, but it's safe to presume that government espionage, brutal torture, and hand-to-hand combat aren't issues that affect typical couples. For The Americans' undercover KGB agents Philip (Matthew Rhys) and Elizabeth Jennings (Keri Russell), though, those things are all on the daily to-do list. The thrill of the series, created by former CIA agent Joe Weisberg, is in watching the Jenningses maintain their 1980s suburban charade while living across the street from an FBI agent (Noah Emmerich) whose job is to uncover the Russians in our midst. Plus, they get to wear elaborate costumes and kick serious ass—it is a spy show, after all. The second season of the FX drama, premiering Feb. 26 at 10 p.m., will find the couple struggling to protect their two young children from their increasingly dangerous jobs.\n\n";
    tvShow5.tvShowUrl = @"http://search.ebscohost.com.oclc.fullsail.edu:81/login.aspx?direct=true&db=f3h&AN=94317915&site=ehost-live";
    
    tvShowArray = [[NSMutableArray alloc]initWithObjects:tvShow1, tvShow2, tvShow3, tvShow4, tvShow5, nil];
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [tvShowArray count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    CustomCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cusCell"];
    if (cell != nil)
    {
        SecondViewClass *currentShow = [tvShowArray objectAtIndex:indexPath.row];
        [cell updateCellWithShow:currentShow.tvShowName secondString:currentShow.tvShowDescription cellImage:nil];
    }
    return cell;
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    CurrentShowViewController *currentShowViewController = segue.destinationViewController;
    if (currentShowViewController != nil)
    {
        UITableViewCell *cell = (UITableViewCell*)sender;
        NSIndexPath *indexPath = [tvTableView indexPathForCell:cell];
        
        SecondViewClass *secondViewClass = [tvShowArray objectAtIndex:indexPath.row];
        
        currentShowViewController.currentShow = secondViewClass;
        
    }
    
}

-(IBAction)onBack:(UIStoryboardSegue*)segue
{
    
}

- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete)
    {
        [tvShowArray removeObjectAtIndex:indexPath.row];
        [tableView deleteRowsAtIndexPaths:[NSArray arrayWithObject:indexPath] withRowAnimation:UITableViewRowAnimationAutomatic];
    }
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
