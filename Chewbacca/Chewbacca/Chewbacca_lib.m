//
//  Chewbacca.m
//  Chewbacca
//
//  Created by Vladimir Ozerov on 11/02/2018.
//  Copyright © 2018 SberTech. All rights reserved.
//

#import "Chewbacca_lib.h"


@implementation Chewbacca_lib

+ (void)load
{
	Protocol *protocol = NSProtocolFromString(@"ChewbaccaProtocol");
	
	if (protocol)
	{
		CLog(@"[LIB] ✅ Protocol found: %@", protocol);
	}
	else
	{
		CLog(@"[LIB] ⚠️ Protocol not found!");
	}
}

@end
