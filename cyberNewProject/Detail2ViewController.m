//
//  Detail2ViewController.m
//  cyberNewProject
//
//  Created by Yodfha on 6/23/2559 BE.
//  Copyright © 2559 Fhasai. All rights reserved.
//

#import "Detail2ViewController.h"

@interface Detail2ViewController ()

@end

@implementation Detail2ViewController

-(IBAction)PlayAudioButton:(id)sender;{
    
    AudioServicesPlaySystemSound(PlaySoundID);
}

@synthesize UserSelected;
@synthesize img;

- (void)viewDidLoad {
    [super viewDidLoad];
    NSURL *SoundURL = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"button2" ofType:@"mp3"] ];
    AudioServicesCreateSystemSoundID((__bridge CFURLRef)SoundURL, &PlaySoundID);
    
    UIImage *imgD9 = [UIImage imageNamed:@"d9.jpg"];
    UIImage *imgD10 = [UIImage imageNamed:@"d10.jpg"];
    UIImage *imgD11 = [UIImage imageNamed:@"d11.jpg"];
    UIImage *imgD12 = [UIImage imageNamed:@"d12.jpg"];
    
    switch(UserSelected)  {
        case 0:
            img.image = imgD9;
            break;
        case 1:
            img.image = imgD10;
            break;
        case 2:
            img.image = imgD11;
            break;
        case 3:
            img.image = imgD12;
            break;
        default:
            break;
    }

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
{
    if(buttonIndex == 0) {
        {
            if (UserSelected == 0) {
         NSURL *phoneNumber = [[NSURL alloc] initWithString: @"tel:1212"];
        [[UIApplication sharedApplication] openURL: phoneNumber];
    }
            else if (UserSelected == 1) {
            NSURL *phoneNumber = [[NSURL alloc] initWithString: @"tel:1212"];
            [[UIApplication sharedApplication] openURL: phoneNumber];
        }
            else if (UserSelected == 2) {
                NSURL *phoneNumber = [[NSURL alloc] initWithString: @"tel:1212"];
                [[UIApplication sharedApplication] openURL: phoneNumber];
            }
            else if (UserSelected == 3) {
                NSURL *phoneNumber = [[NSURL alloc] initWithString: @"tel:1212"];
                [[UIApplication sharedApplication] openURL: phoneNumber];
            }
        }
    }
}
}


- (IBAction)shareButtonPressed:(id)sender {
    if(UserSelected == 0) {
        
        NSLog(@"shareButton pressed");
        NSString *texttoshare1 = @"ข้อความที่ต้องการแชร์";
        UIImage *imagetoshare1 = [UIImage imageNamed:@"s9.jpg"];
        NSArray *activityItems = @[texttoshare1, imagetoshare1];
        UIActivityViewController *activityVC = [[UIActivityViewController alloc] initWithActivityItems:activityItems applicationActivities:nil];
        activityVC.excludedActivityTypes = @[];
        [self presentViewController:activityVC animated:TRUE completion:nil];
    }
    else if(UserSelected == 1) {
        NSLog(@"shareButton pressed");
        NSString *texttoshare1 = @"ข้อความที่ต้องการแชร์";
        UIImage *imagetoshare1 = [UIImage imageNamed:@"s10.jpg"];
        NSArray *activityItems = @[texttoshare1, imagetoshare1];
        UIActivityViewController *activityVC = [[UIActivityViewController alloc] initWithActivityItems:activityItems applicationActivities:nil];
        activityVC.excludedActivityTypes = @[];
        [self presentViewController:activityVC animated:TRUE completion:nil];
    }
    else if(UserSelected == 2) {
        NSLog(@"shareButton pressed");
        NSString *texttoshare1 = @"ข้อความที่ต้องการแชร์";
        UIImage *imagetoshare1 = [UIImage imageNamed:@"s11.jpg"];
        NSArray *activityItems = @[texttoshare1, imagetoshare1];
        UIActivityViewController *activityVC = [[UIActivityViewController alloc] initWithActivityItems:activityItems applicationActivities:nil];
        activityVC.excludedActivityTypes = @[];
        [self presentViewController:activityVC animated:TRUE completion:nil];
    }
    else if(UserSelected == 3) {
        NSLog(@"shareButton pressed");
        NSString *texttoshare1 = @"ข้อความที่ต้องการแชร์";
        UIImage *imagetoshare1 = [UIImage imageNamed:@"s12.jpg"];
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

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
