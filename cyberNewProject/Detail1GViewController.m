//
//  Detail1GViewController.m
//  cyberNewProject
//
//  Created by Yodfha on 7/1/2559 BE.
//  Copyright © 2559 Fhasai. All rights reserved.
//

#import "Detail1GViewController.h"
@interface Detail1GViewController ()

@end

@implementation Detail1GViewController

-(IBAction)PlayAudioButton:(id)sender;{
    
    AudioServicesPlaySystemSound(PlaySoundID);
}

@synthesize UserSelected;
@synthesize img;


- (void)viewDidLoad {
    [super viewDidLoad];
    NSURL *SoundURL = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"button2" ofType:@"mp3"] ];
    AudioServicesCreateSystemSoundID((__bridge CFURLRef)SoundURL, &PlaySoundID);
    
    UIImage *imgD1 = [UIImage imageNamed:@"d1.jpg"];
    UIImage *imgD2 = [UIImage imageNamed:@"d2.jpg"];
    UIImage *imgD3 = [UIImage imageNamed:@"d3.jpg"];
    UIImage *imgD4 = [UIImage imageNamed:@"d4.jpg"];
    UIImage *imgD5 = [UIImage imageNamed:@"d5.jpg"];
    UIImage *imgD6 = [UIImage imageNamed:@"d6.jpg"];
    UIImage *imgD7 = [UIImage imageNamed:@"d7.jpg"];
    UIImage *imgD8 = [UIImage imageNamed:@"d8.jpg"];
    
    switch(UserSelected)  {
        case 0:
            img.image = imgD1;
            break;
        case 1:
            img.image = imgD2;
            break;
        case 2:
            img.image = imgD3;
            break;
        case 3:
            img.image = imgD4;
            break;
        case 4:
            img.image = imgD5;
            break;
        case 5:
            img.image = imgD6;
            break;
        case 6:
            img.image = imgD7;
            break;
        case 7:
            img.image = imgD8;
            break;
        default:
            break;
    }
}




//-(IBAction)call:(id)sender;
//{
//    if(UserSelected == 0) {
//        NSURL *phoneNumber = [[NSURL alloc] initWithString: @"tel:1667"];
//        [[UIApplication sharedApplication] openURL: phoneNumber];
//    }
//    else if (UserSelected == 1) {
//        NSURL *phoneNumber = [[NSURL alloc] initWithString: @"tel:1667"];
//        [[UIApplication sharedApplication] openURL: phoneNumber];
//    }
//    else if (UserSelected == 2) {
//        NSURL *phoneNumber = [[NSURL alloc] initWithString: @"tel:1667"];
//        [[UIApplication sharedApplication] openURL: phoneNumber];
//    }
//    else if (UserSelected == 3) {
//        NSURL *phoneNumber = [[NSURL alloc] initWithString: @"tel:1667"];
//        [[UIApplication sharedApplication] openURL: phoneNumber];
//    }
//    else if (UserSelected == 4) {
//        NSURL *phoneNumber = [[NSURL alloc] initWithString: @"tel:1667"];
//        [[UIApplication sharedApplication] openURL: phoneNumber];
//    }
//    else if (UserSelected == 5) {
//        NSURL *phoneNumber = [[NSURL alloc] initWithString: @"tel:1667"];
//        [[UIApplication sharedApplication] openURL: phoneNumber];
//    }
//    else if (UserSelected == 6) {
//        NSURL *phoneNumber = [[NSURL alloc] initWithString: @"tel:1212"];
//        [[UIApplication sharedApplication] openURL: phoneNumber];
//    }
//    else if (UserSelected == 7) {
//        NSURL *phoneNumber = [[NSURL alloc] initWithString: @"tel:1212"];
//        [[UIApplication sharedApplication] openURL: phoneNumber];
//    }
//}

