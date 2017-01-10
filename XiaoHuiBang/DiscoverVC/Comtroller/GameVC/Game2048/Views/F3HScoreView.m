//
//  F3HScoreView.m
//  NumberTileGame
//
//  Created by Austin Zheng on 3/25/14.
//
//

#import "F3HScoreView.h"

@interface F3HScoreView ()
@property (nonatomic, strong) UILabel *scoreLabel;
@end

@implementation F3HScoreView

+ (instancetype)scoreViewWithCornerRadius:(CGFloat)radius
                          backgroundColor:(UIColor *)color
                                textColor:(UIColor *)textColor
                                 textFont:(UIFont *)textFont
                                    frame:(CGRect)frame{
    F3HScoreView *view = [[[self class] alloc] initWithFrame:frame];
    view.score = 0;
    view.layer.cornerRadius = radius;   // 5
    view.backgroundColor = color ?: [UIColor whiteColor];
    view.userInteractionEnabled = YES;
    if (textColor) {
        view.scoreLabel.textColor = textColor;
    }
    if (textFont) {
        view.scoreLabel.font = textFont;
    }
    return view;
}

- (id)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (!self) return nil;
    UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 95, 64)];
    imageView.image = [UIImage imageNamed:@"icon_number_score"];
    [self addSubview:imageView];
    UILabel *scoreLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 28, 95, 32)];
    scoreLabel.textAlignment = NSTextAlignmentCenter;
    scoreLabel.adjustsFontSizeToFitWidth = YES;
    [self addSubview:scoreLabel];
    self.scoreLabel = scoreLabel;
    return self;
}

- (void)setScore:(NSInteger)score {
    _score = score;
    self.scoreLabel.text = [NSString stringWithFormat:@"%ld", (long)score];
}

@end
