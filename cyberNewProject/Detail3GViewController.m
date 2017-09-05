//
//  Detail3GViewController.m
//  cyberNewProject
//
//  Created by Yodfha on 7/1/2559 BE.
//  Copyright © 2559 Fhasai. All rights reserved.
//

#import "Detail3GViewController.h"

@interface Detail3GViewController ()

@end

@implementation Detail3GViewController

-(IBAction)PlayAudioButton:(id)sender;{
    
    AudioServicesPlaySystemSound(PlaySoundID);
}

@synthesize UserSelected;
@synthesize img;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSURL *SoundURL = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"button2" ofType:@"mp3"] ];
    AudioServicesCreateSystemSoundID((__bridge CFURLRef)SoundURL, &PlaySoundID);
    
    UIImage *imgD13 = [UIImage imageNamed:@"d13.jpg"];
    UIImage *imgD14 = [UIImage imageNamed:@"d14.jpg"];
    UIImage *imgD15 = [UIImage imageNamed:@"d15.jpg"];
    UIImage *imgD16 = [UIImage imageNamed:@"d16.jpg"];
    UIImage *imgD17 = [UIImage imageNamed:@"d17.jpg"];
    UIImage *imgD18 = [UIImage imageNamed:@"d18.jpg"];
    UIImage *imgD19 = [UIImage imageNamed:@"d19-2.jpg"];
    
    switch(UserSelected)  {
        case 0:
            img.image = imgD13;
            break;
        case 1:
            img.image = imgD14;
            break;
        case 2:
            img.image = imgD15;
            break;
        case 3:
            img.image = imgD16;
            break;
        case 4:
            img.image = imgD17;
            break;
        case 5:
            img.image = imgD18;
            break;
        case 6:
            img.image = imgD19;
            break;
        default:
            break;
    }
    
}


