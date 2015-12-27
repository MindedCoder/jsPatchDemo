//
//  ViewController.m
//  masonryTest
//
//  Created by 黄 灿 on 15/12/9.
//  Copyright © 2015年 MCoder. All rights reserved.
//

#import "ViewController.h"
#import "TableViewCell.h"
#import "Masonry.h"
@interface ViewController ()<UITableViewDataSource,UITableViewDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"主页";
    UITableView *table = [[UITableView alloc]init];
    table.delegate = self;
    table.dataSource = self;
    table.backgroundColor = [UIColor redColor];
    table.rowHeight = UITableViewAutomaticDimension;
    table.estimatedRowHeight = 100;
    [self.view addSubview:table];
    
    [table mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.view);
        make.left.equalTo(self.view);
        make.bottom.equalTo(self.view);
        make.right.equalTo(self.view);
    }];

    
    NSDateFormatter *format =[[NSDateFormatter alloc]init];
    [format setDateFormat:@"YYYY-MM-dd HH:mm:ss"];
    NSDate *date =[NSDate dateWithTimeIntervalSince1970:1451145600];
    NSString *currentDateStr = [format stringFromDate:date];

    NSLog(@"date is --------%@",currentDateStr);

    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *cellidentifile = @"temp";
    TableViewCell *cell  = [tableView dequeueReusableCellWithIdentifier:cellidentifile];
    if (!cell) {
        cell = [[TableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellidentifile];
    }
    [cell updateWithData:self.dataArray[indexPath.row]];//这里肯定会挂 紧急修复热更新时可以用js修改这个方法
    return cell;
    
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return [self.dataArray count]+1;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    NSLog(@"llll");
}

#pragma mark - getter and setter
-(NSArray *)dataArray{
    if (!_dataArray) {
        _dataArray = [NSArray arrayWithObjects:@"1",@"2",@"3",@"4",@"5",nil];
    }
    return _dataArray;
    

}
@end
