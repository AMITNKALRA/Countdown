//
//  ThirdViewController.m
//  Countdown
//
//  Created by Amit Kalra on 8/31/14.
//  Copyright (c) 2014 Amit Kalra. All rights reserved.
//

#import "ThirdViewController.h"

@interface ThirdViewController ()

@end

@implementation ThirdViewController;

- (void)viewDidLoad {
    
    
    
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    destinatationDate = [NSDate dateWithTimeIntervalSince1970: 1430092800];
    
    timer = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(updateLabel3) userInfo:nil repeats: YES];
    
    
}

-(void)updateLabel3 {
    
    
        
    
    /******** 2 ********/
    
    NSCalendar *calender = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
    
    /******** 3 ********/
    
    int units = NSCalendarUnitDay | NSCalendarUnitHour | NSCalendarUnitMinute | NSCalendarUnitSecond;
    
    /******** 4 ********/
    
    NSDateComponents *components = [calender components:units fromDate:[NSDate date] toDate: destinatationDate options:0];
    
    /******** 5 ********/
    
    [countdownLabel3 setText:[NSString stringWithFormat:@"%ld%c:%ld%c:%ld%c:%ld%c", (long)[components day], 'd', (long)[components hour], 'h', (long)[components minute], 'm', (long)[components second], 's']];
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

