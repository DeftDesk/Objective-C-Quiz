//
//  TutorialsCollectionViewController.h
//  Design


#import <UIKit/UIKit.h>

#import "BaseRoundedCell.h"
#import "WorldPremiereCell.h"
#import "FromTheEditorsCell.h"
#import "AppOfTheDayCell.h"
#import "TodaySectionHeaderCell.h"
#import "Present.h"
#import "Dismiss.h"

//UICollectionViewController
@interface TutorialsCollectionViewController : UIViewController <UICollectionViewDelegateFlowLayout> {
    NSArray *images;
}
@property (weak, nonatomic) IBOutlet UICollectionView *collectionView;
@end
