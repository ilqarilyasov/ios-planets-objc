//
//  LSPlanetsCollectionViewController.m
//  Planets Objc
//
//  Created by Ilgar Ilyasov on 11/12/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

#import "LSPlanetsCollectionViewController.h"
#import "LSPlanetCollectionViewCell.h"
#import "LSplanetController.h"
#import "LSPlanet.h"

@interface LSPlanetsCollectionViewController ()

@end

@implementation LSPlanetsCollectionViewController


- (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    
    if (self) {
        _planetController = [[LSPlanetController alloc] init];
    }
    return self;
}

- (instancetype)initWithCollectionViewLayout:(UICollectionViewLayout *)layout
{
    self = [super initWithCollectionViewLayout:layout];
    if (self) {
        _planetController = [[LSPlanetController alloc] init];
    }
    return self;
}

- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
    if (self) {
        _planetController = [[LSPlanetController alloc] init];
    }
    return self;
}

static NSString * const reuseIdentifier = @"PlanetCell";

- (void)viewDidLoad {
    [super viewDidLoad];    
    // Register cell classes
    [self.collectionView registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:reuseIdentifier];
}


- (void) viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    [self.collectionView reloadData];
}

#pragma mark <UICollectionViewDataSource>

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return 1;
}


- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return _planetController.planets.count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    LSPlanetCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:reuseIdentifier forIndexPath:indexPath];
    
    LSPlanet *planet = [_planetController.planets objectAtIndex:indexPath.row];
    cell.planetImageView.image = [UIImage imageNamed:planet.imageName];
    cell.planetNameLabel.text = planet.name;
    
    return cell;
}

@end
