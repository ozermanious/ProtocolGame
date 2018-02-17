//
//  Chewbacca.h
//  Chewbacca
//
//  Created by Vladimir Ozerov on 11/02/2018.
//  Copyright © 2018 SberTech. All rights reserved.
//

#import <Foundation/Foundation.h>


@protocol ChewbaccaProtocol;


@interface Chewbacca_lib : NSObject

@property (nonatomic, strong) id<ChewbaccaProtocol> chewbacca;

@end
