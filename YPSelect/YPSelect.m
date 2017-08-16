//
//  YPSelect.m
//  YPSelect
//
//  Created by 喻沛 on 2017/8/16.
//  Copyright © 2017年 yupeidong. All rights reserved.
//

#import "YPSelect.h"

@implementation YPSelect

-(instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self creatView];
    }
    return self;
}

- (void)creatView
{
    [self addSubview:self.selectButton];
    self.selectButton.frame = self.bounds;
    
}


- (UIButton *)selectButton
{
    _normalImage = [UIImage imageNamed:@"noselect"];
    _selectImage = [UIImage imageNamed:@"select"];
    if (!_selectButton) {
        _selectButton = [UIButton buttonWithType:UIButtonTypeCustom];
        _selectButton.backgroundColor = [UIColor clearColor];
        [_selectButton setImage:_normalImage forState:UIControlStateNormal];
        [_selectButton setImage:_selectImage forState:UIControlStateSelected];
        [_selectButton addTarget:self action:@selector(exchange) forControlEvents:UIControlEventTouchUpInside];
    }
    
    return _selectButton;
    
}

- (void)exchange
{
    _selectButton.selected = !_selectButton.selected;
    if (self.bloock) {
        _bloock(_selectButton.selected);

    }
}



@end
