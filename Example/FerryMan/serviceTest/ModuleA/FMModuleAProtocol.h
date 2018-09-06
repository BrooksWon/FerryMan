//
//  FMServiceAModuleProtocol.h
//  FerryMan
//
//  Created by BrooksWon on 09/06/2018.
//  Copyright (c) 2018 BrooksWon. All rights reserved.
//

#ifndef FMServiceAModuleProtocol_h
#define FMServiceAModuleProtocol_h

//该模式为最细颗粒度的解耦方式，用于不同模块module之间，同一模块内不同组件service之间
//外部模块通过FMModuleAProtocol接口访问数据，moduleA模块内组件访问通过每个组件service对应的protocol访问数据

@protocol FMServiceA1Protocol <NSObject>

- (id)getServiceA1Data;

@end


@protocol FMServiceA2Protocol <NSObject>

- (id)getServiceA2Data;

@end

@protocol FMModuleAProtocol <NSObject>

- (id)getServiceA1Data;

- (id)getServiceA2Data;

@end


#endif /* FMServiceAModuleProtocol_h */
