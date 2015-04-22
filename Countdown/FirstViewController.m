//
//  ViewController.m
//  Countdown
//
//  Created by Amit Kalra on 8/26/14.
//  Copyright (c) 2014 Amit Kalra. All rights reserved.
//

#import "FirstViewController.h"

@interface FirstViewController ()

@end

@implementation FirstViewController
            
- (void)viewDidLoad {
    
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
  
    
    destinatationDate = [NSDate dateWithTimeIntervalSince1970: 1429887600];
    timer = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(updateLabel) userInfo:nil repeats: YES];
    
    
}




- (void)updateLabel {
    
       
    
    /******** 2 ********/
    
    NSCalendar *calender = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
    
    /******** 3 ********/
    
    int units = NSCalendarUnitDay | NSCalendarUnitHour | NSCalendarUnitMinute | NSCalendarUnitSecond;

    
    /******** 4 ********/
    
    NSDateComponents *components = [calender components:units fromDate:[NSDate date] toDate: destinatationDate options:0];
    
    /******** 5 ********/
    
    [countdownLabel setText:[NSString stringWithFormat:@"%ld%c:%ld%c:%ld%c:%ld%c", (long)[components day], 'd', (long)[components hour], 'h', (long)[components minute], 'm', (long)[components second], 's']];
    
    

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)Swipe:(id)sender {
    
    [self.navigationController popToRootViewControllerAnimated:YES];
    
}

@end
