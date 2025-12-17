.class public Lcom/calendarevents/RNCalendarEvents;
.super Lcom/facebook/react/bridge/ReactContextBaseJavaModule;
.source "RNCalendarEvents.java"

# interfaces
.implements Lcom/facebook/react/modules/core/PermissionListener;


# static fields
.field private static PERMISSION_REQUEST_CODE:I = 0x25

.field private static final RNC_PREFS:Ljava/lang/String; = "REACT_NATIVE_CALENDAR_PREFERENCES"

.field private static final permissionsPromises:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/facebook/react/bridge/Promise;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final reactContext:Lcom/facebook/react/bridge/ReactContext;


# direct methods
.method static bridge synthetic -$$Nest$maddCalendar(Lcom/calendarevents/RNCalendarEvents;Lcom/facebook/react/bridge/ReadableMap;)J
    .locals 0

    invoke-direct {p0, p1}, Lcom/calendarevents/RNCalendarEvents;->addCalendar(Lcom/facebook/react/bridge/ReadableMap;)J

    move-result-wide p0

    return-wide p0
.end method

.method static bridge synthetic -$$Nest$maddEvent(Lcom/calendarevents/RNCalendarEvents;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/ReadableMap;)J
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/calendarevents/RNCalendarEvents;->addEvent(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/ReadableMap;)J

    move-result-wide p0

    return-wide p0
.end method

