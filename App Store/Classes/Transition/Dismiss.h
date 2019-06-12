//
//  Dismiss.h
//  Design


#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

#import "TutorialsCollectionViewController.h"
#import "StoryViewController.h"
@interface Dismiss : NSObject <UIViewControllerAnimatedTransitioning>
@property (nonatomic) CGRect selectedFrame;
@end
