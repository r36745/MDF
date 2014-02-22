//
//  MapProjectViewController.m
//  MdfWeekThree
//
//  Created by Steven Roseman on 2/18/14.
//  Copyright (c) 2014 Steven Roseman. All rights reserved.
//

#import "MapProjectViewController.h"
#import "MapProjectCell.h"
#import "MapProjectClass.h"
#import "DetailViewController.h"
#import "BusinessDetailViewController.h"

@interface MapProjectViewController ()

@end

@implementation MapProjectViewController
@synthesize allBusinessArray;


- (void)viewDidLoad
{
    MapProjectClass *mapProject1 = [[MapProjectClass alloc]init];
    mapProject1.businessName = @"Discovery Place";
    mapProject1.businessLocation = CLLocationCoordinate2DMake(35.229601, -80.840927);

    
    MapProjectClass *mapProject2 = [[MapProjectClass alloc]init];
    mapProject2.businessName = @"Bad Daddy Burger Bar";
    mapProject2.businessLocation = CLLocationCoordinate2DMake(35.198931, -80.840924);
    
    MapProjectClass *mapProject3 = [[MapProjectClass alloc]init];
    mapProject3.businessName = @"Panthers Stadium";
    mapProject3.businessLocation = CLLocationCoordinate2DMake(35.225629, -80.852740);
    
    MapProjectClass *mapProject4 = [[MapProjectClass alloc]init];
    mapProject4.businessName = @"Carowinds";
    mapProject4.businessLocation = CLLocationCoordinate2DMake(35.103234, -80.943768);
    
    MapProjectClass *mapProject5 = [[MapProjectClass alloc]init];
    mapProject5.businessName = @"BounceU";
    mapProject5.businessLocation = CLLocationCoordinate2DMake(35.353327, -80.839032);
    
    MapProjectClass *mapProject6 = [[MapProjectClass alloc]init];
    mapProject6.businessName = @"Victory Lane";
    mapProject6.businessLocation = CLLocationCoordinate2DMake(35.271145, -80.842316);
    
    MapProjectClass *mapProject7 = [[MapProjectClass alloc]init];
    mapProject7.businessName = @"US National WhiteWater Center";
    mapProject7.businessLocation = CLLocationCoordinate2DMake(35.272425, -81.005258);
    
    MapProjectClass *mapProject8 = [[MapProjectClass alloc]init];
    mapProject8.businessName = @"Nascar Hall Of Fame";
    mapProject8.businessLocation = CLLocationCoordinate2DMake(35.221324, -80.843409);
    
    MapProjectClass *mapProject9 = [[MapProjectClass alloc]init];
    mapProject9.businessName = @"Great Wolf Lodge";
    mapProject9.businessLocation = CLLocationCoordinate2DMake(35.361429, -80.711684);
    
    MapProjectClass *mapProject10 = [[MapProjectClass alloc]init];
    mapProject10.businessName = @"ImaginOn";
    mapProject10.businessLocation = CLLocationCoordinate2DMake(35.227223, -80.837735);

    allBusinessArray = [[NSMutableArray alloc]initWithObjects:mapProject1, mapProject2, mapProject3,mapProject4, mapProject5, mapProject6, mapProject7, mapProject8, mapProject9, mapProject10, nil];
    
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}


-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier isEqualToString:@"indieBusiness"])
    {
        DetailViewController *detailView = segue.destinationViewController;
        if (detailView != nil)
        {
            UITableViewCell *cell = (UITableViewCell*)sender;
            NSIndexPath *indexPath = [mapTableView indexPathForCell:cell];
            
            MapProjectClass *mapProject =[allBusinessArray objectAtIndex:indexPath.row];
            
            detailView.currentSpotOnMap = mapProject;
            
            
            
        }
        
    } else if ([segue.identifier isEqualToString:@"allBusiness"])
    {
        BusinessDetailViewController *businessDetail = segue.destinationViewController;
        if (businessDetail != nil)
        {
            businessDetail.totalBusiness = allBusinessArray;
           
        }
        
    }
    
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [allBusinessArray count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    MapProjectCell *cell = [tableView dequeueReusableCellWithIdentifier:@"businessCell"];
    if (cell != nil)
    {
        MapProjectClass *projectClass = [allBusinessArray objectAtIndex:indexPath.row];
        [cell updateCellWithMapInfo:projectClass.businessName];
    }
    
    return cell;
}



- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)allBusinessButton {
    
}
@end
