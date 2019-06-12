//
//  TutorialsCollectionViewController.m
//  Design


#import "TutorialsCollectionViewController.h"

@interface TutorialsCollectionViewController ()<UIViewControllerTransitioningDelegate>{
    NSIndexPath *index;
    NSString *string;
}

@property (nonatomic) Present* present;
@property (nonatomic) Dismiss* dismiss;


@end

@implementation TutorialsCollectionViewController



-(void) viewDidLoad {
    [super viewDidLoad];
    
   
    UIView *statusBar = [[[UIApplication sharedApplication] valueForKey:@"statusBarWindow"] valueForKey:@"statusBar"];
    [statusBar setBackgroundColor:[UIColor whiteColor]];
    
    [self registerCell:@"WorldPremiereCell" forIdentifier:@"WorldPremieres"];
  
    [self.collectionView registerNib:[UINib nibWithNibName:@"TodaySectionHeaderCell" bundle:nil] forSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:@"Header"];
    
    images = @[@"monument-valley", @"from-the-editors", @"app-of-the-day"];
    NSDate *date = [NSDate date];
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setDateFormat:@"EEEE, dd MMMM"];
    string = [formatter stringFromDate:date];
}


-(NSInteger) numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return 3;
}


-(NSInteger) collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return [images count];
}

-(UICollectionViewCell *) collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {

    
    WorldPremiereCell *premiere = (WorldPremiereCell*)[collectionView dequeueReusableCellWithReuseIdentifier:@"WorldPremieres" forIndexPath:indexPath];
    
    [premiere.imageView setImage:[UIImage imageNamed:@"monument-valley"]];
    return premiere;
}


-(void) collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    UICollectionViewCell *cell = [collectionView cellForItemAtIndexPath:indexPath];
    if(cell) {
        
        _present = [Present new];
        
        _dismiss = [Dismiss new];
        [_present setSelectedFrame:cell.frame];
        
         [_dismiss setSelectedFrame:cell.frame];
        
        [self performSegueWithIdentifier:@"presentStory" sender:self];

    }
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    UIViewController* controller = (UIViewController*)segue.destinationViewController;
    controller.transitioningDelegate = self;

//    controller.modalPresentationStyle = UIModalPresentationCustom;
//    controller.modalPresentationCapturesStatusBarAppearance = YES;
}

- (id <UIViewControllerAnimatedTransitioning>)animationControllerForPresentedController:(UIViewController *)presented presentingController:(UIViewController *)presenting sourceController:(UIViewController *)source {
    
    return _present;
}




- (id <UIViewControllerAnimatedTransitioning>)animationControllerForDismissedController:(UIViewController *)dismissed {
    return _dismiss;
}

-(CGSize) collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath {
    if([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        return CGSizeMake(CGRectGetWidth(collectionView.frame), 456);
    } else {
    
    int numberOfItemsInRow = 2;
    long rowNumber = indexPath.item / numberOfItemsInRow;
    CGFloat compressedWidth = CGRectGetWidth(collectionView.frame) / 3;
    CGFloat expandedWidth = (CGRectGetWidth(collectionView.frame) / 3) * 2;
    BOOL isEvenRow = rowNumber % 2 == 0;
    BOOL isFirstItem = indexPath.item % numberOfItemsInRow != 0;
    CGFloat width = 0.0;
    if(isEvenRow) {
        width = isFirstItem ? compressedWidth : expandedWidth;
    } else {
        width = isFirstItem ? expandedWidth : compressedWidth;
    }
    
    return CGSizeMake(width, 456.0);
    }
}


-(CGSize) collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout referenceSizeForHeaderInSection:(NSInteger)section {
    return CGSizeMake(CGRectGetWidth(collectionView.frame), 81);
}

-(UICollectionReusableView *) collectionView:(UICollectionView *)collectionView viewForSupplementaryElementOfKind:(NSString *)kind atIndexPath:(NSIndexPath *)indexPath {
    TodaySectionHeaderCell *headerView = [collectionView dequeueReusableSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:@"Header" forIndexPath:indexPath];
    
    [[headerView viewWithTag:1] setText:[string uppercaseString]];
    return headerView;
}

-(UIEdgeInsets) collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout insetForSectionAtIndex:(NSInteger)section {
    return UIEdgeInsetsMake(8, 0, 8, 0);
}


-(void) registerCell:(NSString *)name forIdentifier:(NSString *)ident {
    [self.collectionView registerNib:[UINib nibWithNibName:name bundle:nil] forCellWithReuseIdentifier:ident];
}


@end
