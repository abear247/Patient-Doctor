//
//  Medications.h
//  Patient-Doctor
//
//  Created by Alex Bearinger on 2017-01-12.
//  Copyright © 2017 Alex Bearinger. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Medication : NSObject

@property NSString *name;
@property NSString *purpose;
@property NSInteger amount;

-(instancetype)initWithName:(NSString *)name purpose:(NSString *)purpose amount:(NSInteger)amount;

@end
