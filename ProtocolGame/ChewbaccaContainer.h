//
//  ChewbaccaContainer.h
//  ProtocolGame
//
//  Created by Vladimir Ozerov on 11/02/2018.
//  Copyright © 2018 SberTech. All rights reserved.
//

#import <Foundation/Foundation.h>


@protocol ChewbaccaProtocol;


@interface ChewbaccaContainer : NSObject

@property (nonatomic, strong) id<ChewbaccaProtocol> chewbacca;

- (void)cheweeAction;

@end
