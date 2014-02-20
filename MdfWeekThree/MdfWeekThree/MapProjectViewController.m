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

@interface MapProjectViewController ()

@end

@implementation MapProjectViewController
@synthesize allBusinessArray;


- (void)viewDidLoad
{
    MapProjectClass *mapProject1 = [[MapProjectClass alloc]init];
    mapProject1.businessName = @"Sextyles";
    mapProject1.businessLocation = CLLocationCoordinate2DMake(38.940481, -76.829230);
    
    
    
    MapProjectClass *mapProject2 = [[MapProjectClass alloc]init];
    mapProject2.businessName = @"Bad Daddy Burger Bar";
    mapProject2.businessLocation = CLLocationCoordinate2DMake(35.198931, -80.840924);
    
    MapProjectClass *mapProject3 = [[MapProjectClass alloc]init];
    mapProject3.businessName = @"Panthers Stadium";
    mapProject3.businessLocation = CLLocationCoordinate2DMake(35.225629, -80.852740);
    
    allBusinessArray = [[NSMutableArray alloc]initWithObjects:mapProject1, mapProject2, mapProject3, nil];

     
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

-(void)viewDidAppear:(BOOL)animated
{
    
    
    
    
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    DetailViewController *detailView = segue.destinationViewController;
    if (detailView != nil)
    {
        UITableViewCell *cell = (UITableViewCell*)sender;
        NSIndexPath *indexPath = [mapTableView indexPathForCell:cell];
        
        MapProjectClass *mapProject =[allBusinessArray objectAtIndex:indexPath.row];
        
        detailView.currentSpotOnMap = mapProject;
        
    }
    
    
}

- (void)locationManager:(CLLocationManager *)manager
	 didUpdateLocations:(NSArray *)locations
{
   
    
    
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
        [cell updateCellWithMapInfo:projectClass.businessName secondString:nil];
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
