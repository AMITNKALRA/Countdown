//
//  TodayViewController.m
//  NC Countdown
//
//  Created by Amit Kalra on 3/1/15.
//  Copyright (c) 2015 Amit Kalra. All rights reserved.
//

#import "TodayViewController.h"
#import <NotificationCenter/NotificationCenter.h>

@interface TodayViewController () <NCWidgetProviding>

@end

@implementation TodayViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    destinatationDateNC = [NSDate dateWithTimeIntervalSince1970: 1428692400];
    timerNC = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(updateLabelNC) userInfo:nil repeats: YES];
    
}

- (void)updateLabelNC {
    
    
    
    /******** 2 ********/
    
    NSCalendar *calender = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
    
    /******** 3 ********/
    
    int units = NSCalendarUnitDay | NSCalendarUnitHour | NSCalendarUnitMinute | NSCalendarUnitSecond;
    
    
    /******** 4 ********/
    
    NSDateComponents *components = [calender components:units fromDate:[NSDate date] toDate: destinatationDateNC options:0];
    
    /******** 5 ********/
    
    [countdownLabelNC setText:[NSString stringWithFormat:@"%ld%c:%ld%c:%ld%c:%ld%c", (long)[components day], 'd', (long)[components hour], 'h', (long)[components minute], 'm', (long)[components second], 's']];
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)widgetPerformUpdateWithCompletionHandler:(void (^)(NCUpdateResult))completionHandler {
    // Perform any setup necessary in order to update the view.
    
    // If an error is encountered, use NCUpdateResultFailed
    // If there's no update required, use NCUpdateResultNoData
    // If there's an update, use NCUpdateResultNewData

    completionHandler(NCUpdateResultNewData);
}

@end
