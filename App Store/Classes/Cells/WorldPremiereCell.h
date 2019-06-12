//
//  WorldPremiereCell.h
//  Design
//


#import "BaseRoundedCell.h"

@interface WorldPremiereCell : BaseRoundedCell
-(WorldPremiereCell *) dequeue:(UICollectionView *)collectionView forReuseIdentifier:(NSString *)reuseIdentifier atIndexPath:(NSIndexPath *)indexPath;

@property (nonatomic, strong) IBOutlet UIImageView *imageView;
@end
