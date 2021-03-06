
#import "XLTextField.h"

@implementation XLTextField

//控制placeHolder的位置，左右缩20
- (CGRect)placeholderRectForBounds:(CGRect)bounds {
    CGRect inset = CGRectMake(bounds.origin.x+20, bounds.origin.y, bounds.size.width -10, bounds.size.height);
    return inset;
}

//控制显示文本的位置
-(CGRect)textRectForBounds:(CGRect)bounds {
    CGRect inset = CGRectMake(bounds.origin.x+20, bounds.origin.y, bounds.size.width -10, bounds.size.height);
    return inset;
    
}

//控制编辑文本的位置
-(CGRect)editingRectForBounds:(CGRect)bounds {
    CGRect inset = CGRectMake(bounds.origin.x +20, bounds.origin.y, bounds.size.width -10, bounds.size.height);
    return inset;
}

//leftView 输入文字前的提示图片
- (CGRect)leftViewRectForBounds:(CGRect)bounds {
    CGRect textRect = [super leftViewRectForBounds:bounds];
    textRect.origin.x += 5;
    return textRect;
}

//rightView 多用于密码隐藏显示那个眼睛图片
- (CGRect)rightViewRectForBounds:(CGRect)bounds; {
    CGRect textRect = [super rightViewRectForBounds:bounds];
    textRect.origin.x -= 10;
    return textRect;
}

@end
