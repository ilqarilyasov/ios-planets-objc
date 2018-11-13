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

// @property (attribute) propertyType* propertyName;

@property (nonatomic) NSString* name;
@property (nonatomic) NSString* imageName;

// MARK: - Initializer declaration

// - (returnType)methodNameWith1stParameterExternalName: (1stParameterType*) 1stParameterLocalName
//                          2ndParameterName:(2ndParameterExternalName*) 2ndParameterLocalName;

- (instancetype)initWithImageName: (NSString*)imageName name:(NSString*)name;

@end

NS_ASSUME_NONNULL_END
