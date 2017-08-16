//
//  YPSelect.h
//  YPSelect
//
//  Created by 喻沛 on 2017/8/16.
//  Copyright © 2017年 yupeidong. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void(^Block)(BOOL select);

@interface YPSelect : UIView

@property (nonatomic,copy) Block bloock;

@property (nonatomic, strong) UIButton * selectButton;
@property (nonatomic, strong) UIImage * selectImage;
@property (nonatomic, strong) UIImage * normalImage;

@end
