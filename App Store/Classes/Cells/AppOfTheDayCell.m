//
//  AppOfTheDayCell.m
//  Design
//


#import "AppOfTheDayCell.h"

@implementation AppOfTheDayCell
-(AppOfTheDayCell *) dequeue:(UICollectionView *)collectionView forReuseIdentifier:(NSString *)reuseIdentifier atIndexPath:(NSIndexPath *)indexPath {
    AppOfTheDayCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:reuseIdentifier forIndexPath:indexPath];
    if(!cell) {
        NSLog(@"[WARNING]: Failed to dequeue AppOfTheDayCell");
    }
    return cell;
}

-(void) awakeFromNib {
    [super awakeFromNib];
    [self.imageView.layer setCornerRadius:14.0];
    [self.iconView.layer setCornerRadius:8.0];
}
@end
