//
//  FirstViewController.m
//  MDFWeekFour
//
//  Created by Steven Roseman on 2/24/14.
//  Copyright (c) 2014 Steven Roseman. All rights reserved.
//

#import "FirstViewController.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

- (void)viewDidLoad
{
    
    
    url = [[NSURL alloc]initWithString:@"feed://rss.nytimes.com/services/xml/rss/nyt/World.xml"];
    
    NSData *xmlData = [self GetFileDataFromFile:@"medical.xml"];
    
    NSXMLParser *parser = [[NSXMLParser alloc]initWithData:xmlData];
    if (parser != nil)
    {
        [parser setDelegate:self];
        [parser parse];
    }
  
    
    medicalNewsRequest = [[NSURLRequest alloc]initWithURL:url];
    medicalNewsConnection =  [[NSURLConnection alloc]initWithRequest:medicalNewsRequest delegate:self];
    medicalNewsRequestedData = [NSMutableData data];
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)parser:(NSXMLParser *)parser didStartElement:(NSString *)elementName namespaceURI:(NSString *)namespaceURI qualifiedName:(NSString *)qName attributes:(NSDictionary *)attributeDict
{
    if ([elementName isEqualToString:@"META"])
    {
        NSString *numItemString = [attributeDict valueForKey:@"name"];
        if (numItemString != nil)
        {
            
        }
        
    }
        
}

- (void)connection:(NSURLConnection *)connection didReceiveData:(NSData *)data
{
    if (data != nil)
    {
        [medicalNewsRequestedData appendData:data];
    }
}

- (void)connectionDidFinishLoading:(NSURLConnection *)connection
{
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, true);
    NSString *documentsDirectory = [paths objectAtIndex:0];
    if (documentsDirectory != nil)
    {
        NSString *fullPath = [[NSString alloc]initWithFormat:@"%@/%@", documentsDirectory, @"medical.xml"];
        if (fullPath != nil)
        {
            [medicalNewsRequestedData writeToFile:fullPath atomically:true];
        }
    }
    
    NSString *medicalNewsString = [[NSString alloc]initWithData:medicalNewsRequestedData encoding:NSASCIIStringEncoding];
    if (medicalNewsString != nil)
    {
        NSLog(@"%@", medicalNewsString);
    }
}

-(NSData*)GetFileDataFromFile:(NSString*)filename
{
    NSString *filePath = nil;
    
    //creae the filemanager
    NSFileManager *fileManager = [NSFileManager defaultManager];
    
    //get the path to the application documents directory
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, true);
    NSString *docuemntsDirectory = [paths objectAtIndex:0];
    
    //create the fullpath to the data file
    filePath = [docuemntsDirectory stringByAppendingPathComponent:filename];
    
    //does the path and filename exist?
    
    if ([fileManager fileExistsAtPath:filePath])
    {
        return  [NSData dataWithContentsOfFile:filePath];
    }
    return nil;
}



- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
