//
//  LSPlanet.h
//  Planets Objc
//
//  Created by Ilgar Ilyasov on 11/12/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface LSPlanet : NSObject

// MARK: - Properties

@property (nonatomic) NSString* name;
@property (nonatomic) NSString* imageName;

// MARK: - Initializer

- (instancetype)initWithImageName: (NSString*)imageName name:(NSString*)name;

@end

NS_ASSUME_NONNULL_END
