//
//  LSPlanet.m
//  Planets Objc
//
//  Created by Ilgar Ilyasov on 11/12/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

#import "LSPlanet.h"
#import <UIKit/UIKit.h>

@implementation LSPlanet

// MARK: Initializer method

// - (returnType)methodNameWith1stParameterExternalName: (1stParameterType*) 1stParameterLocalName
//                          2ndParameterName:(2ndParameterExternalName*) 2ndParameterLocalName;

- (instancetype)initWithImageName:(NSString *)imageName name:(NSString *)name {
    self = [super init];
    
    if(self) {
        _imageName = imageName;
        _name = name;
    }
    return self;
}

@end
