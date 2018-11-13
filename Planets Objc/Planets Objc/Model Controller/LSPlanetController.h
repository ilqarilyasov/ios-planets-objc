//
//  LSPlanetController.h
//  Planets Objc
//
//  Created by Ilgar Ilyasov on 11/12/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface LSPlanetController : NSObject

// MARK: Properties

// @property (attribute) propertyType* propertyName;

@property (readonly) NSArray* planetsWithPluto;
@property (readonly) NSArray* planetsWithoutPluto;

@end

NS_ASSUME_NONNULL_END
