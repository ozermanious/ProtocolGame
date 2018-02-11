//
//  main.m
//  ProtocolGame
//
//  Created by Vladimir Ozerov on 11/02/2018.
//  Copyright © 2018 SberTech. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "RuntimeHelper.h"
#import "Chewbacca.h"
#import "Chewbacca_mock.h"


int main(int argc, const char * argv[])
{
	@autoreleasepool
	{
		[Chewbacca loadProtocol];
		[Chewbacca_mock loadProtocol];

		[RuntimeHelper exploreChewbaccaProtocol];
	}
	return 0;
}
