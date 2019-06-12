//
//  StoryViewController.m
//  Design


#import "StoryViewController.h"
#import "DismissInteractor.h"

@interface StoryViewController ()<UIGestureRecognizerDelegate>


@property (nonatomic, strong) DismissInteractor *dismissInteractor;


@end

@implementation StoryViewController
-(void) viewDidLoad {
    [super viewDidLoad];
  
}

-(void) positionContainer:(CGFloat)top left:(CGFloat)left bottom:(CGFloat)bottom right:(CGFloat)right {
    self.contTop.constant = top;
    _containerLeadingConst.constant = left;
     self.constBottom.constant = bottom;
    _containerTrailingConst.constant = right;
    [self.view layoutIfNeeded];
}

-(void) setHeaderHeight:(CGFloat)height {
    _headerImageHeightConstraint.constant = height;
    [self.view layoutIfNeeded];
}

-(void) configureRoundedCorners:(BOOL)roundedCorners {
    [self.headerImageView setClipsToBounds:roundedCorners];
    [self.headerImageView.layer setCornerRadius:roundedCorners ? 14.0 : 0.0];
}

- (IBAction)Back:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];

}

-(void) dismiss:(UIButton *)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}


-(BOOL) prefersStatusBarHidden {
    return TRUE;
}
@end
