//
//  ViewController.m
//  Countdown
//
//  Created by Amit Kalra on 8/26/14.
//  Copyright (c) 2014 Amit Kalra. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController;

- (void)viewDidLoad {
    
    
    
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    destinatationDate = [NSDate dateWithTimeIntervalSince1970: 1433782800];
    
    timer = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(updateLabel2) userInfo:nil repeats: YES];
    
    
}

-(void)updateLabel2 {
    
    
        
    
    /******** 2 ********/
    
    NSCalendar *calender = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
    
    /******** 3 ********/
    
    int units = NSCalendarUnitDay | NSCalendarUnitHour | NSCalendarUnitMinute | NSCalendarUnitSecond;
    
    /******** 4 ********/
    
    NSDateComponents *components = [calender components:units fromDate:[NSDate date] toDate: destinatationDate options:0];
    
    /******** 5 ********/
    
    [countdownLabel2 setText:[NSString stringWithFormat:@"%ld%c:%ld%c:%ld%c:%ld%c", (long)[components day], 'd', (long)[components hour], 'h', (long)[components minute], 'm', (long)[components second], 's']];
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
