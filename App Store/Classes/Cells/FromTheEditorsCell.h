//
//  FromTheEditorsCell.h
//  Design
//


#import "BaseRoundedCell.h"

@interface FromTheEditorsCell : BaseRoundedCell
-(FromTheEditorsCell *) dequeue:(UICollectionView *)collectionView forReuseIdentifier:(NSString *)reuseIdentifier atIndexPath:(NSIndexPath *)indexPath;

@property (nonatomic, strong) IBOutlet UIImageView *imageView;
@end
