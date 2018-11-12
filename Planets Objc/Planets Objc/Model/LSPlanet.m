//
//  LSPlanet.m
//  Planets Objc
//
//  Created by Ilgar Ilyasov on 11/12/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

#import "LSPlanet.h"

@implementation LSPlanet

- (instancetype)initWithImageName:(NSString *)imageName name:(NSString *)name {
    self = [super init];
    
    if(self) {
        _imageName = imageName;
        _name = name;
    }
    return self;
}

@end
