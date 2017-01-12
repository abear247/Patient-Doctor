//
//  Patient.h
//  Patient-Doctor
//
//  Created by Alex Bearinger on 2017-01-12.
//  Copyright © 2017 Alex Bearinger. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Doctor.h"

@interface Patient : NSObject

@property (nonatomic) NSInteger age;
@property (nonatomic) NSString *name;
@property (nonatomic) BOOL validCard;
@property (nonatomic) NSMutableSet *symptoms;
@property (nonatomic) NSMutableSet *medications;

-(instancetype)initWithName:(NSString *)name age:(NSInteger)age;

-(void)visitDoctor:(Doctor *)doctor;


-(void)requestMedication:(Doctor *)doctor;
@end
