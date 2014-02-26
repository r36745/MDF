//
//  FirstViewController.h
//  MDFWeekFour
//
//  Created by Steven Roseman on 2/24/14.
//  Copyright (c) 2014 Steven Roseman. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FirstViewController : UIViewController<NSURLConnectionDataDelegate, NSXMLParserDelegate>

{
    NSURL *url;
    NSURLConnection *medicalNewsConnection;
    NSURLRequest *medicalNewsRequest;
    NSMutableData *medicalNewsRequestedData;
    
    NSInteger *numItems;
}

@end
