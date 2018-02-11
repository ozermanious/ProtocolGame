//
//  Chewbacca_mock.m
//  ProtocolGame
//
//  Created by Vladimir Ozerov on 11/02/2018.
//  Copyright © 2018 SberTech. All rights reserved.
//

#import "Chewbacca_mock.h"
#import "ChewbaccaProtocol_mock.h"


@implementation Chewbacca_mock

+ (void)loadProtocol
{
	Protocol *protocol = @protocol(ChewbaccaProtocol);
	CLog(@"[LOADED] %@", protocol);
}

@end
