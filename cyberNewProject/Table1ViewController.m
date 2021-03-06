//
//  Table1ViewController.m
//  cyberNewProject
//
//  Created by Yodfha on 6/22/2559 BE.
//  Copyright © 2559 Fhasai. All rights reserved.
//

#import "Table1ViewController.h"
#import "Detail1ViewController.h"

@interface Table1ViewController ()

@end

@implementation Table1ViewController


@synthesize arrData;

- (id)initWithStyle:(UITableViewStyle)style {
    self = [super initWithStyle:style];
    if (self) {
        
    }
    return self;
}


- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    self.title = @"ปัญหาการหมิ่นประมาท";
    arrData = [[NSArray alloc] initWithObjects:@"การพูดโกหก", @"การพูดใส่ร้ายป้ายสี", @"การพูดคำหยาบ", @"การด่าทอผู้อื่น", @"การพูดเสียดสี", @"การพูดเพ้อเจ้อ", @"โพสต์ข้อความที่ไม่เป็นจริง", @"กระจายส่งข้อมูลทีทำให้ถูกเกลียดชัง", nil];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView  {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [arrData count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath  {
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    if(cell == nil){
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    cell.textLabel.text = [arrData objectAtIndex:indexPath.row];
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    
    return cell;
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender  {
    Detail1ViewController *v = [[Detail1ViewController alloc]init];
    v = [segue destinationViewController];
    
    NSIndexPath *rowSelected = [self.tableView indexPathForSelectedRow];
    v.UserSelected = rowSelected.row;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}




@end