- (IBAction)shareButtonPressed:(id)sender {
    if(UserSelected == 0) {
        
        NSLog(@"shareButton pressed");
        NSString *texttoshare1 = @"ข้อความที่ต้องการแชร์";
        UIImage *imagetoshare1 = [UIImage imageNamed:@"s1.jpg"];
        NSArray *activityItems = @[texttoshare1, imagetoshare1];
        UIActivityViewController *activityVC = [[UIActivityViewController alloc] initWithActivityItems:activityItems applicationActivities:nil];
        activityVC.excludedActivityTypes = @[];
        [self presentViewController:activityVC animated:TRUE completion:nil];
    }
    else if(UserSelected == 1) {
        NSLog(@"shareButton pressed");
        NSString *texttoshare1 = @"ข้อความที่ต้องการแชร์";
        UIImage *imagetoshare1 = [UIImage imageNamed:@"s2.jpg"];
        NSArray *activityItems = @[texttoshare1, imagetoshare1];
        UIActivityViewController *activityVC = [[UIActivityViewController alloc] initWithActivityItems:activityItems applicationActivities:nil];
        activityVC.excludedActivityTypes = @[];
        [self presentViewController:activityVC animated:TRUE completion:nil];
    }
    else if(UserSelected == 2) {
        NSLog(@"shareButton pressed");
        NSString *texttoshare1 = @"ข้อความที่ต้องการแชร์";
        UIImage *imagetoshare1 = [UIImage imageNamed:@"s3.jpg"];
        NSArray *activityItems = @[texttoshare1, imagetoshare1];
        UIActivityViewController *activityVC = [[UIActivityViewController alloc] initWithActivityItems:activityItems applicationActivities:nil];
        activityVC.excludedActivityTypes = @[];
        [self presentViewController:activityVC animated:TRUE completion:nil];
    }
    else if(UserSelected == 3) {
        NSLog(@"shareButton pressed");
        NSString *texttoshare1 = @"ข้อความที่ต้องการแชร์";
        UIImage *imagetoshare1 = [UIImage imageNamed:@"s4.jpg"];
        NSArray *activityItems = @[texttoshare1, imagetoshare1];
        UIActivityViewController *activityVC = [[UIActivityViewController alloc] initWithActivityItems:activityItems applicationActivities:nil];
        activityVC.excludedActivityTypes = @[];
        [self presentViewController:activityVC animated:TRUE completion:nil];
    }
    
    else if(UserSelected == 4) {
        NSLog(@"shareButton pressed");
        NSString *texttoshare1 = @"ข้อความที่ต้องการแชร์";
        UIImage *imagetoshare1 = [UIImage imageNamed:@"s5.jpg"];
        NSArray *activityItems = @[texttoshare1, imagetoshare1];
        UIActivityViewController *activityVC = [[UIActivityViewController alloc] initWithActivityItems:activityItems applicationActivities:nil];
        activityVC.excludedActivityTypes = @[];
        [self presentViewController:activityVC animated:TRUE completion:nil];
    }
    
    else if(UserSelected == 5) {
        NSLog(@"shareButton pressed");
        NSString *texttoshare1 = @"ข้อความที่ต้องการแชร์";
        UIImage *imagetoshare1 = [UIImage imageNamed:@"s6.jpg"];
        NSArray *activityItems = @[texttoshare1, imagetoshare1];
        UIActivityViewController *activityVC = [[UIActivityViewController alloc] initWithActivityItems:activityItems applicationActivities:nil];
        activityVC.excludedActivityTypes = @[];
        [self presentViewController:activityVC animated:TRUE completion:nil];
    }
    
    else if(UserSelected == 6) {
        NSLog(@"shareButton pressed");
        NSString *texttoshare1 = @"ข้อความที่ต้องการแชร์";
        UIImage *imagetoshare1 = [UIImage imageNamed:@"s7.jpg"];
        NSArray *activityItems = @[texttoshare1, imagetoshare1];
        UIActivityViewController *activityVC = [[UIActivityViewController alloc] initWithActivityItems:activityItems applicationActivities:nil];
        activityVC.excludedActivityTypes = @[];
        [self presentViewController:activityVC animated:TRUE completion:nil];
    }
    
    else if(UserSelected == 7) {
        NSLog(@"shareButton pressed");
        NSString *texttoshare1 = @"ข้อความที่ต้องการแชร์";
        UIImage *imagetoshare1 = [UIImage imageNamed:@"s8.jpg"];
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
                NSURL *phoneNumber = [[NSURL alloc] initWithString: @"tel:1667"];
                [[UIApplication sharedApplication] openURL: phoneNumber];
            }
        }
        else if (UserSelected == 1) {
            {
                NSURL *phoneNumber = [[NSURL alloc] initWithString: @"tel:1667"];
                [[UIApplication sharedApplication] openURL: phoneNumber];
            }
        }
        else if (UserSelected == 2) {
            {
                NSURL *phoneNumber = [[NSURL alloc] initWithString: @"tel:1667"];
                [[UIApplication sharedApplication] openURL: phoneNumber];
            }
        }
        else if (UserSelected == 3) {
            {
                NSURL *phoneNumber = [[NSURL alloc] initWithString: @"tel:1667"];
                [[UIApplication sharedApplication] openURL: phoneNumber];
            }
        }
        else if (UserSelected == 4) {
            {
                NSURL *phoneNumber = [[NSURL alloc] initWithString: @"tel:1667"];
                [[UIApplication sharedApplication] openURL: phoneNumber];
            }
        }
        else if (UserSelected == 5) {
            {
                NSURL *phoneNumber = [[NSURL alloc] initWithString: @"tel:1667"];
                [[UIApplication sharedApplication] openURL: phoneNumber];
            }
        }
        else if (UserSelected == 6) {
            {
                NSURL *phoneNumber = [[NSURL alloc] initWithString: @"tel:1212"];
                [[UIApplication sharedApplication] openURL: phoneNumber];
            }
        }
        else if (UserSelected == 7) {
            {
                NSURL *phoneNumber = [[NSURL alloc] initWithString: @"tel:1212"];
                [[UIApplication sharedApplication] openURL: phoneNumber];
            }
        }
    }
    
}


@end
