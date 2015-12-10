//
//  TableViewCell.m
//  masonryTest
//
//  Created by 黄 灿 on 15/12/9.
//  Copyright © 2015年 MCoder. All rights reserved.
//

#import "TableViewCell.h"
#import "Masonry.h"
@implementation TableViewCell

-(instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        [self initUI];
    }
    return self;
}

-(void)initUI{
    _mainButton = [[UIButton alloc]init];
    _mainButton.backgroundColor = [UIColor grayColor];
    [self.contentView addSubview:_mainButton];
    [_mainButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.size.mas_equalTo(CGSizeMake(200, 100)).priorityHigh(1000);
        make.centerX.equalTo(self.contentView);
        make.top.equalTo(self.contentView).offset(5);
        make.bottom.equalTo(self.contentView).offset(-5);
    }];
    
}
-(void)updateWithData:(id)data{
    //
    NSLog(@"==============");
}


@end
