
#import "UploadImageCell.h"
#import "DisplayImageCell.h"

@implementation UploadImageCell

- (void)dealloc {
    self.collectionViewFlowLayout = nil;
    self.collectionView = nil;
}

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self creatCollectionView];
        [self.contentView addSubview:self.collectionView];
    }
    return self;
}

- (void)creatCollectionView {
    self.collectionViewFlowLayout = [[UICollectionViewFlowLayout alloc] init];
    self.collectionViewFlowLayout.sectionInset = UIEdgeInsetsMake(1, 10, 10, 10);
    self.collectionViewFlowLayout.itemSize = CGSizeMake(150, 150);
    
    self.collectionViewFlowLayout.scrollDirection = UICollectionViewScrollDirectionHorizontal;
    self.collectionView = [[UICollectionView alloc] initWithFrame:CGRectZero collectionViewLayout:self.collectionViewFlowLayout];
    [self.collectionView registerClass:[DisplayImageCell class] forCellWithReuseIdentifier:@"cellX"];
    self.collectionView.backgroundColor = [UIColor whiteColor];
    self.collectionView.showsHorizontalScrollIndicator = NO;
}
- (void)layoutSubviews {
    [super layoutSubviews];
    self.collectionView.frame = self.contentView.bounds;
}

@end