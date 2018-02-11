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
	Protocol *chewbaccaProtocol = NSProtocolFromString(@"ChewbaccaProtocol");
	
	unsigned int count = 0;
	struct objc_method_description *methodList = protocol_copyMethodDescriptionList(chewbaccaProtocol, YES, YES, &count);
	for (unsigned int methodIndex = 0; methodIndex < count; methodIndex++)
	{
		struct objc_method_description method = methodList[methodIndex];
		NSString *methodName = NSStringFromSelector(method.name);
		NSString *methodTypes = [NSString stringWithUTF8String:method.types];
		
		NSLog(@"🛠 %@ (%@)", methodName, methodTypes);
	}
	free(methodList);
}


@end
