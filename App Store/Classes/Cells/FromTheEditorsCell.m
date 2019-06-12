//
//  FromTheEditorsCell.m
//  Design
//


#import "FromTheEditorsCell.h"

@implementation FromTheEditorsCell
-(FromTheEditorsCell *) dequeue:(UICollectionView *)collectionView forReuseIdentifier:(NSString *)reuseIdentifier atIndexPath:(NSIndexPath *)indexPath {
    FromTheEditorsCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:reuseIdentifier forIndexPath:indexPath];
    if(!cell) {
        NSLog(@"[WARNING]: Failed to dequeue FromTheEditors");
    }
    return cell;
}

-(void) awakeFromNib {
    [super awakeFromNib];
    [self.imageView.layer setCornerRadius:14.0];
}
@end
