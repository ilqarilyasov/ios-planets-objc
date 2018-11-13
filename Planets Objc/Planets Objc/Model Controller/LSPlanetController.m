//
//  LSPlanetController.m
//  Planets Objc
//
//  Created by Ilgar Ilyasov on 11/12/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

#import "LSPlanetController.h"
#import "LSPlanet.h"

@implementation LSPlanetController

// MARK: - Method

// - (returnType)methodNameWith1stParameterExternalName: (1stParameterType*) 1staParameterLocalName
//                              2ndParameterExternalName: (2ndParameterType*) 2ndParameterLocalName

- (instancetype)init {
    self = [super init];

    if (self) {
        _planetsWithPluto = [[NSArray alloc] initWithObjects:
                             [[LSPlanet alloc] initWithImageName:@"earth" name:@"Earth"],
                             [[LSPlanet alloc] initWithImageName:@"jupiter" name:@"Jupiter"],
                             [[LSPlanet alloc] initWithImageName:@"mars" name:@"Mars"],
                             [[LSPlanet alloc] initWithImageName:@"mercury" name:@"Mercury"],
                             [[LSPlanet alloc] initWithImageName:@"neptune" name:@"Neptune"],
                             [[LSPlanet alloc] initWithImageName:@"saturn" name:@"Saturn"],
                             [[LSPlanet alloc] initWithImageName:@"uranus" name:@"Uranus"],
                             [[LSPlanet alloc] initWithImageName:@"venus" name:@"Venus"],
                             [[LSPlanet alloc] initWithImageName:@"pluto" name:@"Pluto"]
                             , nil];

        _planetsWithoutPluto = [[NSArray alloc] initWithObjects:
                                [[LSPlanet alloc] initWithImageName:@"earth" name:@"Earth"],
                                [[LSPlanet alloc] initWithImageName:@"jupiter" name:@"Jupiter"],
                                [[LSPlanet alloc] initWithImageName:@"mars" name:@"Mars"],
                                [[LSPlanet alloc] initWithImageName:@"mercury" name:@"Mercury"],
                                [[LSPlanet alloc] initWithImageName:@"neptune" name:@"Neptune"],
                                [[LSPlanet alloc] initWithImageName:@"saturn" name:@"Saturn"],
                                [[LSPlanet alloc] initWithImageName:@"uranus" name:@"Uranus"],
                                [[LSPlanet alloc] initWithImageName:@"venus" name:@"Venus"]
                                , nil];
    }
    return self;
}

- (NSArray *) planets {
    NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];

    if ([userDefaults boolForKey: @"ShouldShowPluto"]) {
        return _planetsWithPluto;
    }
    return _planetsWithoutPluto;
}

//- (NSMutableArray *) planetsCP {
//
//    _planets = [[NSMutableArray alloc] initWithObjects:
//                [[LSPlanet alloc] initWithImageName:@"earth" name:@"Earth"],
//                [[LSPlanet alloc] initWithImageName:@"jupiter" name:@"Jupiter"],
//                [[LSPlanet alloc] initWithImageName:@"mars" name:@"Mars"],
//                [[LSPlanet alloc] initWithImageName:@"mercury" name:@"Mercury"],
//                [[LSPlanet alloc] initWithImageName:@"neptune" name:@"Neptune"],
//                [[LSPlanet alloc] initWithImageName:@"saturn" name:@"Saturn"],
//                [[LSPlanet alloc] initWithImageName:@"uranus" name:@"Uranus"],
//                [[LSPlanet alloc] initWithImageName:@"venus" name:@"Venus"]
//                , nil];
//
//    NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
//    LSPlanet * planetWithPluto = [[LSPlanet alloc] initWithImageName:@"pluto" name:@"Pluto"];
//
//    if ([userDefaults boolForKey:@"ShouldShowPluto"]) {
//        [ _planets addObject:planetWithPluto];
//    }
//
//    return _planets;
//}

@end
