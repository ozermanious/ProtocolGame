//
//  ChewbaccaContainer.m
//  ProtocolGame
//
//  Created by Vladimir Ozerov on 11/02/2018.
//  Copyright © 2018 SberTech. All rights reserved.
//

#import "ChewbaccaContainer.h"
#import "ChewbaccaProtocol.h"


@implementation ChewbaccaContainer

- (void)cheweeAction
{
	CLog(@"[CALLED] ChewbaccaContainer.cheweeAction");
	[self.chewbacca chewee_original];
}

@end
