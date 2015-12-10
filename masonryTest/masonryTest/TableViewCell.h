//
//  TableViewCell.h
//  masonryTest
//
//  Created by 黄 灿 on 15/12/9.
//  Copyright © 2015年 MCoder. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TableViewCell : UITableViewCell
{
    UIImageView *imageView;
    UIView *bottomView;
}
@property (nonatomic,strong)UIButton *mainButton;
-(void)updateWithData:(id)data;
@end
