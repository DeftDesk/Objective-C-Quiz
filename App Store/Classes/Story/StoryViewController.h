//
//  StoryViewController.h
//  Design


#import <UIKit/UIKit.h>

@interface StoryViewController : UIViewController {
//    NSLayoutConstraint *topConstraint, *leftConstraint, *bottomConstraint, *rightConstraint;
//    NSLayoutConstraint *headerHeightConstraint;
}

@property (nonatomic, strong) IBOutlet UIView *contentContainerView;
@property (nonatomic, strong) IBOutlet UIImageView *headerImageView;
@property (nonatomic, strong) IBOutlet UIButton *dismissButton;

@property (weak, nonatomic) IBOutlet NSLayoutConstraint *containerLeadingConst;

@property (weak, nonatomic) IBOutlet NSLayoutConstraint *containerTrailingConst;



@property (weak, nonatomic) IBOutlet NSLayoutConstraint *contTop;



@property (weak, nonatomic) IBOutlet NSLayoutConstraint *constBottom;




@property (weak, nonatomic) IBOutlet NSLayoutConstraint *headerImageHeightConstraint;




-(void) positionContainer:(CGFloat)top left:(CGFloat)left bottom:(CGFloat)bottom right:(CGFloat)right;
-(void) setHeaderHeight:(CGFloat)height;
-(void) configureRoundedCorners:(BOOL)roundedCorners;
@end
