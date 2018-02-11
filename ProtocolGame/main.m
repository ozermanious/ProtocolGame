//
//  main.m
//  ProtocolGame
//
//  Created by Vladimir Ozerov on 11/02/2018.
//  Copyright © 2018 SberTech. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "RuntimeHelper.h"
#import "ChewbaccaContainer.h"
#import "Chewbacca.h"


int main(int argc, const char * argv[])
{
	@autoreleasepool
	{
		ChewbaccaContainer *container = [ChewbaccaContainer new];
		container.chewbacca = [Chewbacca new];
		[container cheweeAction];
		
		[RuntimeHelper exploreChewbaccaProtocol];
	}
	return 0;
}
