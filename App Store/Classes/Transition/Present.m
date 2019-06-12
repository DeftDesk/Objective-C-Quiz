//
//  Present.m
//  Design


#import "Present.h"

@implementation Present
- (void)animateTransition:(nonnull id<UIViewControllerContextTransitioning>)transitionContext {
    UIView *containerView = transitionContext.containerView;

    StoryViewController *toViewController = [transitionContext viewControllerForKey:UITransitionContextToViewControllerKey];
    
    [containerView addSubview:toViewController.view];
    [toViewController positionContainer:self.selectedFrame.origin.y + 20.0 left:20.0 bottom:0.0 right:20.0];
    [toViewController setHeaderHeight:self.selectedFrame.size.height - 40.0];
    [toViewController configureRoundedCorners:YES];
    
    NSTimeInterval duration = [self transitionDuration:transitionContext];
    
    [UIView animateWithDuration:duration animations:^{
        [toViewController positionContainer:0.0 left:0.0 bottom:0.0 right:0.0];
        [toViewController setHeaderHeight:500];
        [toViewController.view setBackgroundColor:[UIColor whiteColor]];
        [toViewController configureRoundedCorners:NO];
    } completion:^(BOOL finished) {
      // [transitionContext completeTransition:transitionContext.transitionWasCancelled];
        
        [transitionContext completeTransition:YES];

    }];
}

- (NSTimeInterval)transitionDuration:(nullable id<UIViewControllerContextTransitioning>)transitionContext {
    return 0.1;
}
@end
