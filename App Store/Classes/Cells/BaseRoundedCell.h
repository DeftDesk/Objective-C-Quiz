//
//  BaseRoundedCell.h
//  Design
//


#import <UIKit/UIKit.h>

@interface BaseRoundedCell : UICollectionViewCell {
    UIView *shadowView;
    UILongPressGestureRecognizer *longPressGestureRecognizer;
}

@property (nonatomic) CGFloat cellHeight;
@property (nonatomic) CGFloat innerMargin;
@end
