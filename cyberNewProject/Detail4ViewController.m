//
//  Detail4ViewController.m
//  cyberNewProject
//
//  Created by Yodfha on 6/23/2559 BE.
//  Copyright © 2559 Fhasai. All rights reserved.
//

#import "Detail4ViewController.h"

@interface Detail4ViewController ()

@end

@implementation Detail4ViewController

-(IBAction)PlayAudioButton:(id)sender;{
    
    AudioServicesPlaySystemSound(PlaySoundID);
}

@synthesize UserSelected;
@synthesize img;



    - (void)viewDidLoad {
        [super viewDidLoad];
        
        NSURL *SoundURL = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"button2" ofType:@"mp3"] ];
        AudioServicesCreateSystemSoundID((__bridge CFURLRef)SoundURL, &PlaySoundID);
        
        UIImage *imgD20 = [UIImage imageNamed:@"d20.jpg"];
        UIImage *imgD21 = [UIImage imageNamed:@"d21.jpg"];
        UIImage *imgD22 = [UIImage imageNamed:@"d22.jpg"];
        UIImage *imgD23 = [UIImage imageNamed:@"d23.jpg"];
        UIImage *imgD24 = [UIImage imageNamed:@"d24.jpg"];
        UIImage *imgD25 = [UIImage imageNamed:@"d25.jpg"];
        UIImage *imgD26 = [UIImage imageNamed:@"d26.jpg"];
        
        switch(UserSelected)  {
            case 0:
                img.image = imgD20;
                break;
            case 1:
                img.image = imgD21;
                break;
            case 2:
                img.image = imgD22;
                break;
            case 3:
                img.image = imgD23;
                break;
            case 4:
                img.image = imgD24;
                break;
            case 5:
                img.image = imgD25;
                break;
            case 6:
                img.image = imgD26;
                break;
            default:
                break;
        }
        
}



- (IBAction)shareButtonPressed:(id)sender {
    if(UserSelected == 0) {
        
        NSLog(@"shareButton pressed");
        NSString *texttoshare1 = @"ข้อความที่ต้องการแชร์";
        UIImage *imagetoshare1 = [UIImage imageNamed:@"s20.jpg"];
        NSArray *activityItems = @[texttoshare1, imagetoshare1];
        UIActivityViewController *activityVC = [[UIActivityViewController alloc] initWithActivityItems:activityItems applicationActivities:nil];
        activityVC.excludedActivityTypes = @[];
        [self presentViewController:activityVC animated:TRUE completion:nil];
    }
    else if(UserSelected == 1) {
        NSLog(@"shareButton pressed");
        NSString *texttoshare1 = @"ข้อความที่ต้องการแชร์";
        UIImage *imagetoshare1 = [UIImage imageNamed:@"s21.jpg"];
        NSArray *activityItems = @[texttoshare1, imagetoshare1];
        UIActivityViewController *activityVC = [[UIActivityViewController alloc] initWithActivityItems:activityItems applicationActivities:nil];
        activityVC.excludedActivityTypes = @[];
        [self presentViewController:activityVC animated:TRUE completion:nil];
    }
    else if(UserSelected == 2) {
        NSLog(@"shareButton pressed");
        NSString *texttoshare1 = @"ข้อความที่ต้องการแชร์";
        UIImage *imagetoshare1 = [UIImage imageNamed:@"s22.jpg"];
        NSArray *activityItems = @[texttoshare1, imagetoshare1];
        UIActivityViewController *activityVC = [[UIActivityViewController alloc] initWithActivityItems:activityItems applicationActivities:nil];
        activityVC.excludedActivityTypes = @[];
        [self presentViewController:activityVC animated:TRUE completion:nil];
    }
    else if(UserSelected == 3) {
        NSLog(@"shareButton pressed");
        NSString *texttoshare1 = @"ข้อความที่ต้องการแชร์";
        UIImage *imagetoshare1 = [UIImage imageNamed:@"s23.jpg"];
        NSArray *activityItems = @[texttoshare1, imagetoshare1];
        UIActivityViewController *activityVC = [[UIActivityViewController alloc] initWithActivityItems:activityItems applicationActivities:nil];
        activityVC.excludedActivityTypes = @[];
        [self presentViewController:activityVC animated:TRUE completion:nil];
    }
    
    else if(UserSelected == 4) {
        NSLog(@"shareButton pressed");
        NSString *texttoshare1 = @"ข้อความที่ต้องการแชร์";
        UIImage *imagetoshare1 = [UIImage imageNamed:@"s24.jpg"];
        NSArray *activityItems = @[texttoshare1, imagetoshare1];
        UIActivityViewController *activityVC = [[UIActivityViewController alloc] initWithActivityItems:activityItems applicationActivities:nil];
        activityVC.excludedActivityTypes = @[];
        [self presentViewController:activityVC animated:TRUE completion:nil];
    }
    
    else if(UserSelected == 5) {
        NSLog(@"shareButton pressed");
        NSString *texttoshare1 = @"ข้อความที่ต้องการแชร์";
        UIImage *imagetoshare1 = [UIImage imageNamed:@"s25.jpg"];
        NSArray *activityItems = @[texttoshare1, imagetoshare1];
        UIActivityViewController *activityVC = [[UIActivityViewController alloc] initWithActivityItems:activityItems applicationActivities:nil];
        activityVC.excludedActivityTypes = @[];
        [self presentViewController:activityVC animated:TRUE completion:nil];
    }
    
    else if(UserSelected == 6) {
        NSLog(@"shareButton pressed");
        NSString *texttoshare1 = @"ข้อความที่ต้องการแชร์";
        UIImage *imagetoshare1 = [UIImage imageNamed:@"s26.jpg"];
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
                NSURL *phoneNumber = [[NSURL alloc] initWithString: @"tel:1134"];
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
