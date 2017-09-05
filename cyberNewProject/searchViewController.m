//
//  searchViewController.m
//  cyberNewProject
//
//  Created by Yodfha on 6/24/2559 BE.
//  Copyright © 2559 Fhasai. All rights reserved.
//

#import "searchViewController.h"

@interface searchViewController ()

@end

@implementation searchViewController
@synthesize str, lblOutput, UserSelected, img;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    lblOutput.text = [NSString stringWithFormat:@"%@", self.str];
    
    
    
    UIImage *imgD1 = [UIImage imageNamed:@"d1.jpg"];
    UIImage *imgD2 = [UIImage imageNamed:@"d2.jpg"];
    UIImage *imgD3 = [UIImage imageNamed:@"d3.jpg"];
    UIImage *imgD4 = [UIImage imageNamed:@"d4.jpg"];
    UIImage *imgD5 = [UIImage imageNamed:@"d5.jpg"];
    UIImage *imgD6 = [UIImage imageNamed:@"d6.jpg"];
    UIImage *imgD7 = [UIImage imageNamed:@"d7.jpg"];
    UIImage *imgD8 = [UIImage imageNamed:@"d8.jpg"];
    UIImage *imgD9 = [UIImage imageNamed:@"d9.jpg"];
    UIImage *imgD10 = [UIImage imageNamed:@"d10.jpg"];
    UIImage *imgD11 = [UIImage imageNamed:@"d11.jpg"];
    UIImage *imgD12 = [UIImage imageNamed:@"d12.jpg"];
    UIImage *imgD13 = [UIImage imageNamed:@"d13.jpg"];
    UIImage *imgD14 = [UIImage imageNamed:@"d14.jpg"];
    UIImage *imgD15 = [UIImage imageNamed:@"d15.jpg"];
    UIImage *imgD16 = [UIImage imageNamed:@"d16.jpg"];
    UIImage *imgD17 = [UIImage imageNamed:@"d17.jpg"];
    UIImage *imgD18 = [UIImage imageNamed:@"d18.jpg"];
    UIImage *imgD19 = [UIImage imageNamed:@"d19-2.jpg"];
    UIImage *imgD20 = [UIImage imageNamed:@"d20.jpg"];
    UIImage *imgD21 = [UIImage imageNamed:@"d21.jpg"];
    UIImage *imgD22 = [UIImage imageNamed:@"d22.jpg"];
    UIImage *imgD23 = [UIImage imageNamed:@"d23.jpg"];
    UIImage *imgD24 = [UIImage imageNamed:@"d24.jpg"];
    UIImage *imgD25 = [UIImage imageNamed:@"d25.jpg"];
    UIImage *imgD26 = [UIImage imageNamed:@"d26.jpg"];



    if ([UserSelected isEqual:@"การพูดโกหก"]) {
        img.image = imgD1;
    }else
        if([UserSelected isEqual:@"การพูดใส่ร้ายป้ายสี"]) {
            img.image = imgD2;
        }else
            if([UserSelected isEqual:@"การพูดคำหยาบ"]) {
                img.image = imgD3;
            }else
                if([UserSelected isEqual:@"การด่าทอผู้อื่น"]) {
                    img.image = imgD4;
                }else
                    if([UserSelected isEqual:@"การพูดเสียดสี"]) {
                        img.image = imgD5;
                    }else
                        if([UserSelected isEqual:@"การพูดเพ้อเจ้อ"]) {
                            img.image = imgD6;
                        }else
                            if([UserSelected isEqual:@"โพสต์ข้อความที่ไม่เป็นจริง"]) {
                                img.image = imgD7;
                            }else
                                if([UserSelected isEqual:@"กระจายหรือส่งข้อมูลที่ทำให้ถูกเกลียดชัง"]) {
                                    img.image = imgD8;
                                }else
                                    if([UserSelected isEqual:@"การขโมยรหัสผ่าน"]) {
                                        img.image = imgD9;
                                    }else
                                        if([UserSelected isEqual:@"การดักจับข้อมูล"]) {
                                            img.image = imgD10;
                                        }else
                                            if([UserSelected isEqual:@"การปลอมตัวเป็นผู้อื่นบนโลกไซเบอร์"]) {
                                                img.image = imgD11;
                                            }else
                                                if([UserSelected isEqual:@"การสร้างสถานการณ์บนโลกไซเบอร์"]) {
                                                    img.image = imgD12;
                                                }else
                                                    if([UserSelected isEqual:@"การแฮคข้อมูล"]) {
                                                        img.image = imgD13;
                                                    }else
                                                        if([UserSelected isEqual:@"เลียนแบบโปรไฟล์ผู้อื่น"]) {
                                                            img.image = imgD14;
                                                        }else
                                                            if([UserSelected isEqual:@"การเผยแพร่ข้อมูลที่เป็นความลับ"]) {
                                                                img.image = imgD15;
                                                            }else
                                                                if([UserSelected isEqualToString:@"ตัดต่อข้อมูล/รูปภาพผู้อื่น"]) {
                                                                    img.image = imgD16;
                                                                }else
                                                                   if([UserSelected isEqual:@"การบล็อกให้ผู้อื่นไม่เห็นข้อมูลที่แท้จริง"]) {
                                                                    img.image = imgD17;
                                                                }else
                                                                    if([UserSelected isEqual:@"การลบหรือทำลายข้อมูล"]) {
                                                                        img.image = imgD18;
                                                                    }else
                                                                        if([UserSelected isEqual:@"การปิดกั้นข้อมูลจากผู้อื่น"]) {
                                                                            img.image = imgD19;
                                                                        }else
                                                                            if([UserSelected isEqual:@"การโพสคำล่วงละเมิดทางเพศ"]) {
                                                                                img.image = imgD20;
                                                                            }else
                                                                                if([UserSelected isEqual:@"มีข้อความ/เสียงก่อกวนเรื่องทางเพศ"]) {
                                                                                    img.image = imgD21;
                                                                                }else
                                                                                    if([UserSelected isEqual:@"ได้รับภาพลามกอนาจาร"]) {
                                                                                        img.image = imgD22;
                                                                                    }else
                                                                                        if([UserSelected isEqual:@"การโพสภาพที่เกี่ยวกับเรื่องทางเพศ"]) {
                                                                                            img.image = imgD23;
                                                                                        }else
                                                                                            if([UserSelected isEqual:@"การโพสภาพเพื่อยั่วยุ"]) {
                                                                                                img.image = imgD24;
                                                                                            }else
                                                                                                if([UserSelected isEqual:@"การหลอกลวงเยาวชนไปมีเพศสัมพันธ์"]) {
                                                                                                    img.image = imgD25;
                                                                                                }else
                                                                                                    if([UserSelected isEqualToString:@"ส่งต่อ Email/ข้อความอนาจาร"]) {
                                                                                                        img.image = imgD26;
                                                                                                    }
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
