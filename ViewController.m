//
//  ViewController.m
//  ParkHour
//
//  Created by Thomas Belluscio on 3/14/15.
//  Copyright (c) 2015 LokBell. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
- (void)updateDisplay;

@end
@implementation ViewController

enum screenState {IDLE,PARKMENU,PARKMENU_TIMED,PARKED};
int screenState;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.view layoutIfNeeded];
    screenState=IDLE;
    [self updateDisplay];
    [self.view layoutIfNeeded];
    /*[UIView animateWithDuration:.5 animations:^{
     [self.view layoutIfNeeded]; // Called on parent view
    }];*/
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//**************************************
// PARK MENU FUNCTIONS
//**************************************
- (IBAction)parkButtonPress:(id)sender {
    screenState=PARKMENU;
    [self updateDisplay];
    [self.view layoutIfNeeded];
}

- (IBAction)timedSwitchChange:(id)sender {
    if(_timedSwitch.isOn)
        [_timePicker setCountDownDuration:0];
    [self.view layoutIfNeeded];
    [self updateDisplay];
    [self.view layoutIfNeeded];
}

- (void)updateDisplay {
    switch (screenState) {
        case IDLE:
            _parkMenuHeight.constant=0;
            _timePickerHeight.constant=0;
            break;
        case PARKMENU:
            if(_timedSwitch.isOn)
            {
                _parkMenuHeight.constant=220;
                _timePickerHeight.constant=80;
            }
            else
            {
                _timePickerHeight.constant=0;
                _parkMenuHeight.constant=220-49;
            }
            
            break;
        case PARKED:
            break;
        default:
            break;
    };
}

@end
