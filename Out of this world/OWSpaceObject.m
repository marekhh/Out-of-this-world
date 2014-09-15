//
//  OWSpaceObject.m
//  Out of this world
//
//  Created by Familie Oltmanns on 15.09.14.
//
//

#import "OWSpaceObject.h"
#import "AstronomicalData.h"

@implementation OWSpaceObject


-(instancetype)init{
    self = [self initWithPlanetData:nil andImage:nil];
    return self;
}

-(instancetype)initWithPlanetData:(NSDictionary *)data andImage:(UIImage *)image{
    self = [super init];
    
    self.name = data[PLANET_NAME];
    self.gravitationalForce = [data[PLANET_GRAVITY] floatValue];
    self.diameter = [data[PLANET_DIAMETER] floatValue];
    self.yearLength = [data[PLANET_YEAR_LENGTH] floatValue];
    self.dayLength = [data[PLANET_DAY_LENGTH] floatValue];
    self.temperature = [data[PLANET_TEMPERATURE] floatValue];
    self.numberOfMoons = [data[PLANET_NUMBER_OF_MOONS] intValue];
    self.nickname = data[PLANET_NICKNAME];
    self.interestingFact = data[PLANET_INTERESTING_FACT];
    
    self.spaceImage = image;
    
    return self;
}

@end
