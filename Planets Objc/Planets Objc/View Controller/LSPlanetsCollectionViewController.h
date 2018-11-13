//
//  LSPlanetsCollectionViewController.h
//  Planets Objc
//
//  Created by Ilgar Ilyasov on 11/12/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "LSPlanetController.h"

NS_ASSUME_NONNULL_BEGIN

@interface LSPlanetsCollectionViewController : UICollectionViewController

@property LSPlanetController* planetController;

@end

NS_ASSUME_NONNULL_END