.method static bridge synthetic -$$Nest$mfindEventById(Lcom/calendarevents/RNCalendarEvents;Ljava/lang/String;)Lcom/facebook/react/bridge/WritableNativeMap;
    .locals 0

    invoke-direct {p0, p1}, Lcom/calendarevents/RNCalendarEvents;->findEventById(Ljava/lang/String;)Lcom/facebook/react/bridge/WritableNativeMap;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mfindEventCalendars(Lcom/calendarevents/RNCalendarEvents;)Lcom/facebook/react/bridge/WritableNativeArray;
    .locals 0

    invoke-direct {p0}, Lcom/calendarevents/RNCalendarEvents;->findEventCalendars()Lcom/facebook/react/bridge/WritableNativeArray;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mfindEvents(Lcom/calendarevents/RNCalendarEvents;Lcom/facebook/react/bridge/Dynamic;Lcom/facebook/react/bridge/Dynamic;Lcom/facebook/react/bridge/ReadableArray;)Lcom/facebook/react/bridge/WritableNativeArray;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/calendarevents/RNCalendarEvents;->findEvents(Lcom/facebook/react/bridge/Dynamic;Lcom/facebook/react/bridge/Dynamic;Lcom/facebook/react/bridge/ReadableArray;)Lcom/facebook/react/bridge/WritableNativeArray;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mremoveCalendar(Lcom/calendarevents/RNCalendarEvents;Ljava/lang/String;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/calendarevents/RNCalendarEvents;->removeCalendar(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mremoveEvent(Lcom/calendarevents/RNCalendarEvents;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/calendarevents/RNCalendarEvents;->removeEvent(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/calendarevents/RNCalendarEvents;->permissionsPromises:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V
    .locals 0

    .line 52
    invoke-direct {p0, p1}, Lcom/facebook/react/bridge/ReactContextBaseJavaModule;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    iput-object p1, p0, Lcom/calendarevents/RNCalendarEvents;->reactContext:Lcom/facebook/react/bridge/ReactContext;

    return-void
.end method

.method private ReadableArrayToString(Lcom/facebook/react/bridge/ReadableArray;)Ljava/lang/String;
    .locals 5

    .line 985
    invoke-interface {p1}, Lcom/facebook/react/bridge/ReadableArray;->toArrayList()Ljava/util/ArrayList;

    move-result-object p1

    .line 986
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    .line 987
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 988
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x2c

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 990
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 991
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private addCalendar(Lcom/facebook/react/bridge/ReadableMap;)J
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Lcom/calendarevents/RNCalendarEvents;->reactContext:Lcom/facebook/react/bridge/ReactContext;

    .line 220
    invoke-virtual {v0}, Lcom/facebook/react/bridge/ReactContext;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 221
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "source"

    .line 224
    invoke-interface {p1, v2}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    const-string v3, "name"

    .line 227
    invoke-interface {p1, v3}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    const-string/jumbo v4, "title"

    .line 230
    invoke-interface {p1, v4}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    const-string v5, "color"

    .line 233
    invoke-interface {p1, v5}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    const-string v6, "accessLevel"

    .line 236
    invoke-interface {p1, v6}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    const-string v7, "ownerAccount"

    .line 239
    invoke-interface {p1, v7}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 243
    invoke-interface {p1, v2}, Lcom/facebook/react/bridge/ReadableMap;->getMap(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v2

    .line 245
    invoke-interface {v2, v3}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    const/4 v8, 0x0

    .line 249
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    const-string v9, "isLocalAccount"

    .line 250
    invoke-interface {v2, v9}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 251
    invoke-interface {v2, v9}, Lcom/facebook/react/bridge/ReadableMap;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    :cond_0
    const-string/jumbo v9, "type"

    .line 254
    invoke-interface {v2, v9}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_2

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_1

    goto :goto_0

    .line 255
    :cond_1
    new-instance p1, Ljava/lang/Exception;

    const-string v0, "new calendars require a `source` object with a `type`, or `isLocalAccount`: true"

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1

    .line 258
    :cond_2
    :goto_0
    invoke-interface {v2, v3}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "account_name"

    invoke-virtual {v1, v11, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    const-string v12, "LOCAL"

    if-eqz v10, :cond_3

    move-object v10, v12

    goto :goto_1

    :cond_3
    invoke-interface {v2, v9}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    :goto_1
    const-string v13, "account_type"

    invoke-virtual {v1, v13, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    invoke-interface {p1, v5}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v10, "calendar_color"

    invoke-virtual {v1, v10, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 261
    invoke-interface {p1, v6}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/calendarevents/RNCalendarEvents;->calAccessConstantMatchingString(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "calendar_access_level"

    invoke-virtual {v1, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 262
    invoke-interface {p1, v7}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v7, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    invoke-interface {p1, v3}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "calendar_displayName"

    .line 264
    invoke-interface {p1, v4}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v5, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    sget-object p1, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p1

    const-string v4, "caller_is_syncadapter"

    const-string/jumbo v5, "true"

    .line 268
    invoke-virtual {p1, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 269
    invoke-interface {v2, v3}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v11, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 270
    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_2

    :cond_4
    invoke-interface {v2, v9}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    :goto_2
    invoke-virtual {p1, v13, v12}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 272
    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    .line 274
    invoke-virtual {v0, p1, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p1

    .line 275
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0

    .line 246
    :cond_5
    new-instance p1, Ljava/lang/Exception;

    const-string v0, "new calendars require a `source` object with a `name`"

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1

    .line 240
    :cond_6
    new-instance p1, Ljava/lang/Exception;

    const-string v0, "new calendars require `ownerAccount`"

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1

    .line 237
    :cond_7
    new-instance p1, Ljava/lang/Exception;

    const-string v0, "new calendars require `accessLevel`"

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1

    .line 234
    :cond_8
    new-instance p1, Ljava/lang/Exception;

    const-string v0, "new calendars require `color`"

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1

    .line 231
    :cond_9
    new-instance p1, Ljava/lang/Exception;

    const-string v0, "new calendars require `title`"

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1

    .line 228
    :cond_a
    new-instance p1, Ljava/lang/Exception;

    const-string v0, "new calendars require `name`"

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1

    .line 225
    :cond_b
    new-instance p1, Ljava/lang/Exception;

    const-string v0, "new calendars require `source` object"

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private addEvent(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/ReadableMap;)J
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    move-object/from16 v9, p0

    move-object/from16 v0, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    .line 477
    new-instance v12, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd\'T\'HH:mm:ss.SSS\'Z\'"

    invoke-direct {v12, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    const-string v1, "skipAndroidTimezone"

    .line 479
    invoke-interface {v10, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v10, v1}, Lcom/facebook/react/bridge/ReadableMap;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "GMT"

    .line 483
    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v12, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    :goto_0
    iget-object v1, v9, Lcom/calendarevents/RNCalendarEvents;->reactContext:Lcom/facebook/react/bridge/ReactContext;

    .line 485
    invoke-virtual {v1}, Lcom/facebook/react/bridge/ReactContext;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    .line 486
    new-instance v14, Landroid/content/ContentValues;

    invoke-direct {v14}, Landroid/content/ContentValues;-><init>()V

    if-eqz v0, :cond_1

    const-string/jumbo v1, "title"

    .line 489
    invoke-virtual {v14, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const-string v0, "description"

    .line 492
    invoke-interface {v10, v0}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 493
    invoke-interface {v10, v0}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const-string v0, "location"

    .line 496
    invoke-interface {v10, v0}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "eventLocation"

    .line 497
    invoke-interface {v10, v0}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    const-string v0, "startDate"

    .line 500
    invoke-interface {v10, v0}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 501
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 502
    invoke-interface {v10, v0}, Lcom/facebook/react/bridge/ReadableMap;->getType(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableType;

    move-result-object v2

    .line 505
    :try_start_0
    sget-object v3, Lcom/facebook/react/bridge/ReadableType;->String:Lcom/facebook/react/bridge/ReadableType;

    if-ne v2, v3, :cond_4

    .line 506
    invoke-interface {v10, v0}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const-string v0, "dtstart"

    .line 507
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v14, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_1

    .line 508
    :cond_4
    sget-object v1, Lcom/facebook/react/bridge/ReadableType;->Number:Lcom/facebook/react/bridge/ReadableType;

    if-ne v2, v1, :cond_5

    const-string v1, "dtstart"

    .line 509
    invoke-interface {v10, v0}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    double-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v14, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 512
    invoke-virtual {v0}, Ljava/text/ParseException;->printStackTrace()V

    .line 513
    throw v0

    :cond_5
    :goto_1
    const-string v0, "endDate"

    .line 517
    invoke-interface {v10, v0}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 518
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 519
    invoke-interface {v10, v0}, Lcom/facebook/react/bridge/ReadableMap;->getType(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableType;

    move-result-object v2

    .line 522
    :try_start_1
    sget-object v3, Lcom/facebook/react/bridge/ReadableType;->String:Lcom/facebook/react/bridge/ReadableType;

    if-ne v2, v3, :cond_6

    .line 523
    invoke-interface {v10, v0}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const-string v2, "dtend"

    .line 524
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v14, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_2

    .line 525
    :cond_6
    sget-object v1, Lcom/facebook/react/bridge/ReadableType;->Number:Lcom/facebook/react/bridge/ReadableType;

    if-ne v2, v1, :cond_7

    const-string v1, "dtend"

    .line 526
    invoke-interface {v10, v0}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    double-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v14, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    .line 529
    invoke-virtual {v0}, Ljava/text/ParseException;->printStackTrace()V

    .line 530
    throw v0

    :cond_7
    :goto_2
    const-string v1, "recurrence"

    .line 534
    invoke-interface {v10, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 535
    invoke-interface {v10, v1}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v8}, Lcom/calendarevents/RNCalendarEvents;->createRecurrenceRule(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Lcom/facebook/react/bridge/ReadableArray;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8

    const-string v2, "rrule"

    .line 537
    invoke-virtual {v14, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    const-string v1, "recurrenceRule"

    .line 541
    invoke-interface {v10, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 542
    invoke-interface {v10, v1}, Lcom/facebook/react/bridge/ReadableMap;->getMap(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v1

    const-string v2, "frequency"

    .line 544
    invoke-interface {v1, v2}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 545
    invoke-interface {v1, v2}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "interval"

    .line 554
    invoke-interface {v1, v3}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    const-string v3, "interval"

    .line 555
    invoke-interface {v1, v3}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_3

    :cond_9
    const/4 v3, 0x0

    :goto_3
    const-string v8, "duration"

    .line 558
    invoke-interface {v1, v8}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 559
    invoke-interface {v1, v8}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_4

    :cond_a
    const-string v4, "PT1H"

    :goto_4
    move-object v7, v4

    const-string v4, "occurrence"

    .line 562
    invoke-interface {v1, v4}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    const-string v4, "occurrence"

    .line 563
    invoke-interface {v1, v4}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object v5, v4

    goto :goto_5

    :cond_b
    const/4 v5, 0x0

    .line 566
    :goto_5
    invoke-interface {v1, v0}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 567
    invoke-interface {v1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getType(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableType;

    move-result-object v4

    .line 568
    new-instance v6, Ljava/text/SimpleDateFormat;

    const-string/jumbo v15, "yyyyMMdd\'T\'HHmmss\'Z\'"

    invoke-direct {v6, v15}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 570
    sget-object v15, Lcom/facebook/react/bridge/ReadableType;->String:Lcom/facebook/react/bridge/ReadableType;

    if-ne v4, v15, :cond_c

    .line 571
    invoke-interface {v1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    move-object/from16 v16, v7

    move-object v15, v8

    goto :goto_6

    .line 572
    :cond_c
    sget-object v15, Lcom/facebook/react/bridge/ReadableType;->Number:Lcom/facebook/react/bridge/ReadableType;

    if-ne v4, v15, :cond_d

    .line 573
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    move-object/from16 v16, v7

    move-object v15, v8

    .line 574
    invoke-interface {v1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v7

    double-to-long v7, v7

    invoke-virtual {v4, v7, v8}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 575
    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    goto :goto_6

    :cond_d
    move-object/from16 v16, v7

    move-object v15, v8

    const/4 v4, 0x0

    :goto_6
    const-string v0, "daysOfWeek"

    .line 579
    invoke-interface {v1, v0}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    const-string v0, "daysOfWeek"

    .line 580
    invoke-interface {v1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getArray(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableArray;

    move-result-object v0

    move-object v6, v0

    goto :goto_7

    :cond_e
    const/4 v6, 0x0

    :goto_7
    const-string/jumbo v0, "weekStart"

    .line 583
    invoke-interface {v1, v0}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    const-string/jumbo v0, "weekStart"

    .line 584
    invoke-interface {v1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v7, v0

    goto :goto_8

    :cond_f
    const/4 v7, 0x0

    :goto_8
    const-string/jumbo v0, "weekPositionInMonth"

    .line 587
    invoke-interface {v1, v0}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    const-string/jumbo v0, "weekPositionInMonth"

    .line 588
    invoke-interface {v1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object v8, v0

    goto :goto_9

    :cond_10
    const/4 v8, 0x0

    :goto_9
    move-object/from16 v1, p0

    move-object/from16 v0, v16

    .line 591
    invoke-direct/range {v1 .. v8}, Lcom/calendarevents/RNCalendarEvents;->createRecurrenceRule(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Lcom/facebook/react/bridge/ReadableArray;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_11

    .line 593
    invoke-virtual {v14, v15, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_11
    if-eqz v1, :cond_12

    const-string v0, "rrule"

    .line 596
    invoke-virtual {v14, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_12
    const-string v0, "allDay"

    .line 601
    invoke-interface {v10, v0}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 602
    invoke-interface {v10, v0}, Lcom/facebook/react/bridge/ReadableMap;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v14, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_13
    const-string/jumbo v0, "timeZone"

    .line 605
    invoke-interface {v10, v0}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    const-string/jumbo v0, "timeZone"

    .line 606
    invoke-interface {v10, v0}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "eventTimezone"

    invoke-virtual {v14, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    .line 608
    :cond_14
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    const-string v1, "eventTimezone"

    invoke-virtual {v14, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :goto_a
    const-string v0, "endTimeZone"

    .line 611
    invoke-interface {v10, v0}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    const-string v0, "endTimeZone"

    .line 612
    invoke-interface {v10, v0}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "eventEndTimezone"

    invoke-virtual {v14, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    .line 614
    :cond_15
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    const-string v1, "eventEndTimezone"

    invoke-virtual {v14, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :goto_b
    const-string v1, "alarms"

    .line 617
    invoke-interface {v10, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_16

    const-string v0, "hasAlarm"

    .line 618
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v14, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    :cond_16
    const-string v0, "availability"

    .line 621
    invoke-interface {v10, v0}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 622
    invoke-interface {v10, v0}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v9, v3}, Lcom/calendarevents/RNCalendarEvents;->availabilityConstantMatchingString(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v14, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_17
    const-string v3, "id"

    .line 625
    invoke-interface {v10, v3}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v0

    const-string/jumbo v4, "type"

    const-string v5, "source"

    const-string v6, "attendees"

    const-string v7, "sync"

    if-eqz v0, :cond_21

    .line 626
    invoke-interface {v10, v3}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v8, v1

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 627
    invoke-interface {v10, v3}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v0}, Lcom/calendarevents/RNCalendarEvents;->findEventById(Ljava/lang/String;)Lcom/facebook/react/bridge/WritableNativeMap;

    move-result-object v0

    if-eqz v0, :cond_1d

    const-string v15, "calendar"

    move-object/from16 v16, v6

    .line 630
    invoke-interface {v0, v15}, Lcom/facebook/react/bridge/WritableMap;->getMap(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v6

    move-object/from16 v17, v8

    const-string v8, "exceptionDate"

    .line 632
    invoke-interface {v11, v8}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_19

    .line 633
    sget-object v8, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v8, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v8

    .line 635
    invoke-interface {v11, v7}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_18

    invoke-interface {v11, v7}, Lcom/facebook/react/bridge/ReadableMap;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_18

    .line 636
    invoke-interface {v0, v15}, Lcom/facebook/react/bridge/WritableMap;->getMap(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Lcom/calendarevents/RNCalendarEvents;->syncCalendar(Landroid/content/ContentResolver;Ljava/lang/String;)V

    .line 637
    invoke-interface {v6, v5}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v4}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v9, v8, v0, v4}, Lcom/calendarevents/RNCalendarEvents;->eventUriAsSyncAdapter(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    :cond_18
    const/4 v0, 0x0

    .line 639
    invoke-virtual {v13, v8, v14, v0, v0}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_e

    .line 642
    :cond_19
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v10

    .line 643
    invoke-interface {v11, v8}, Lcom/facebook/react/bridge/ReadableMap;->getType(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableType;

    move-result-object v9

    move-object/from16 p1, v4

    .line 646
    :try_start_2
    sget-object v4, Lcom/facebook/react/bridge/ReadableType;->String:Lcom/facebook/react/bridge/ReadableType;

    if-ne v9, v4, :cond_1a

    .line 647
    invoke-interface {v11, v8}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12, v4}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v10, v4}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const-string v4, "originalInstanceTime"

    .line 648
    invoke-virtual {v10}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v14, v4, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_c

    .line 649
    :cond_1a
    sget-object v4, Lcom/facebook/react/bridge/ReadableType;->Number:Lcom/facebook/react/bridge/ReadableType;

    if-ne v9, v4, :cond_1b

    const-string v4, "originalInstanceTime"

    .line 650
    invoke-interface {v11, v8}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v8

    double-to-long v8, v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v14, v4, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_2
    .catch Ljava/text/ParseException; {:try_start_2 .. :try_end_2} :catch_3

    .line 657
    :cond_1b
    :goto_c
    sget-object v4, Landroid/provider/CalendarContract$Events;->CONTENT_EXCEPTION_URI:Landroid/net/Uri;

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 659
    invoke-interface {v11, v7}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1c

    invoke-interface {v11, v7}, Lcom/facebook/react/bridge/ReadableMap;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1c

    .line 660
    invoke-interface {v0, v15}, Lcom/facebook/react/bridge/WritableMap;->getMap(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Lcom/calendarevents/RNCalendarEvents;->syncCalendar(Landroid/content/ContentResolver;Ljava/lang/String;)V

    .line 661
    invoke-interface {v6, v5}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v8, p1

    invoke-interface {v6, v8}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v6, p0

    invoke-direct {v6, v4, v0, v5}, Lcom/calendarevents/RNCalendarEvents;->eventUriAsSyncAdapter(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    goto :goto_d

    :cond_1c
    move-object/from16 v6, p0

    .line 665
    :goto_d
    :try_start_3
    invoke-virtual {v13, v4, v14}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_1e

    .line 667
    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-wide v1, v0

    goto :goto_f

    :catch_2
    move-exception v0

    .line 670
    invoke-virtual/range {p0 .. p0}, Lcom/calendarevents/RNCalendarEvents;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Event exception error"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_f

    :catch_3
    move-exception v0

    move-object/from16 v6, p0

    .line 653
    invoke-virtual {v0}, Ljava/text/ParseException;->printStackTrace()V

    .line 654
    throw v0

    :cond_1d
    move-object/from16 v16, v6

    move-object/from16 v17, v8

    :goto_e
    move-object v6, v9

    :cond_1e
    :goto_f
    move-object/from16 v4, p2

    move-object/from16 v9, v17

    .line 675
    invoke-interface {v4, v9}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 676
    invoke-interface {v4, v3}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    invoke-interface {v4, v9}, Lcom/facebook/react/bridge/ReadableMap;->getArray(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableArray;

    move-result-object v0

    invoke-direct {v6, v13, v7, v8, v0}, Lcom/calendarevents/RNCalendarEvents;->createRemindersForEvent(Landroid/content/ContentResolver;JLcom/facebook/react/bridge/ReadableArray;)V

    :cond_1f
    move-object/from16 v10, v16

    .line 679
    invoke-interface {v4, v10}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 680
    invoke-interface {v4, v3}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    invoke-interface {v4, v10}, Lcom/facebook/react/bridge/ReadableMap;->getArray(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableArray;

    move-result-object v0

    invoke-direct {v6, v13, v7, v8, v0}, Lcom/calendarevents/RNCalendarEvents;->createAttendeesForEvent(Landroid/content/ContentResolver;JLcom/facebook/react/bridge/ReadableArray;)V

    :cond_20
    return-wide v1

    :cond_21
    move-object v8, v4

    move-object v4, v10

    move-object v10, v6

    move-object v6, v9

    move-object v9, v1

    const-string v0, "calendarId"

    .line 689
    invoke-interface {v4, v0}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "calendar_id"

    if-eqz v0, :cond_23

    const-string v0, "calendarId"

    .line 690
    invoke-interface {v4, v0}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0}, Lcom/calendarevents/RNCalendarEvents;->findCalendarById(Ljava/lang/String;)Lcom/facebook/react/bridge/WritableNativeMap;

    move-result-object v0

    if-eqz v0, :cond_22

    .line 693
    invoke-virtual {v0, v3}, Lcom/facebook/react/bridge/WritableNativeMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v14, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_10

    .line 695
    :cond_22
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v14, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_10

    :cond_23
    const-string v0, "1"

    .line 699
    invoke-direct {v6, v0}, Lcom/calendarevents/RNCalendarEvents;->findCalendarById(Ljava/lang/String;)Lcom/facebook/react/bridge/WritableNativeMap;

    move-result-object v0

    .line 700
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v14, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 703
    :goto_10
    sget-object v1, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    .line 705
    invoke-interface {v11, v7}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_24

    invoke-interface {v11, v7}, Lcom/facebook/react/bridge/ReadableMap;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 706
    invoke-virtual {v0, v3}, Lcom/facebook/react/bridge/WritableNativeMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v13, v1}, Lcom/calendarevents/RNCalendarEvents;->syncCalendar(Landroid/content/ContentResolver;Ljava/lang/String;)V

    .line 707
    sget-object v1, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v5}, Lcom/facebook/react/bridge/WritableNativeMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v8}, Lcom/facebook/react/bridge/WritableNativeMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v1, v2, v0}, Lcom/calendarevents/RNCalendarEvents;->eventUriAsSyncAdapter(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 710
    :cond_24
    invoke-virtual {v13, v1, v14}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_27

    .line 713
    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_27

    .line 715
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 717
    invoke-interface {v4, v9}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 718
    invoke-interface {v4, v9}, Lcom/facebook/react/bridge/ReadableMap;->getArray(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableArray;

    move-result-object v2

    invoke-direct {v6, v13, v0, v1, v2}, Lcom/calendarevents/RNCalendarEvents;->createRemindersForEvent(Landroid/content/ContentResolver;JLcom/facebook/react/bridge/ReadableArray;)V

    .line 721
    :cond_25
    invoke-interface {v4, v10}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 722
    invoke-interface {v4, v10}, Lcom/facebook/react/bridge/ReadableMap;->getArray(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableArray;

    move-result-object v2

    invoke-direct {v6, v13, v0, v1, v2}, Lcom/calendarevents/RNCalendarEvents;->createAttendeesForEvent(Landroid/content/ContentResolver;JLcom/facebook/react/bridge/ReadableArray;)V

    :cond_26
    return-wide v0

    :cond_27
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method private availabilityConstantMatchingString(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const-string v0, "free"

    .line 972
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    .line 973
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_0
    const-string/jumbo v0, "tentative"

    .line 976
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x2

    .line 977
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    .line 980
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method private availabilityStringMatchingConstant(Ljava/lang/Integer;)Ljava/lang/String;
    .locals 1

    .line 960
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const-string p1, "busy"

    return-object p1

    :cond_0
    const-string/jumbo p1, "tentative"

    return-object p1

    :cond_1
    const-string p1, "free"

    return-object p1
.end method

.method private calAccessConstantMatchingString(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1

    const-string v0, "contributor"

    .line 191
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p1, 0x1f4

    .line 192
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_0
    const-string v0, "editor"

    .line 194
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 p1, 0x258

    .line 195
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_1
    const-string v0, "freebusy"

    .line 197
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 p1, 0x64

    .line 198
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_2
    const-string v0, "override"

    .line 200
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 p1, 0x190

    .line 201
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_3
    const-string v0, "owner"

    .line 203
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 p1, 0x2bc

    .line 204
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_4
    const-string v0, "read"

    .line 206
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 p1, 0xc8

    .line 207
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_5
    const-string v0, "respond"

    .line 209
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/16 p1, 0x12c

    .line 210
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_6
    const-string v0, "root"

    .line 212
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    const/16 p1, 0x320

    .line 213
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_7
    const/4 p1, 0x0

    .line 215
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method private calendarAllowedAvailabilitiesFromDBString(Ljava/lang/String;)Lcom/facebook/react/bridge/WritableNativeArray;
    .locals 8

    .line 925
    new-instance v0, Lcom/facebook/react/bridge/WritableNativeArray;

    invoke-direct {v0}, Lcom/facebook/react/bridge/WritableNativeArray;-><init>()V

    const-string v1, ","

    .line 926
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_6

    aget-object v4, p1, v3

    const/4 v5, 0x2

    const/4 v6, 0x1

    .line 930
    :try_start_0
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string v7, "AVAILABILITY_BUSY"

    .line 933
    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    move v4, v2

    goto :goto_1

    :cond_0
    const-string v7, "AVAILABILITY_FREE"

    .line 935
    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    move v4, v6

    goto :goto_1

    :cond_1
    const-string v7, "AVAILABILITY_TENTATIVE"

    .line 937
    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v4, v5

    goto :goto_1

    :cond_2
    const/4 v4, -0x1

    :goto_1
    if-eqz v4, :cond_5

    if-eq v4, v6, :cond_4

    if-eq v4, v5, :cond_3

    goto :goto_2

    :cond_3
    const-string/jumbo v4, "tentative"

    .line 950
    invoke-virtual {v0, v4}, Lcom/facebook/react/bridge/WritableNativeArray;->pushString(Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    const-string v4, "free"

    .line 947
    invoke-virtual {v0, v4}, Lcom/facebook/react/bridge/WritableNativeArray;->pushString(Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    const-string v4, "busy"

    .line 944
    invoke-virtual {v0, v4}, Lcom/facebook/react/bridge/WritableNativeArray;->pushString(Ljava/lang/String;)V

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_6
    return-object v0
.end method

.method private createAttendeesForEvent(Landroid/content/ContentResolver;JLcom/facebook/react/bridge/ReadableArray;)V
    .locals 8

    const-string v0, "_id"

    .line 814
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2, p3, v0}, Landroid/provider/CalendarContract$Attendees;->query(Landroid/content/ContentResolver;J[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 818
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 819
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 820
    sget-object v3, Landroid/provider/CalendarContract$Attendees;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    .line 821
    invoke-virtual {p1, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 823
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 825
    :goto_1
    invoke-interface {p4}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v0

    if-ge v2, v0, :cond_3

    .line 826
    invoke-interface {p4, v2}, Lcom/facebook/react/bridge/ReadableArray;->getMap(I)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v0

    const-string/jumbo v1, "url"

    .line 827
    invoke-interface {v0, v1}, Lcom/facebook/react/bridge/ReadableMap;->getType(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableType;

    move-result-object v3

    const-string v4, "firstName"

    .line 828
    invoke-interface {v0, v4}, Lcom/facebook/react/bridge/ReadableMap;->getType(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableType;

    move-result-object v5

    .line 829
    sget-object v6, Lcom/facebook/react/bridge/ReadableType;->String:Lcom/facebook/react/bridge/ReadableType;

    if-ne v3, v6, :cond_2

    .line 830
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string v6, "event_id"

    .line 831
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v6, "attendeeEmail"

    .line 832
    invoke-interface {v0, v1}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v6, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "attendeeRelationship"

    const/4 v6, 0x1

    .line 833
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v1, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 835
    sget-object v1, Lcom/facebook/react/bridge/ReadableType;->String:Lcom/facebook/react/bridge/ReadableType;

    if-ne v5, v1, :cond_1

    const-string v1, "attendeeName"

    .line 836
    invoke-interface {v0, v4}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 838
    :cond_1
    sget-object v0, Landroid/provider/CalendarContract$Attendees;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p1, v0, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method private createRecurrenceRule(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Lcom/facebook/react/bridge/ReadableArray;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/String;
    .locals 4

    const-string v0, "daily"

    .line 999
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "monthly"

    const-string/jumbo v2, "weekly"

    if-eqz v0, :cond_0

    const-string v0, "FREQ=DAILY"

    goto :goto_0

    .line 1001
    :cond_0
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "FREQ=WEEKLY"

    goto :goto_0

    .line 1003
    :cond_1
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "FREQ=MONTHLY"

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "yearly"

    .line 1005
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "FREQ=YEARLY"

    :goto_0
    const-string v3, ";BYDAY="

    if-eqz p5, :cond_3

    .line 1011
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1012
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, p5}, Lcom/calendarevents/RNCalendarEvents;->ReadableArrayToString(Lcom/facebook/react/bridge/ReadableArray;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1015
    :cond_3
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    if-eqz p5, :cond_4

    if-eqz p7, :cond_4

    .line 1016
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ";BYSETPOS="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1017
    new-instance p7, Ljava/lang/StringBuilder;

    invoke-direct {p7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-direct {p0, p5}, Lcom/calendarevents/RNCalendarEvents;->ReadableArrayToString(Lcom/facebook/react/bridge/ReadableArray;)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_4
    if-eqz p6, :cond_5

    .line 1021
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p5, ";WKST="

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_5
    if-eqz p2, :cond_6

    .line 1025
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p5, ";INTERVAL="

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_6
    if-eqz p3, :cond_7

    .line 1029
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ";UNTIL="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_7
    if-eqz p4, :cond_8

    .line 1031
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ";COUNT="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_8
    :goto_1
    return-object v0

    :cond_9
    const/4 p1, 0x0

    return-object p1
.end method

.method private createRemindersForEvent(Landroid/content/ContentResolver;JLcom/facebook/react/bridge/ReadableArray;)V
    .locals 6

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const-string v1, "_id"

    .line 849
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, p2, p3, v1}, Landroid/provider/CalendarContract$Reminders;->query(Landroid/content/ContentResolver;J[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :cond_1
    :goto_0
    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 854
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 856
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_2

    .line 858
    sget-object v4, Landroid/provider/CalendarContract$Reminders;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    goto :goto_1

    :cond_2
    move-object v2, v0

    :goto_1
    if-eqz v2, :cond_1

    .line 861
    invoke-virtual {p1, v2, v0, v0}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    if-eqz v1, :cond_4

    .line 866
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 869
    :cond_4
    :goto_2
    invoke-interface {p4}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v0

    if-ge v2, v0, :cond_6

    .line 870
    invoke-interface {p4, v2}, Lcom/facebook/react/bridge/ReadableArray;->getMap(I)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v0

    const-string v1, "date"

    .line 871
    invoke-interface {v0, v1}, Lcom/facebook/react/bridge/ReadableMap;->getType(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableType;

    move-result-object v3

    .line 872
    sget-object v4, Lcom/facebook/react/bridge/ReadableType;->Number:Lcom/facebook/react/bridge/ReadableType;

    if-ne v3, v4, :cond_5

    .line 873
    invoke-interface {v0, v1}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 874
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "event_id"

    .line 876
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v3, "minutes"

    .line 877
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "method"

    const/4 v3, 0x1

    .line 878
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 880
    sget-object v0, Landroid/provider/CalendarContract$Reminders;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_6
    return-void
.end method

.method private eventUriAsSyncAdapter(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 2

    .line 794
    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p1

    const-string v0, "caller_is_syncadapter"

    const-string/jumbo v1, "true"

    .line 795
    invoke-virtual {p1, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    const-string v0, "account_name"

    .line 796
    invoke-virtual {p1, v0, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    const-string p2, "account_type"

    .line 797
    invoke-virtual {p1, p2, p3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    .line 798
    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method

.method private findAttendeesByEventId(Ljava/lang/String;)Lcom/facebook/react/bridge/WritableNativeArray;
    .locals 16

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/calendarevents/RNCalendarEvents;->reactContext:Lcom/facebook/react/bridge/ReactContext;

    .line 297
    invoke-virtual {v1}, Lcom/facebook/react/bridge/ReactContext;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "(event_id = ?)"

    .line 299
    filled-new-array/range {p1 .. p1}, [Ljava/lang/String;

    move-result-object v6

    .line 301
    sget-object v3, Landroid/provider/CalendarContract$Attendees;->CONTENT_URI:Landroid/net/Uri;

    const-string v7, "_id"

    const-string v8, "event_id"

    const-string v9, "attendeeName"

    const-string v10, "attendeeEmail"

    const-string v11, "attendeeType"

    const-string v12, "attendeeRelationship"

    const-string v13, "attendeeStatus"

    const-string v14, "attendeeIdentity"

    const-string v15, "attendeeIdNamespace"

    filled-new-array/range {v7 .. v15}, [Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 313
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 314
    invoke-direct {v0, v1}, Lcom/calendarevents/RNCalendarEvents;->serializeAttendeeCalendar(Landroid/database/Cursor;)Lcom/facebook/react/bridge/WritableNativeArray;

    move-result-object v2

    .line 315
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 317
    :cond_0
    new-instance v2, Lcom/facebook/react/bridge/WritableNativeArray;

    invoke-direct {v2}, Lcom/facebook/react/bridge/WritableNativeArray;-><init>()V

    :goto_0
    return-object v2
.end method

.method private findCalendarById(Ljava/lang/String;)Lcom/facebook/react/bridge/WritableNativeMap;
    .locals 11

    iget-object v0, p0, Lcom/calendarevents/RNCalendarEvents;->reactContext:Lcom/facebook/react/bridge/ReactContext;

    .line 164
    invoke-virtual {v0}, Lcom/facebook/react/bridge/ReactContext;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 165
    sget-object v0, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    const-string v6, "isPrimary"

    const-string v3, "_id"

    const-string v4, "calendar_displayName"

    const-string v5, "account_name"

    const-string v7, "calendar_access_level"

    const-string v8, "allowedAvailability"

    const-string v9, "account_type"

    const-string v10, "calendar_color"

    .line 169
    filled-new-array/range {v3 .. v10}, [Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 180
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 181
    invoke-direct {p0, p1}, Lcom/calendarevents/RNCalendarEvents;->serializeEventCalendar(Landroid/database/Cursor;)Lcom/facebook/react/bridge/WritableNativeMap;

    move-result-object v0

    .line 182
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private findEventById(Ljava/lang/String;)Lcom/facebook/react/bridge/WritableNativeMap;
    .locals 18

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/calendarevents/RNCalendarEvents;->reactContext:Lcom/facebook/react/bridge/ReactContext;

    .line 403
    invoke-virtual {v1}, Lcom/facebook/react/bridge/ReactContext;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 404
    sget-object v1, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {p1 .. p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v1, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    const-string v5, "((deleted != 1))"

    const-string v6, "_id"

    const-string/jumbo v7, "title"

    const-string v8, "description"

    const-string v9, "dtstart"

    const-string v10, "dtend"

    const-string v11, "allDay"

    const-string v12, "eventLocation"

    const-string v13, "rrule"

    const-string v14, "calendar_id"

    const-string v15, "availability"

    const-string v16, "hasAlarm"

    const-string v17, "duration"

    .line 408
    filled-new-array/range {v6 .. v17}, [Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 423
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 424
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 425
    invoke-direct {v0, v1}, Lcom/calendarevents/RNCalendarEvents;->serializeEvent(Landroid/database/Cursor;)Lcom/facebook/react/bridge/WritableNativeMap;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 430
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return-object v2
.end method

.method private findEventCalendars()Lcom/facebook/react/bridge/WritableNativeArray;
    .locals 11

    iget-object v0, p0, Lcom/calendarevents/RNCalendarEvents;->reactContext:Lcom/facebook/react/bridge/ReactContext;

    .line 140
    invoke-virtual {v0}, Lcom/facebook/react/bridge/ReactContext;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 142
    sget-object v2, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    const-string v6, "isPrimary"

    const-string v3, "_id"

    const-string v4, "calendar_displayName"

    const-string v5, "account_name"

    const-string v7, "calendar_access_level"

    const-string v8, "allowedAvailability"

    const-string v9, "account_type"

    const-string v10, "calendar_color"

    .line 146
    filled-new-array/range {v3 .. v10}, [Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 157
    invoke-direct {p0, v0}, Lcom/calendarevents/RNCalendarEvents;->serializeEventCalendars(Landroid/database/Cursor;)Lcom/facebook/react/bridge/WritableNativeArray;

    move-result-object v0

    return-object v0
.end method

.method private findEventInstanceById(Ljava/lang/String;)Lcom/facebook/react/bridge/WritableNativeMap;
    .locals 20

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/calendarevents/RNCalendarEvents;->reactContext:Lcom/facebook/react/bridge/ReactContext;

    .line 439
    invoke-virtual {v1}, Lcom/facebook/react/bridge/ReactContext;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 441
    sget-object v1, Landroid/provider/CalendarContract$Instances;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-wide/high16 v3, -0x8000000000000000L

    .line 442
    invoke-static {v1, v3, v4}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    const-wide v3, 0x7fffffffffffffffL

    .line 443
    invoke-static {v1, v3, v4}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    .line 444
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    .line 446
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "(Instances._ID = "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v4, p1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ")"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "_id"

    const-string/jumbo v7, "title"

    const-string v8, "description"

    const-string v9, "begin"

    const-string v10, "end"

    const-string v11, "allDay"

    const-string v12, "eventLocation"

    const-string v13, "rrule"

    const-string v14, "calendar_id"

    const-string v15, "availability"

    const-string v16, "hasAlarm"

    const-string v17, "original_id"

    const-string v18, "event_id"

    const-string v19, "duration"

    .line 448
    filled-new-array/range {v6 .. v19}, [Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 465
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 466
    invoke-direct {v0, v1}, Lcom/calendarevents/RNCalendarEvents;->serializeEvent(Landroid/database/Cursor;)Lcom/facebook/react/bridge/WritableNativeMap;

    move-result-object v2

    .line 467
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return-object v2
.end method

.method private findEvents(Lcom/facebook/react/bridge/Dynamic;Lcom/facebook/react/bridge/Dynamic;Lcom/facebook/react/bridge/ReadableArray;)Lcom/facebook/react/bridge/WritableNativeArray;
    .locals 23

    move-object/from16 v1, p0

    .line 327
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "yyyy-MM-dd\'T\'HH:mm:ss.SSS\'Z\'"

    invoke-direct {v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    const-string v2, "GMT"

    .line 328
    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 330
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 331
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 334
    :try_start_0
    invoke-interface/range {p1 .. p1}, Lcom/facebook/react/bridge/Dynamic;->getType()Lcom/facebook/react/bridge/ReadableType;

    move-result-object v4

    sget-object v5, Lcom/facebook/react/bridge/ReadableType;->String:Lcom/facebook/react/bridge/ReadableType;

    if-ne v4, v5, :cond_0

    .line 335
    invoke-interface/range {p1 .. p1}, Lcom/facebook/react/bridge/Dynamic;->asString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    goto :goto_0

    .line 336
    :cond_0
    invoke-interface/range {p1 .. p1}, Lcom/facebook/react/bridge/Dynamic;->getType()Lcom/facebook/react/bridge/ReadableType;

    move-result-object v4

    sget-object v5, Lcom/facebook/react/bridge/ReadableType;->Number:Lcom/facebook/react/bridge/ReadableType;

    if-ne v4, v5, :cond_1

    .line 337
    invoke-interface/range {p1 .. p1}, Lcom/facebook/react/bridge/Dynamic;->asDouble()D

    move-result-wide v4

    double-to-long v4, v4

    invoke-virtual {v2, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 340
    :cond_1
    :goto_0
    invoke-interface/range {p2 .. p2}, Lcom/facebook/react/bridge/Dynamic;->getType()Lcom/facebook/react/bridge/ReadableType;

    move-result-object v4

    sget-object v5, Lcom/facebook/react/bridge/ReadableType;->String:Lcom/facebook/react/bridge/ReadableType;

    if-ne v4, v5, :cond_2

    .line 341
    invoke-interface/range {p2 .. p2}, Lcom/facebook/react/bridge/Dynamic;->asString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    goto :goto_1

    .line 342
    :cond_2
    invoke-interface/range {p2 .. p2}, Lcom/facebook/react/bridge/Dynamic;->getType()Lcom/facebook/react/bridge/ReadableType;

    move-result-object v0

    sget-object v4, Lcom/facebook/react/bridge/ReadableType;->Number:Lcom/facebook/react/bridge/ReadableType;

    if-ne v0, v4, :cond_3

    .line 343
    invoke-interface/range {p2 .. p2}, Lcom/facebook/react/bridge/Dynamic;->asDouble()D

    move-result-wide v4

    double-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 346
    invoke-virtual {v0}, Ljava/text/ParseException;->printStackTrace()V

    :cond_3
    :goto_1
    iget-object v0, v1, Lcom/calendarevents/RNCalendarEvents;->reactContext:Lcom/facebook/react/bridge/ReactContext;

    .line 350
    invoke-virtual {v0}, Lcom/facebook/react/bridge/ReactContext;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 352
    sget-object v0, Landroid/provider/CalendarContract$Instances;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 353
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    invoke-static {v0, v5, v6}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    .line 354
    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    invoke-static {v0, v5, v6}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    .line 356
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v5

    .line 358
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v6, "((begin < "

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ") AND (end >= "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 359
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ") AND (visible = 1) AND (eventStatus IS NOT 2) "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 363
    invoke-interface/range {p3 .. p3}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v2

    const-string v3, ")"

    if-lez v2, :cond_6

    const-string v2, "AND ("

    const/4 v6, 0x0

    .line 365
    :goto_2
    invoke-interface/range {p3 .. p3}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v7

    if-ge v6, v7, :cond_5

    .line 366
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, "calendar_id = "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v7, p3

    invoke-interface {v7, v6}, Lcom/facebook/react/bridge/ReadableArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 367
    invoke-interface/range {p3 .. p3}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    if-eq v6, v8, :cond_4

    .line 368
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v8, " OR "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 371
    :cond_5
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 372
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 375
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "event_id"

    const-string/jumbo v9, "title"

    const-string v10, "description"

    const-string v11, "begin"

    const-string v12, "end"

    const-string v13, "allDay"

    const-string v14, "eventLocation"

    const-string v15, "rrule"

    const-string v16, "calendar_id"

    const-string v17, "availability"

    const-string v18, "hasAlarm"

    const-string v19, "original_id"

    const-string v20, "event_id"

    const-string v21, "duration"

    const-string v22, "original_sync_id"

    .line 377
    filled-new-array/range {v8 .. v22}, [Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 396
    invoke-direct {v1, v0}, Lcom/calendarevents/RNCalendarEvents;->serializeEvents(Landroid/database/Cursor;)Lcom/facebook/react/bridge/WritableNativeArray;

    move-result-object v0

    return-object v0
.end method

.method private findReminderByEventId(Ljava/lang/String;J)Lcom/facebook/react/bridge/WritableNativeArray;
    .locals 8

    .line 887
    new-instance v0, Lcom/facebook/react/bridge/WritableNativeArray;

    invoke-direct {v0}, Lcom/facebook/react/bridge/WritableNativeArray;-><init>()V

    iget-object v1, p0, Lcom/calendarevents/RNCalendarEvents;->reactContext:Lcom/facebook/react/bridge/ReactContext;

    .line 888
    invoke-virtual {v1}, Lcom/facebook/react/bridge/ReactContext;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "(event_id = ?)"

    .line 891
    sget-object v3, Landroid/provider/CalendarContract$Reminders;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "minutes"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v4

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_0

    .line 895
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 896
    new-instance v1, Lcom/facebook/react/bridge/WritableNativeMap;

    invoke-direct {v1}, Lcom/facebook/react/bridge/WritableNativeMap;-><init>()V

    .line 898
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 899
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string/jumbo v4, "yyyy-MM-dd\'T\'HH:mm:ss.SSS\'Z\'"

    invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    const-string v4, "GMT"

    .line 900
    invoke-static {v4}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 901
    invoke-virtual {v2, p2, p3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 v4, 0x0

    .line 904
    :try_start_0
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v5, 0xc

    .line 910
    invoke-virtual {v2, v5, v4}, Ljava/util/Calendar;->add(II)V

    .line 911
    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "date"

    invoke-virtual {v1, v3, v2}, Lcom/facebook/react/bridge/WritableNativeMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 912
    invoke-virtual {v0, v1}, Lcom/facebook/react/bridge/WritableNativeArray;->pushMap(Lcom/facebook/react/bridge/ReadableMap;)V

    goto :goto_0

    :catch_0
    move-exception v1

    .line 906
    invoke-virtual {p0}, Lcom/calendarevents/RNCalendarEvents;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Error parsing event minutes"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 916
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object v0
.end method

.method private getPermissionKey(Z)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_0

    const-string p1, "permissionRequestedRead"

    goto :goto_0

    :cond_0
    const-string p1, "permissionRequested"

    :goto_0
    return-object p1
.end method

.method private haveCalendarPermissions(Z)Z
    .locals 4

    iget-object v0, p0, Lcom/calendarevents/RNCalendarEvents;->reactContext:Lcom/facebook/react/bridge/ReactContext;

    const-string v1, "android.permission.WRITE_CALENDAR"

    .line 104
    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/calendarevents/RNCalendarEvents;->reactContext:Lcom/facebook/react/bridge/ReactContext;

    const-string v2, "android.permission.READ_CALENDAR"

    .line 105
    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    return v2

    :cond_1
    if-nez v0, :cond_2

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    :goto_1
    return v2
.end method

.method private removeCalendar(Ljava/lang/String;)Z
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/calendarevents/RNCalendarEvents;->reactContext:Lcom/facebook/react/bridge/ReactContext;

    .line 282
    invoke-virtual {v0}, Lcom/facebook/react/bridge/ReactContext;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 284
    sget-object v1, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p1

    const/4 v1, 0x0

    .line 285
    invoke-virtual {v0, p1, v1, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 288
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private removeEvent(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)Z
    .locals 12

    const-string v0, "exceptionDate"

    :try_start_0
    iget-object v1, p0, Lcom/calendarevents/RNCalendarEvents;->reactContext:Lcom/facebook/react/bridge/ReactContext;

    .line 737
    invoke-virtual {v1}, Lcom/facebook/react/bridge/ReactContext;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 738
    invoke-direct {p0, p1}, Lcom/calendarevents/RNCalendarEvents;->findEventById(Ljava/lang/String;)Lcom/facebook/react/bridge/WritableNativeMap;

    move-result-object v2

    const-string v3, "calendar"

    .line 739
    invoke-interface {v2, v3}, Lcom/facebook/react/bridge/WritableMap;->getMap(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v2

    .line 741
    invoke-interface {p2, v0}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const-string/jumbo v4, "type"

    const-string v5, "source"

    const-string v6, "sync"

    if-nez v3, :cond_1

    .line 742
    :try_start_1
    sget-object v0, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    invoke-static {v0, v7, v8}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p1

    .line 744
    invoke-interface {p2, v6}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2, v6}, Lcom/facebook/react/bridge/ReadableMap;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p2, "id"

    .line 745
    invoke-interface {v2, p2}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/calendarevents/RNCalendarEvents;->syncCalendar(Landroid/content/ContentResolver;Ljava/lang/String;)V

    .line 746
    invoke-interface {v2, v5}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v2, v4}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/calendarevents/RNCalendarEvents;->eventUriAsSyncAdapter(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    :cond_0
    const/4 p2, 0x0

    .line 748
    invoke-virtual {v1, p1, p2, p2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_5

    goto/16 :goto_1

    .line 751
    :cond_1
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 752
    new-instance v7, Ljava/text/SimpleDateFormat;

    const-string/jumbo v8, "yyyy-MM-dd\'T\'HH:mm:ss.SSS\'Z\'"

    invoke-direct {v7, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    const-string v8, "GMT"

    .line 753
    invoke-static {v8}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 755
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v8

    .line 756
    invoke-interface {p2, v0}, Lcom/facebook/react/bridge/ReadableMap;->getType(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableType;

    move-result-object v9
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 759
    :try_start_2
    sget-object v10, Lcom/facebook/react/bridge/ReadableType;->String:Lcom/facebook/react/bridge/ReadableType;
    :try_end_2
    .catch Ljava/text/ParseException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    const-string v11, "originalInstanceTime"

    if-ne v9, v10, :cond_2

    .line 760
    :try_start_3
    invoke-interface {p2, v0}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 761
    invoke-virtual {v8}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v3, v11, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_0

    .line 762
    :cond_2
    sget-object v7, Lcom/facebook/react/bridge/ReadableType;->Number:Lcom/facebook/react/bridge/ReadableType;

    if-ne v9, v7, :cond_3

    .line 763
    invoke-interface {p2, v0}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v7

    double-to-long v7, v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v3, v11, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_3
    .catch Ljava/text/ParseException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :cond_3
    :goto_0
    :try_start_4
    const-string v0, "eventStatus"

    const/4 v7, 0x2

    .line 770
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v0, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 772
    sget-object v0, Landroid/provider/CalendarContract$Events;->CONTENT_EXCEPTION_URI:Landroid/net/Uri;

    invoke-static {v0, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 774
    invoke-interface {p2, v6}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p2, v6}, Lcom/facebook/react/bridge/ReadableMap;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 775
    invoke-interface {v2, v5}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v2, v4}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/calendarevents/RNCalendarEvents;->eventUriAsSyncAdapter(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 778
    :cond_4
    invoke-virtual {v1, p1, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_5

    :goto_1
    const/4 p1, 0x1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 766
    invoke-virtual {p1}, Ljava/text/ParseException;->printStackTrace()V

    .line 767
    throw p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    move-exception p1

    .line 786
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_5
    const/4 p1, 0x0

    :goto_2
    return p1
.end method

.method private requestCalendarPermission(ZLcom/facebook/react/bridge/Promise;)V
    .locals 4

    .line 64
    invoke-virtual {p0}, Lcom/calendarevents/RNCalendarEvents;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p1, "E_ACTIVITY_DOES_NOT_EXIST"

    const-string v0, "Activity doesn\'t exist"

    .line 66
    invoke-interface {p2, p1, v0}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 69
    :cond_0
    instance-of v1, v0, Lcom/facebook/react/modules/core/PermissionAwareActivity;

    if-nez v1, :cond_1

    const-string p1, "E_ACTIVITY_NOT_PERMISSION_AWARE"

    const-string v0, "Activity does not implement the PermissionAwareActivity interface"

    .line 70
    invoke-interface {p2, p1, v0}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 73
    :cond_1
    check-cast v0, Lcom/facebook/react/modules/core/PermissionAwareActivity;

    sget v1, Lcom/calendarevents/RNCalendarEvents;->PERMISSION_REQUEST_CODE:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    sput v1, Lcom/calendarevents/RNCalendarEvents;->PERMISSION_REQUEST_CODE:I

    sget-object v3, Lcom/calendarevents/RNCalendarEvents;->permissionsPromises:Ljava/util/HashMap;

    .line 75
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "android.permission.WRITE_CALENDAR"

    const-string v1, "android.permission.READ_CALENDAR"

    .line 76
    filled-new-array {p2, v1}, [Ljava/lang/String;

    move-result-object p2

    if-ne p1, v2, :cond_2

    .line 78
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object p2

    :cond_2
    sget p1, Lcom/calendarevents/RNCalendarEvents;->PERMISSION_REQUEST_CODE:I

    .line 80
    invoke-interface {v0, p2, p1, p0}, Lcom/facebook/react/modules/core/PermissionAwareActivity;->requestPermissions([Ljava/lang/String;ILcom/facebook/react/modules/core/PermissionListener;)V

    return-void
.end method

.method private serializeAttendeeCalendar(Landroid/database/Cursor;)Lcom/facebook/react/bridge/WritableNativeArray;
    .locals 4

    .line 1194
    new-instance v0, Lcom/facebook/react/bridge/WritableNativeArray;

    invoke-direct {v0}, Lcom/facebook/react/bridge/WritableNativeArray;-><init>()V

    .line 1196
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1198
    new-instance v1, Lcom/facebook/react/bridge/WritableNativeMap;

    invoke-direct {v1}, Lcom/facebook/react/bridge/WritableNativeMap;-><init>()V

    const/4 v2, 0x2

    .line 1200
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "name"

    invoke-virtual {v1, v3, v2}, Lcom/facebook/react/bridge/WritableNativeMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x3

    .line 1201
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "email"

    invoke-virtual {v1, v3, v2}, Lcom/facebook/react/bridge/WritableNativeMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x4

    .line 1202
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "type"

    invoke-virtual {v1, v3, v2}, Lcom/facebook/react/bridge/WritableNativeMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x5

    .line 1203
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "relationship"

    invoke-virtual {v1, v3, v2}, Lcom/facebook/react/bridge/WritableNativeMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x6

    .line 1204
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "status"

    invoke-virtual {v1, v3, v2}, Lcom/facebook/react/bridge/WritableNativeMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x7

    .line 1205
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "identity"

    invoke-virtual {v1, v3, v2}, Lcom/facebook/react/bridge/WritableNativeMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x8

    .line 1206
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "id_namespace"

    invoke-virtual {v1, v3, v2}, Lcom/facebook/react/bridge/WritableNativeMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1207
    invoke-virtual {v0, v1}, Lcom/facebook/react/bridge/WritableNativeArray;->pushMap(Lcom/facebook/react/bridge/ReadableMap;)V

    .line 1196
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private serializeEvent(Landroid/database/Cursor;)Lcom/facebook/react/bridge/WritableNativeMap;
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 1053
    new-instance v3, Lcom/facebook/react/bridge/WritableNativeMap;

    invoke-direct {v3}, Lcom/facebook/react/bridge/WritableNativeMap;-><init>()V

    .line 1056
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v4, "yyyy-MM-dd\'T\'HH:mm:ss.SSS\'Z\'"

    invoke-direct {v0, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    const-string v4, "GMT"

    .line 1057
    invoke-static {v4}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 1059
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    .line 1060
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    const/4 v6, 0x3

    .line 1066
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, ""

    if-eqz v7, :cond_0

    .line 1067
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    invoke-virtual {v4, v9, v10}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1068
    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_0
    move-object v4, v8

    :goto_0
    const/4 v7, 0x4

    .line 1071
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_1

    .line 1072
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    invoke-virtual {v5, v7, v8}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1073
    invoke-virtual {v5}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    :cond_1
    const/4 v5, 0x5

    .line 1076
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-eqz v7, :cond_2

    .line 1077
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    if-eqz v5, :cond_2

    move v5, v9

    goto :goto_1

    :cond_2
    move v5, v10

    :goto_1
    const/4 v7, 0x7

    .line 1080
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    const-string v12, "endDate"

    if-eqz v11, :cond_8

    .line 1081
    new-instance v11, Lcom/facebook/react/bridge/WritableNativeMap;

    invoke-direct {v11}, Lcom/facebook/react/bridge/WritableNativeMap;-><init>()V

    .line 1082
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string v15, ";"

    invoke-virtual {v7, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 1083
    new-instance v15, Ljava/text/SimpleDateFormat;

    const-string/jumbo v6, "yyyyMMdd\'T\'HHmmss\'Z\'"

    invoke-direct {v15, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1085
    array-length v6, v7

    const-string v14, "="

    if-lez v6, :cond_3

    aget-object v6, v7, v10

    invoke-virtual {v6, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    array-length v6, v6

    if-le v6, v9, :cond_3

    .line 1086
    aget-object v6, v7, v10

    invoke-virtual {v6, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, v9

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    const-string v13, "recurrence"

    invoke-virtual {v3, v13, v6}, Lcom/facebook/react/bridge/WritableNativeMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1087
    aget-object v6, v7, v10

    invoke-virtual {v6, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, v9

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    const-string v13, "frequency"

    invoke-virtual {v11, v13, v6}, Lcom/facebook/react/bridge/WritableNativeMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    const-string v6, "duration"

    .line 1090
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    const/4 v10, -0x1

    if-eq v13, v10, :cond_4

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v2, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_4

    .line 1091
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v2, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v11, v6, v10}, Lcom/facebook/react/bridge/WritableNativeMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1094
    :cond_4
    array-length v6, v7

    const/4 v10, 0x2

    if-lt v6, v10, :cond_5

    aget-object v6, v7, v9

    invoke-virtual {v6, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    const/4 v10, 0x0

    aget-object v6, v6, v10

    const-string v10, "INTERVAL"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1095
    aget-object v6, v7, v9

    invoke-virtual {v6, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, v9

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    const-string v10, "interval"

    invoke-virtual {v11, v10, v6}, Lcom/facebook/react/bridge/WritableNativeMap;->putInt(Ljava/lang/String;I)V

    .line 1098
    :cond_5
    array-length v6, v7

    const/4 v10, 0x3

    if-lt v6, v10, :cond_7

    const/4 v6, 0x2

    .line 1099
    aget-object v10, v7, v6

    invoke-virtual {v10, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    const/4 v13, 0x0

    aget-object v10, v10, v13

    const-string v13, "UNTIL"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 1101
    :try_start_0
    aget-object v7, v7, v6

    invoke-virtual {v7, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, v9

    invoke-virtual {v15, v6}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v12, v0}, Lcom/facebook/react/bridge/WritableNativeMap;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 1103
    invoke-virtual {v0}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_2

    .line 1105
    :cond_6
    aget-object v0, v7, v6

    invoke-virtual {v0, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v10, 0x0

    aget-object v0, v0, v10

    const-string v10, "COUNT"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1106
    aget-object v0, v7, v6

    invoke-virtual {v0, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v9

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const-string v6, "occurrence"

    invoke-virtual {v11, v6, v0}, Lcom/facebook/react/bridge/WritableNativeMap;->putInt(Ljava/lang/String;I)V

    :cond_7
    :goto_2
    const-string v0, "recurrenceRule"

    .line 1111
    invoke-virtual {v3, v0, v11}, Lcom/facebook/react/bridge/WritableNativeMap;->putMap(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)V

    :cond_8
    const-string v0, "id"

    const/4 v6, 0x0

    .line 1114
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v0, v7}, Lcom/facebook/react/bridge/WritableNativeMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "calendar_id"

    .line 1115
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/calendarevents/RNCalendarEvents;->findCalendarById(Ljava/lang/String;)Lcom/facebook/react/bridge/WritableNativeMap;

    move-result-object v0

    const-string v6, "calendar"

    invoke-virtual {v3, v6, v0}, Lcom/facebook/react/bridge/WritableNativeMap;->putMap(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)V

    const-string/jumbo v0, "title"

    .line 1116
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v0, v6}, Lcom/facebook/react/bridge/WritableNativeMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "description"

    const/4 v6, 0x2

    .line 1117
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v0, v6}, Lcom/facebook/react/bridge/WritableNativeMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "startDate"

    .line 1118
    invoke-virtual {v3, v0, v4}, Lcom/facebook/react/bridge/WritableNativeMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1119
    invoke-virtual {v3, v12, v8}, Lcom/facebook/react/bridge/WritableNativeMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "allDay"

    .line 1120
    invoke-virtual {v3, v0, v5}, Lcom/facebook/react/bridge/WritableNativeMap;->putBoolean(Ljava/lang/String;Z)V

    const/4 v0, 0x6

    .line 1121
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v4, "location"

    invoke-virtual {v3, v4, v0}, Lcom/facebook/react/bridge/WritableNativeMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x9

    .line 1122
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/calendarevents/RNCalendarEvents;->availabilityStringMatchingConstant(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "availability"

    invoke-virtual {v3, v4, v0}, Lcom/facebook/react/bridge/WritableNativeMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    .line 1123
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/calendarevents/RNCalendarEvents;->findAttendeesByEventId(Ljava/lang/String;)Lcom/facebook/react/bridge/WritableNativeArray;

    move-result-object v0

    const-string v5, "attendees"

    invoke-virtual {v3, v5, v0}, Lcom/facebook/react/bridge/WritableNativeMap;->putArray(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;)V

    const/16 v0, 0xa

    .line 1125
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const-string v5, "alarms"

    if-lez v0, :cond_9

    .line 1126
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x3

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-direct {v1, v0, v6, v7}, Lcom/calendarevents/RNCalendarEvents;->findReminderByEventId(Ljava/lang/String;J)Lcom/facebook/react/bridge/WritableNativeArray;

    move-result-object v0

    invoke-virtual {v3, v5, v0}, Lcom/facebook/react/bridge/WritableNativeMap;->putArray(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;)V

    goto :goto_3

    .line 1128
    :cond_9
    new-instance v0, Lcom/facebook/react/bridge/WritableNativeArray;

    invoke-direct {v0}, Lcom/facebook/react/bridge/WritableNativeArray;-><init>()V

    .line 1129
    invoke-virtual {v3, v5, v0}, Lcom/facebook/react/bridge/WritableNativeMap;->putArray(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;)V

    :goto_3
    const-string v0, "original_id"

    .line 1132
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_a

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_a

    .line 1133
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v4, "originalId"

    invoke-virtual {v3, v4, v0}, Lcom/facebook/react/bridge/WritableNativeMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    const-string v0, "original_sync_id"

    .line 1136
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_b

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_b

    .line 1137
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "syncId"

    invoke-virtual {v3, v2, v0}, Lcom/facebook/react/bridge/WritableNativeMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    return-object v3
.end method

.method private serializeEventCalendar(Landroid/database/Cursor;)Lcom/facebook/react/bridge/WritableNativeMap;
    .locals 7

    .line 1158
    new-instance v0, Lcom/facebook/react/bridge/WritableNativeMap;

    invoke-direct {v0}, Lcom/facebook/react/bridge/WritableNativeMap;-><init>()V

    const/4 v1, 0x0

    .line 1160
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "id"

    invoke-virtual {v0, v3, v2}, Lcom/facebook/react/bridge/WritableNativeMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    .line 1161
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "title"

    invoke-virtual {v0, v4, v3}, Lcom/facebook/react/bridge/WritableNativeMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x2

    .line 1162
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "source"

    invoke-virtual {v0, v4, v3}, Lcom/facebook/react/bridge/WritableNativeMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x5

    .line 1163
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/calendarevents/RNCalendarEvents;->calendarAllowedAvailabilitiesFromDBString(Ljava/lang/String;)Lcom/facebook/react/bridge/WritableNativeArray;

    move-result-object v3

    const-string v4, "allowedAvailabilities"

    invoke-virtual {v0, v4, v3}, Lcom/facebook/react/bridge/WritableNativeMap;->putArray(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;)V

    const/4 v3, 0x6

    .line 1164
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "type"

    invoke-virtual {v0, v4, v3}, Lcom/facebook/react/bridge/WritableNativeMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    const-string v3, "#%06X"

    new-array v4, v2, [Ljava/lang/Object;

    const/4 v5, 0x7

    .line 1168
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    const v6, 0xffffff

    and-int/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 1170
    invoke-virtual {p0}, Lcom/calendarevents/RNCalendarEvents;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Error parsing calendar color"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string v3, "#FFFFFF"

    :goto_0
    const-string v4, "color"

    .line 1172
    invoke-virtual {v0, v4, v3}, Lcom/facebook/react/bridge/WritableNativeMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x3

    .line 1174
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1175
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "isPrimary"

    invoke-virtual {v0, v4, v3}, Lcom/facebook/react/bridge/WritableNativeMap;->putBoolean(Ljava/lang/String;Z)V

    :cond_0
    const/4 v3, 0x4

    .line 1178
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    const/16 v3, 0x320

    const-string v4, "allowsModifications"

    if-eq p1, v3, :cond_2

    const/16 v3, 0x2bc

    if-eq p1, v3, :cond_2

    const/16 v3, 0x258

    if-eq p1, v3, :cond_2

    const/16 v3, 0x1f4

    if-ne p1, v3, :cond_1

    goto :goto_1

    .line 1186
    :cond_1
    invoke-virtual {v0, v4, v1}, Lcom/facebook/react/bridge/WritableNativeMap;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_2

    .line 1184
    :cond_2
    :goto_1
    invoke-virtual {v0, v4, v2}, Lcom/facebook/react/bridge/WritableNativeMap;->putBoolean(Ljava/lang/String;Z)V

    :goto_2
    return-object v0
.end method

.method private serializeEventCalendars(Landroid/database/Cursor;)Lcom/facebook/react/bridge/WritableNativeArray;
    .locals 2

    .line 1144
    new-instance v0, Lcom/facebook/react/bridge/WritableNativeArray;

    invoke-direct {v0}, Lcom/facebook/react/bridge/WritableNativeArray;-><init>()V

    if-eqz p1, :cond_1

    .line 1147
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1148
    invoke-direct {p0, p1}, Lcom/calendarevents/RNCalendarEvents;->serializeEventCalendar(Landroid/database/Cursor;)Lcom/facebook/react/bridge/WritableNativeMap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/react/bridge/WritableNativeArray;->pushMap(Lcom/facebook/react/bridge/ReadableMap;)V

    goto :goto_0

    .line 1150
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object v0
.end method

.method private serializeEvents(Landroid/database/Cursor;)Lcom/facebook/react/bridge/WritableNativeArray;
    .locals 2

    .line 1040
    new-instance v0, Lcom/facebook/react/bridge/WritableNativeArray;

    invoke-direct {v0}, Lcom/facebook/react/bridge/WritableNativeArray;-><init>()V

    if-eqz p1, :cond_1

    .line 1042
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1043
    invoke-direct {p0, p1}, Lcom/calendarevents/RNCalendarEvents;->serializeEvent(Landroid/database/Cursor;)Lcom/facebook/react/bridge/WritableNativeMap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/react/bridge/WritableNativeArray;->pushMap(Lcom/facebook/react/bridge/ReadableMap;)V

    goto :goto_0

    .line 1046
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object v0
.end method

.method private shouldShowRequestPermissionRationale(Z)Z
    .locals 3

    .line 116
    invoke-virtual {p0}, Lcom/calendarevents/RNCalendarEvents;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 119
    invoke-virtual {p0}, Lcom/calendarevents/RNCalendarEvents;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Activity doesn\'t exist"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 122
    :cond_0
    instance-of v2, v0, Lcom/facebook/react/modules/core/PermissionAwareActivity;

    if-nez v2, :cond_1

    .line 123
    invoke-virtual {p0}, Lcom/calendarevents/RNCalendarEvents;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Activity does not implement the PermissionAwareActivity interface"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 127
    :cond_1
    check-cast v0, Lcom/facebook/react/modules/core/PermissionAwareActivity;

    if-eqz p1, :cond_2

    const-string p1, "android.permission.READ_CALENDAR"

    .line 130
    invoke-interface {v0, p1}, Lcom/facebook/react/modules/core/PermissionAwareActivity;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_2
    const-string p1, "android.permission.WRITE_CALENDAR"

    .line 132
    invoke-interface {v0, p1}, Lcom/facebook/react/modules/core/PermissionAwareActivity;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public static syncCalendar(Landroid/content/ContentResolver;Ljava/lang/String;)V
    .locals 4

    .line 804
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const/4 v1, 0x1

    .line 805
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "sync_events"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v2, "visible"

    .line 806
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 808
    sget-object v1, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public checkPermissions(ZLcom/facebook/react/bridge/Promise;)V
    .locals 3
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/calendarevents/RNCalendarEvents;->reactContext:Lcom/facebook/react/bridge/ReactContext;

    const-string v1, "REACT_NATIVE_CALENDAR_PREFERENCES"

    const/4 v2, 0x0

    .line 1226
    invoke-virtual {v0, v1, v2}, Lcom/facebook/react/bridge/ReactContext;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1227
    invoke-direct {p0, p1}, Lcom/calendarevents/RNCalendarEvents;->getPermissionKey(Z)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 1229
    invoke-direct {p0, p1}, Lcom/calendarevents/RNCalendarEvents;->haveCalendarPermissions(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p1, "authorized"

    .line 1230
    invoke-interface {p2, p1}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    const-string/jumbo p1, "undetermined"

    .line 1232
    invoke-interface {p2, p1}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    goto :goto_0

    .line 1233
    :cond_1
    invoke-direct {p0, p1}, Lcom/calendarevents/RNCalendarEvents;->shouldShowRequestPermissionRationale(Z)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "denied"

    .line 1234
    invoke-interface {p2, p1}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    const-string p1, "restricted"

    .line 1236
    invoke-interface {p2, p1}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v0, "RNCalendarEvents error checking permissions"

    .line 1240
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string v0, "error checking permissions"

    .line 1241
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1, p1}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public findAllEvents(Lcom/facebook/react/bridge/Dynamic;Lcom/facebook/react/bridge/Dynamic;Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/Promise;)V
    .locals 9
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    const/4 v0, 0x1

    .line 1376
    invoke-direct {p0, v0}, Lcom/calendarevents/RNCalendarEvents;->haveCalendarPermissions(Z)Z

    move-result v0

    const-string v1, "find event error"

    if-eqz v0, :cond_0

    .line 1378
    :try_start_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v8, Lcom/calendarevents/RNCalendarEvents$5;

    move-object v2, v8

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v2 .. v7}, Lcom/calendarevents/RNCalendarEvents$5;-><init>(Lcom/calendarevents/RNCalendarEvents;Lcom/facebook/react/bridge/Dynamic;Lcom/facebook/react/bridge/Dynamic;Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/Promise;)V

    invoke-direct {v0, v8}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1391
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 1394
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p4, v1, p2, p1}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    const-string/jumbo p1, "you don\'t have permissions to read an event from the users calendar"

    .line 1397
    invoke-interface {p4, v1, p1}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public findById(Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 3
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    const/4 v0, 0x1

    .line 1404
    invoke-direct {p0, v0}, Lcom/calendarevents/RNCalendarEvents;->haveCalendarPermissions(Z)Z

    move-result v0

    const-string v1, "find event error"

    if-eqz v0, :cond_0

    .line 1406
    :try_start_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v2, Lcom/calendarevents/RNCalendarEvents$6;

    invoke-direct {v2, p0, p1, p2}, Lcom/calendarevents/RNCalendarEvents$6;-><init>(Lcom/calendarevents/RNCalendarEvents;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1419
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 1422
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v1, v0, p1}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    const-string/jumbo p1, "you don\'t have permissions to read an event from the users calendar"

    .line 1425
    invoke-interface {p2, v1, p1}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public findCalendars(Lcom/facebook/react/bridge/Promise;)V
    .locals 3
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    const/4 v0, 0x1

    .line 1267
    invoke-direct {p0, v0}, Lcom/calendarevents/RNCalendarEvents;->haveCalendarPermissions(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1269
    :try_start_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/calendarevents/RNCalendarEvents$1;

    invoke-direct {v1, p0, p1}, Lcom/calendarevents/RNCalendarEvents$1;-><init>(Lcom/calendarevents/RNCalendarEvents;Lcom/facebook/react/bridge/Promise;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1282
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "calendar request error"

    .line 1284
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v2, v0}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    const-string v0, "add event error"

    const-string/jumbo v1, "you don\'t have permissions to retrieve an event to the users calendar"

    .line 1287
    invoke-interface {p1, v0, v1}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "RNCalendarEvents"

    return-object v0
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)Z
    .locals 5

    sget-object p2, Lcom/calendarevents/RNCalendarEvents;->permissionsPromises:Ljava/util/HashMap;

    .line 85
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    .line 88
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/bridge/Promise;

    .line 90
    array-length v3, p3

    if-lez v3, :cond_0

    aget v3, p3, v2

    if-nez v3, :cond_0

    const-string p3, "authorized"

    .line 91
    invoke-interface {v0, p3}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    goto :goto_1

    .line 92
    :cond_0
    array-length v3, p3

    if-lez v3, :cond_1

    aget v3, p3, v2

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    const-string p3, "denied"

    .line 93
    invoke-interface {v0, p3}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    goto :goto_1

    .line 94
    :cond_1
    invoke-virtual {p2}, Ljava/util/HashMap;->size()I

    move-result v3

    if-ne v3, v1, :cond_3

    .line 95
    array-length v3, p3

    if-lez v3, :cond_2

    aget p3, p3, v2

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    :cond_2
    const-string p3, "Request was cancelled"

    :goto_0
    const-string v3, "permissions - unknown error"

    invoke-interface {v0, v3, p3}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    :cond_3
    :goto_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    :cond_4
    invoke-virtual {p2}, Ljava/util/HashMap;->size()I

    move-result p1

    if-nez p1, :cond_5

    goto :goto_2

    :cond_5
    move v1, v2

    :goto_2
    return v1
.end method

.method public openEventInCalendar(I)V
    .locals 3
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 1461
    :try_start_0
    sget-object v0, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    int-to-long v1, p1

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p1

    .line 1462
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object p1

    iget-object v0, p0, Lcom/calendarevents/RNCalendarEvents;->reactContext:Lcom/facebook/react/bridge/ReactContext;

    .line 1464
    invoke-virtual {v0}, Lcom/facebook/react/bridge/ReactContext;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/calendarevents/RNCalendarEvents;->reactContext:Lcom/facebook/react/bridge/ReactContext;

    .line 1465
    invoke-virtual {v0, p1}, Lcom/facebook/react/bridge/ReactContext;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v0, "RNCalendarEvents error opening event in calendar"

    .line 1469
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public removeCalendar(Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 2
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    const/4 v0, 0x0

    .line 1318
    invoke-direct {p0, v0}, Lcom/calendarevents/RNCalendarEvents;->haveCalendarPermissions(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1320
    :try_start_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/calendarevents/RNCalendarEvents$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/calendarevents/RNCalendarEvents$3;-><init>(Lcom/calendarevents/RNCalendarEvents;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1333
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v0, "error removing calendar"

    .line 1336
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1, p1}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    const-string p1, "remove calendar error"

    const-string/jumbo v0, "you don\'t have permissions to remove a calendar"

    .line 1339
    invoke-interface {p2, p1, v0}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public removeEvent(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V
    .locals 2
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    const/4 v0, 0x0

    .line 1432
    invoke-direct {p0, v0}, Lcom/calendarevents/RNCalendarEvents;->haveCalendarPermissions(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1434
    :try_start_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/calendarevents/RNCalendarEvents$7;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/calendarevents/RNCalendarEvents$7;-><init>(Lcom/calendarevents/RNCalendarEvents;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1447
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string p2, "error removing event"

    .line 1450
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, p2, v0, p1}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    const-string p1, "remove event error"

    const-string/jumbo p2, "you don\'t have permissions to remove an event from the users calendar"

    .line 1453
    invoke-interface {p3, p1, p2}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public requestPermissions(ZLcom/facebook/react/bridge/Promise;)V
    .locals 3
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/calendarevents/RNCalendarEvents;->reactContext:Lcom/facebook/react/bridge/ReactContext;

    const-string v1, "REACT_NATIVE_CALENDAR_PREFERENCES"

    const/4 v2, 0x0

    .line 1248
    invoke-virtual {v0, v1, v2}, Lcom/facebook/react/bridge/ReactContext;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1249
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1250
    invoke-direct {p0, p1}, Lcom/calendarevents/RNCalendarEvents;->getPermissionKey(Z)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1251
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1253
    invoke-direct {p0, p1}, Lcom/calendarevents/RNCalendarEvents;->haveCalendarPermissions(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "authorized"

    .line 1254
    invoke-interface {p2, p1}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    goto :goto_0

    .line 1256
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/calendarevents/RNCalendarEvents;->requestCalendarPermission(ZLcom/facebook/react/bridge/Promise;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v0, "RNCalendarEvents error requesting permissions"

    .line 1260
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string v0, "error requesting permissions"

    .line 1261
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1, p1}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public saveCalendar(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V
    .locals 3
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    const/4 v0, 0x0

    .line 1293
    invoke-direct {p0, v0}, Lcom/calendarevents/RNCalendarEvents;->haveCalendarPermissions(Z)Z

    move-result v0

    const-string v1, "save calendar error"

    if-nez v0, :cond_0

    const-string/jumbo p1, "unauthorized to access calendar"

    .line 1294
    invoke-interface {p2, v1, p1}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1298
    :cond_0
    :try_start_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v2, Lcom/calendarevents/RNCalendarEvents$2;

    invoke-direct {v2, p0, p1, p2}, Lcom/calendarevents/RNCalendarEvents$2;-><init>(Lcom/calendarevents/RNCalendarEvents;Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1310
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v0, "Calendar could not be saved"

    .line 1312
    invoke-interface {p2, v1, v0, p1}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public saveEvent(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V
    .locals 9
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    const/4 v0, 0x0

    .line 1345
    invoke-direct {p0, v0}, Lcom/calendarevents/RNCalendarEvents;->haveCalendarPermissions(Z)Z

    move-result v0

    const-string v1, "add event error"

    if-eqz v0, :cond_0

    .line 1347
    :try_start_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v8, Lcom/calendarevents/RNCalendarEvents$4;

    move-object v2, v8

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v2 .. v7}, Lcom/calendarevents/RNCalendarEvents$4;-><init>(Lcom/calendarevents/RNCalendarEvents;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V

    invoke-direct {v0, v8}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1364
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 1366
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p4, v1, p2, p1}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    const-string/jumbo p1, "you don\'t have permissions to add an event to the users calendar"

    .line 1369
    invoke-interface {p4, v1, p1}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public uriForCalendar(Lcom/facebook/react/bridge/Promise;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 1475
    sget-object v0, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    return-void
.end method
