//
//  TableSearchViewController.m
//  cyberNewProject
//
//  Created by Yodfha on 6/23/2559 BE.
//  Copyright © 2559 Fhasai. All rights reserved.
//

#import "TableSearchViewController.h"
#import "searchViewController.h"

@interface TableSearchViewController () <UISearchDisplayDelegate>

@end

@implementation TableSearchViewController
@synthesize problemName, result;

- (id)initWithStyle:(UITableViewStyle)style  {
    self = [super initWithStyle:style];
    if (self) {
        
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.problemName = [NSArray arrayWithObjects:
                       @"การพูดโกหก", @"การพูดใส่ร้ายป้ายสี", @"การพูดคำหยาบ", @"การด่าทอผู้อื่น", @"การพูดเสียดสี", @"การพูดเพ้อเจ้อ", @"โพสต์ข้อความที่ไม่เป็นจริง", @"กระจายหรือส่งข้อมูลที่ทำให้ถูกเกลียดชัง", @"การขโมยรหัสผ่าน", @"การดักจับข้อมูล", @"การปลอมตัวเป็นผู้อื่นบนโลกไซเบอร์", @"การสร้างสถานการณ์บนโลกไซเบอร์", @"การแฮคข้อมูล", @"เลียนแบบโปรไฟล์ผู้อื่น", @"การเผยแพร่ข้อมูลที่เป็นความลับ", @"ตัดต่อข้อมูล/รูปภาพผู้อื่น", @"การบล็อกให้ผู้อื่นไม่เห็นข้อมูลที่แท้จริง", @"การลบหรือทำลายข้อมูล", @"การปิดกั้นข้อมูลจากผู้อื่น", @"การโพสคำล่วงละเมิดทางเพศ", @"มีข้อความ/เสียงก่อกวนเรื่องทางเพศ", @"ได้รับภาพลามกอนาจาร", @"การโพสภาพที่เกี่ยวกับเรื่องทางเพศ", @"การโพสภาพเพื่อยั่วยุ", @"การหลอกลวงเยาวชนไปมีเพศสัมพันธ์", @"ส่งต่อ Email/ข้อความอนาจาร",  nil];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    
    
    if (tableView == self.tableView) {
        return [self.problemName count];
    }
    else
    {
        return  [self.result count];
    }
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [self.tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    
    if (tableView == self.tableView) {
        cell.textLabel.text = [self.problemName objectAtIndex:indexPath.row];
    }
    else
    {
        cell.textLabel.text = [self.result objectAtIndex:indexPath.row];
    }
    return cell;
}

- (void)filterContentForSearchText: (NSString *) searchText
{
    NSPredicate *p = [NSPredicate predicateWithFormat:@"SELF CONTAINS[cd] %@", searchText];
    self.result = [self.problemName filteredArrayUsingPredicate:p];
}

-(BOOL)searchDisplayController:(UISearchDisplayController *)controller shouldReloadTableForSearchString:(NSString *)searchString
{
    [self filterContentForSearchText:searchString];
    return YES;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier isEqualToString:@"mnuSelected"])
    {
        searchViewController *v = segue.destinationViewController;
        
        //      NSIndexPath *rowSelected = [self.tableView indexPathForSelectedRow];
        //     v.UserSelected = rowSelected.row;
        
        
        if(self.searchDisplayController.active) {
            NSIndexPath *indexPath = nil;
            indexPath = [self.searchDisplayController.searchResultsTableView indexPathForSelectedRow];
            v.str = [self.result objectAtIndex:indexPath.row];
            
            v.UserSelected = [self.result objectAtIndex:indexPath.row];
            
            
            
        }
        else {
            NSIndexPath *indexPath = nil;
            indexPath = [self.tableView indexPathForSelectedRow];
            v.str = [self.problemName objectAtIndex:indexPath.row];
            
            v.UserSelected = [self.problemName objectAtIndex:indexPath.row];
            
            
        }
        return;
    }
    
}



@end
