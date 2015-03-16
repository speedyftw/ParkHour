//
//  ViewController.h
//  ParkHour
//
//  Created by Thomas Belluscio on 3/14/15.
//  Copyright (c) 2015 LokBell. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UISwitch *timedSwitch;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *timePickerHeight;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *parkMenuHeight;
@property (weak, nonatomic) IBOutlet UIDatePicker *timePicker;


@end

