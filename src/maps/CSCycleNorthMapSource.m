//
//  CSCycleNorthMapSource.m
//  CycleStreets
//
//  Created by Neil Edwards on 09/10/2014.
//  Copyright (c) 2014 CycleStreets Ltd. All rights reserved.
//

#import "CSCycleNorthMapSource.h"

@implementation CSCycleNorthMapSource


-(int)maxZoom{
	return 19;
}

-(int)minZoom{
	return 1;
}

- (NSString *)tileTemplate
{
	
	return @"http://tile.cyclestreets.net/cyclenorthstaffs/{z}/{x}/{y}.png";
}

- (NSString *)uniqueTilecacheKey
{
	return MAPPING_BASE_CYCLENORTH;
}

- (NSString *)shortName
{
	return @"Cycle North Staffs";
}

- (NSString *)longDescription
{
	return @"Cycle North Staffs";
}

- (NSString *)shortDescription
{
	return @"Cycle North Staffs cycle map";
}

- (NSString *)shortAttribution
{
	return @" © Cycle North Staffs; data © OpenStreetMap contributors ";
}

- (NSString *)longAttribution
{
	return @"Map data © Cycle North Staffs, licensed under Creative Commons Share Alike By Attribution.";
}


-(NSDictionary*)settingsDict{
	
	return @{@"id":self.uniqueTilecacheKey, @"title":self.shortName,@"description":self.shortDescription,@"thumbnailimage":self.thumbnailImage};
	
}

-(NSString*)thumbnailImage{
	return @"CNSMapStyle.png";
}


@end