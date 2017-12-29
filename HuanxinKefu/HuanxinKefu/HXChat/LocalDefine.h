/************************************************************
  *  * EaseMob CONFIDENTIAL 
  * __________________ 
  * Copyright (C) 2013-2014 EaseMob Technologies. All rights reserved. 
  *  
  * NOTICE: All information contained herein is, and remains 
  * the property of EaseMob Technologies.
  * Dissemination of this information or reproduction of this material 
  * is strictly forbidden unless prior written permission is obtained
  * from EaseMob Technologies.
  */

#ifndef ChatDemo_UI2_0_ChatDemoUIDefine_h
#define ChatDemo_UI2_0_ChatDemoUIDefine_h

#define IS_IPHONE_5 ( fabs( ( double )[ [ UIScreen mainScreen ] bounds ].size.height - ( double )568 ) < DBL_EPSILON )
#define iPhoneXBottomHeight  ([UIScreen mainScreen].bounds.size.height==812?34:0)
#define kWeakSelf __weak __typeof__(self) weakSelf = self;
#define RGBACOLOR(r,g,b,a) [UIColor colorWithRed:(r)/255.0 green:(g)/255.0 blue:(b)/255.0 alpha:(a)]

//notification
#define KNOTIFICATION_ADDMSG_TO_LIST @"KNOTIFICATION_ADDMSG_TO_LIST"
#define KNOTIFICATION_LOGINCHANGE @"loginStateChange"
#define KNOTIFICATION_CHAT @"chat"
#define KNOTIFICATION_SETTINGCHANGE @"settingChange"

#define CHATVIEWBACKGROUNDCOLOR [UIColor colorWithRed:0.936 green:0.932 blue:0.907 alpha:1]


// 必填项，appkey获取地址：kefu.easemob.com，“管理员模式 > 渠道管理 > 手机APP”页面的关联的“AppKey”
#define kDefaultAppKey @"1453171227061977#kefuchannelapp51383"
// 必填项，appkey获取地址：kefu.easemob.com，“管理员模式 > 渠道管理 > 手机APP”页面的关联的“IM服务号”
#define kDefaultCustomerName @"kefuchannelimid_364193"
// 自定义客服的名称
#define kDefaultCustomerNickname @"环信客服"
// 必填项，tenantId获取地址：kefu.easemob.com，“管理员模式 > 设置 > 企业信息”页面的“租户ID”
#define kDefaultTenantId @"51383"
// 暂时不用管
#define kDefaultProjectId @"72470"


#define kAppKey @"KF_appkey"
#define kCustomerName @"KF_name"
#define kCustomerNickname @"KF_nickname"
#define kCustomerTenantId @"KF_tenantId"
#define kCustomerProjectId @"KF_projectId"
//#define ApnsCerNameDelelop @"development"
//#define ApnsCerNamePush    @"push"

#define hxPassWord @"123456"

#endif
