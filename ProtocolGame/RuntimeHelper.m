//
//  RuntimeHelper.m
//  ProtocolGame
//
//  Created by Vladimir Ozerov on 11/02/2018.
//  Copyright © 2018 SberTech. All rights reserved.
//

#import "RuntimeHelper.h"
#import <objc/runtime.h>


@implementation RuntimeHelper

+ (void)exploreChewbaccaProtocol
{
	[RuntimeHelper exploreProtocolWithName:@"ChewbaccaProtocol"];
}

+ (void)exploreProtocolWithName:(NSString *)protocolName
{
	CLog(@"\n\n");
	CLog(@"[RuntimeHelper] Exploring @\"%@\"...", protocolName);

	Protocol *protocol = NSProtocolFromString(protocolName);
	if (!protocol)
	{
		CLog(@"⚠️ Protocol not found!");
	}
	else
	{
		CLog(@"✅ Protocol found: %@", protocol);

		unsigned int count = 0;
		struct objc_method_description *methodList = protocol_copyMethodDescriptionList(protocol, YES, YES, &count);
		for (unsigned int methodIndex = 0; methodIndex < count; methodIndex++)
		{
			struct objc_method_description method = methodList[methodIndex];
			NSString *methodName = NSStringFromSelector(method.name);
			NSString *methodTypes = [NSString stringWithUTF8String:method.types];
			CLog(@"Method: %@ (%@)", methodName, methodTypes);
		}
		free(methodList);
	}
	CLog(@"\n\n");
}

@end