- (IBAction)shareButtonPressed:(id)sender {
    if(UserSelected == 0) {
        
        NSLog(@"shareButton pressed");
        NSString *texttoshare1 = @"ข้อความที่ต้องการแชร์";
        UIImage *imagetoshare1 = [UIImage imageNamed:@"s13.jpg"];
        NSArray *activityItems = @[texttoshare1, imagetoshare1];
        UIActivityViewController *activityVC = [[UIActivityViewController alloc] initWithActivityItems:activityItems applicationActivities:nil];
        activityVC.excludedActivityTypes = @[];
        [self presentViewController:activityVC animated:TRUE completion:nil];
    }
    else if(UserSelected == 1) {
        NSLog(@"shareButton pressed");
        NSString *texttoshare1 = @"ข้อความที่ต้องการแชร์";
        UIImage *imagetoshare1 = [UIImage imageNamed:@"s14.jpg"];
        NSArray *activityItems = @[texttoshare1, imagetoshare1];
        UIActivityViewController *activityVC = [[UIActivityViewController alloc] initWithActivityItems:activityItems applicationActivities:nil];
        activityVC.excludedActivityTypes = @[];
        [self presentViewController:activityVC animated:TRUE completion:nil];
    }
    else if(UserSelected == 2) {
        NSLog(@"shareButton pressed");
        NSString *texttoshare1 = @"ข้อความที่ต้องการแชร์";
        UIImage *imagetoshare1 = [UIImage imageNamed:@"s15.jpg"];
        NSArray *activityItems = @[texttoshare1, imagetoshare1];
        UIActivityViewController *activityVC = [[UIActivityViewController alloc] initWithActivityItems:activityItems applicationActivities:nil];
        activityVC.excludedActivityTypes = @[];
        [self presentViewController:activityVC animated:TRUE completion:nil];
    }
    else if(UserSelected == 3) {
        NSLog(@"shareButton pressed");
        NSString *texttoshare1 = @"ข้อความที่ต้องการแชร์";
        UIImage *imagetoshare1 = [UIImage imageNamed:@"s16.jpg"];
        NSArray *activityItems = @[texttoshare1, imagetoshare1];
        UIActivityViewController *activityVC = [[UIActivityViewController alloc] initWithActivityItems:activityItems applicationActivities:nil];
        activityVC.excludedActivityTypes = @[];
        [self presentViewController:activityVC animated:TRUE completion:nil];
    }
    
    else if(UserSelected == 4) {
        NSLog(@"shareButton pressed");
        NSString *texttoshare1 = @"ข้อความที่ต้องการแชร์";
        UIImage *imagetoshare1 = [UIImage imageNamed:@"s17.jpg"];
        NSArray *activityItems = @[texttoshare1, imagetoshare1];
        UIActivityViewController *activityVC = [[UIActivityViewController alloc] initWithActivityItems:activityItems applicationActivities:nil];
        activityVC.excludedActivityTypes = @[];
        [self presentViewController:activityVC animated:TRUE completion:nil];
    }
    
    else if(UserSelected == 5) {
        NSLog(@"shareButton pressed");
        NSString *texttoshare1 = @"ข้อความที่ต้องการแชร์";
        UIImage *imagetoshare1 = [UIImage imageNamed:@"s18.jpg"];
        NSArray *activityItems = @[texttoshare1, imagetoshare1];
        UIActivityViewController *activityVC = [[UIActivityViewController alloc] initWithActivityItems:activityItems applicationActivities:nil];
        activityVC.excludedActivityTypes = @[];
        [self presentViewController:activityVC animated:TRUE completion:nil];
    }
    
    else if(UserSelected == 6) {
        NSLog(@"shareButton pressed");
        NSString *texttoshare1 = @"ข้อความที่ต้องการแชร์";
        UIImage *imagetoshare1 = [UIImage imageNamed:@"s19.jpg"];
        NSArray *activityItems = @[texttoshare1, imagetoshare1];
        UIActivityViewController *activityVC = [[UIActivityViewController alloc] initWithActivityItems:activityItems applicationActivities:nil];
        activityVC.excludedActivityTypes = @[];
        [self presentViewController:activityVC animated:TRUE completion:nil];
    }
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction) callOut
{
    UIAlertView *alert = [[UIAlertView alloc]
                          initWithTitle:@"คำยืนยัน"
                          message:@"คุณต้องการโทรออก ใช่หรือไม่?"
                          delegate:self
                          cancelButtonTitle:@"ใช่"
                          otherButtonTitles:@"ไม่",nil];
    [alert show];
}

- (void)alertView:(UIAlertView *)alertView didDismissWithButtonIndex:(NSInteger)buttonIndex {
    // the user clicked OK
    if (buttonIndex == 0) {
        if(UserSelected == 0) {
            {
                NSURL *phoneNumber = [[NSURL alloc] initWithString: @"tel:1212"];
                [[UIApplication sharedApplication] openURL: phoneNumber];
            }
        }
        else if (UserSelected == 1) {
            {
                NSURL *phoneNumber = [[NSURL alloc] initWithString: @"tel:1212"];
                [[UIApplication sharedApplication] openURL: phoneNumber];
            }
        }
        else if (UserSelected == 2) {
            {
                NSURL *phoneNumber = [[NSURL alloc] initWithString: @"tel:1212"];
                [[UIApplication sharedApplication] openURL: phoneNumber];
            }
        }
        else if (UserSelected == 3) {
            {
                NSURL *phoneNumber = [[NSURL alloc] initWithString: @"tel:1212"];
                [[UIApplication sharedApplication] openURL: phoneNumber];
            }
        }
        else if (UserSelected == 4) {
            {
                NSURL *phoneNumber = [[NSURL alloc] initWithString: @"tel:1212"];
                [[UIApplication sharedApplication] openURL: phoneNumber];
            }
        }
        else if (UserSelected == 5) {
            {
                NSURL *phoneNumber = [[NSURL alloc] initWithString: @"tel:1212"];
                [[UIApplication sharedApplication] openURL: phoneNumber];
            }
        }
        else if (UserSelected == 6) {
            {
                NSURL *phoneNumber = [[NSURL alloc] initWithString: @"tel:1212"];
                [[UIApplication sharedApplication] openURL: phoneNumber];
            }
        }
    }
    
}

@end
