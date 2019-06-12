//
//  WorldPremiereCell.m
//  Design
//


#import "WorldPremiereCell.h"

@implementation WorldPremiereCell
-(WorldPremiereCell *) dequeue:(UICollectionView *)collectionView forReuseIdentifier:(NSString *)reuseIdentifier atIndexPath:(NSIndexPath *)indexPath {
    WorldPremiereCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:reuseIdentifier forIndexPath:indexPath];
    if(!cell) {
        NSLog(@"[WARNING]: Failed to dequeue WorldPremiere");
    }
    return cell;
}

-(void) awakeFromNib {
    [super awakeFromNib];
}
@end
