/*******************************************************************************
 * Copyright (c) 2014 IBM Corp.
 *
 * All rights reserved. This program and the accompanying materials
 * are made available under the terms of the Eclipse Public License v1.0
 * and Eclipse Distribution License v1.0 which accompany this distribution.
 *
 * The Eclipse Public License is available at
 *   http://www.eclipse.org/legal/epl-v10.html
 * and the Eclipse Distribution License is available at
 *   http://www.eclipse.org/org/documents/edl-v10.php.
 *
 * Contributors:
 *    Mike Robertson - initial contribution
 *******************************************************************************/

//
//  Constants.m
//  IoTstarter
//

#import "Constants.h"

@implementation Constants

/** File name for storing application properties on device */
NSString * const IOTArchiveFileName   = @"/IoTstarter.archive";
/** Application property names */
NSString * const IOTAuthToken         = @"authtoken";
NSString * const IOTDeviceID          = @"deviceid";
NSString * const IOTOrganization      = @"organization";

// IoT API Constants
NSString * const IOTDeviceType        = @"iPhone";

// MQTT Constants

NSString * const IOTServerAddress     = @"%@.messaging.internetofthings.ibmcloud.com";
int        const IOTServerPort        = 1883;
// d:org:type:id
NSString * const IOTClientID          = @"d:%@:%@:%@";
NSString * const IOTEventTopic        = @"iot-2/evt/%@/fmt/%@";
NSString * const IOTCommandTopic      = @"iot-2/cmd/%@/fmt/%@";

// M2M Demos MQTT Properties
NSString * const IOTM2MOrgID          = @"m2m";
NSString * const IOTM2MDemosServer    = @"messagesight.demos.ibm.com";
NSString * const IOTM2MClientID       = @"d:m2m:%@";
NSString * const IOTM2MEventTopic     = @"iotstarter/%@/%@";

// IoT QuickStart MQTT Properties
NSString * const IOTQuickStartOrgID   = @"quickstart";
NSString * const IOTQuickStartServer  = @"184.172.124.189";

// IoT Events and Commands
NSString * const IOTAccelEvent        = @"accel";
NSString * const IOTColorEvent        = @"color";
NSString * const IOTTouchMoveEvent    = @"touchmove";
NSString * const IOTSwipeEvent        = @"swipe";
NSString * const IOTLightEvent        = @"light";
NSString * const IOTTextEvent         = @"text";
NSString * const IOTAlertEvent        = @"alert";
NSString * const IOTDirectionEvent    = @"direction";
NSString * const IOTGamepadEvent      = @"gamepad";
NSString * const IOTStatusEvent       = @"status";

// Login View button and placeholder text
NSString * const IOTOrgPlaceholder    = @"Organization ID";
NSString * const IOTDevicePlaceholder = @"Device ID";
NSString * const IOTAuthPlaceholder   = @"Authorization Token";
NSString * const IOTShowTokenLabel    = @"Show Auth Token";
NSString * const IOTHideTokenLabel    = @"Hide Auth Token";
NSString * const IOTActivateLabel     = @"Activate Sensor";
NSString * const IOTDeactivateLabel   = @"Deactivate Sensor";

double const IOTSensorFreqDefault     = 1.0;
double const IOTSensorFreqFast        = 0.2;

// Extra strings
NSString * const YES_STRING           = @"Yes";
NSString * const NO_STRING            = @"No";
NSString * const CANCEL_STRING        = @"Cancel";
NSString * const SUBMIT_STRING        = @"Submit";
NSString * const OK_STRING            = @"OK";

// JSON Fields
NSString * const JSON_SCREEN_X        = @"screenX";
NSString * const JSON_SCREEN_Y        = @"screenY";
NSString * const JSON_DELTA_X         = @"deltaX";
NSString * const JSON_DELTA_Y         = @"deltaY";
NSString * const JSON_ENDED           = @"ended";

NSString * const JSON_TEXT            = @"text";

NSString * const JSON_COLOR_R         = @"r";
NSString * const JSON_COLOR_G         = @"g";
NSString * const JSON_COLOR_B         = @"b";
NSString * const JSON_ALPHA           = @"alpha";

NSString * const JSON_ROLL            = @"roll";
NSString * const JSON_PITCH           = @"pitch";
NSString * const JSON_YAW             = @"yaw";
NSString * const JSON_ACCEL_X         = @"acceleration_x";
NSString * const JSON_ACCEL_Y         = @"acceleration_y";
NSString * const JSON_ACCEL_Z         = @"acceleration_z";
NSString * const JSON_LAT             = @"lat";
NSString * const JSON_LON             = @"lon";

NSString * const JSON_BUTTON          = @"button";
NSString * const JSON_DPAD_X          = @"x";
NSString * const JSON_DPAD_Y          = @"y";
NSString * const JSON_DIRECTION_UP    = @"UP";
NSString * const JSON_DIRECTION_DOWN  = @"DOWN";
NSString * const JSON_DIRECTION_LEFT  = @"LEFT";
NSString * const JSON_DIRECTION_RIGHT = @"RIGHT";
NSString * const JSON_BUTTON_A        = @"A";
NSString * const JSON_BUTTON_B        = @"B";
NSString * const JSON_BUTTON_X        = @"X";
NSString * const JSON_BUTTON_Y        = @"Y";

@end

/*
 server = <org>.messaging.internetofthings.ibmcloud.com:1883
 username = "use-token-auth"
 password = token returned from registering device
 clientid = d:<org>:iPhone:<deviceid>
 
 topic = iot-2/evt/<event-type-id>/fmt/<format>
    <event-type-id> = ???
    <format> = json?
 
 topic = iot-2/cmd/<command-type-id>/fmt/<format>
 <command-type-id> = ???
 <format> = json?
 
 QoS=0
 No retained support
 
 JSON payload, top level = d
 {
 "d": {
 "name1": "stringvalue",
 "name2": intvalue,
 ...
 }
 }
 */

