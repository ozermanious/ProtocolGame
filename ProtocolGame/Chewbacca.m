//
//  Chewbacca.m
//  ProtocolGame
//
//  Created by Vladimir Ozerov on 11/02/2018.
//  Copyright © 2018 SberTech. All rights reserved.
//

#import "Chewbacca.h"
#import "ChewbaccaProtocol.h"


@implementation Chewbacca

+ (void)loadProtocol
{
	Protocol *protocol = @protocol(ChewbaccaProtocol);
	NSLog(@"Protocol loaded: %@", protocol);
}

@end
