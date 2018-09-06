#ifdef __OBJC__
#import <UIKit/UIKit.h>
#else
#ifndef FOUNDATION_EXPORT
#if defined(__cplusplus)
#define FOUNDATION_EXPORT extern "C"
#else
#define FOUNDATION_EXPORT extern
#endif
#endif
#endif

#import "FerryMan.h"
#import "FMRouter.h"
#import "FMRouterModule.h"
#import "FMRouterModuleProtocol.h"
#import "FMServiceManager.h"
#import "FMServiceModule.h"
#import "FMServiceModuleProtocol.h"

FOUNDATION_EXPORT double FerryManVersionNumber;
FOUNDATION_EXPORT const unsigned char FerryManVersionString[];

