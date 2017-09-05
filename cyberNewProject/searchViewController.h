//
//  searchViewController.h
//  cyberNewProject
//
//  Created by Yodfha on 6/24/2559 BE.
//  Copyright © 2559 Fhasai. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface searchViewController : UIViewController
@property(nonatomic, retain) NSString *str;
@property(nonatomic, retain) IBOutlet UILabel *lblOutput;

@property(strong, nonatomic) IBOutlet UIImageView *img;
@property (nonatomic, retain) NSString *UserSelected;

@end
