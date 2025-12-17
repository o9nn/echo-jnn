.class public Lcom/zoontek/rnpermissions/RNPermissionsModuleImpl;
.super Ljava/lang/Object;
.source "RNPermissionsModuleImpl.java"


# static fields
.field private static final BLOCKED:Ljava/lang/String; = "blocked"

.field private static final DENIED:Ljava/lang/String; = "denied"

.field private static final ERROR_INVALID_ACTIVITY:Ljava/lang/String; = "E_INVALID_ACTIVITY"

.field private static final GRANTED:Ljava/lang/String; = "granted"

.field public static final NAME:Ljava/lang/String; = "RNPermissions"

.field private static final UNAVAILABLE:Ljava/lang/String; = "unavailable"

.field private static mRequestCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static check(Lcom/facebook/react/bridge/ReactApplicationContext;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 1

    if-eqz p1, :cond_2

    .line 101
    invoke-static {p1}, Lcom/zoontek/rnpermissions/RNPermissionsModuleImpl;->isPermissionUnavailable(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 106
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/react/bridge/ReactApplicationContext;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    .line 116
    invoke-virtual {p0, p1}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "granted"

    .line 117
    invoke-interface {p2, p0}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    const-string p0, "denied"

    .line 119
    invoke-interface {p2, p0}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_2
    :goto_1
    const-string p0, "unavailable"

    .line 102
    invoke-interface {p2, p0}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    return-void
.end method

.method public static checkLocationAccuracy(Lcom/facebook/react/bridge/Promise;)V
    .locals 2

    const-string v0, "Permissions:checkLocationAccuracy"

    const-string v1, "checkLocationAccuracy is not supported on Android"

    .line 341
    invoke-interface {p0, v0, v1}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static checkMultiple(Lcom/facebook/react/bridge/ReactApplicationContext;Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/Promise;)V
    .locals 4

    .line 135
    new-instance v0, Lcom/facebook/react/bridge/WritableNativeMap;

    invoke-direct {v0}, Lcom/facebook/react/bridge/WritableNativeMap;-><init>()V

    .line 136
    invoke-virtual {p0}, Lcom/facebook/react/bridge/ReactApplicationContext;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    const/4 v1, 0x0

    .line 138
    :goto_0
    invoke-interface {p1}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 139
    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 141
    invoke-static {v2}, Lcom/zoontek/rnpermissions/RNPermissionsModuleImpl;->isPermissionUnavailable(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "unavailable"

    .line 142
    invoke-interface {v0, v2, v3}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 150
    :cond_0
    invoke-virtual {p0, v2}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "granted"

    .line 151
    invoke-interface {v0, v2, v3}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const-string v3, "denied"

    .line 153
    invoke-interface {v0, v2, v3}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 157
    :cond_2
    invoke-interface {p2, v0}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    return-void
.end method

.method public static checkNotifications(Lcom/facebook/react/bridge/ReactApplicationContext;Lcom/facebook/react/bridge/Promise;)V
    .locals 1

    const-string v0, "denied"

    .line 127
    invoke-static {p0, v0}, Lcom/zoontek/rnpermissions/RNPermissionsModuleImpl;->getLegacyNotificationsResponse(Lcom/facebook/react/bridge/ReactApplicationContext;Ljava/lang/String;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    return-void
.end method

.method public static getConstants()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "available"

    .line 45
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createArray()Lcom/facebook/react/bridge/WritableArray;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private static getLegacyNotificationsResponse(Lcom/facebook/react/bridge/ReactApplicationContext;Ljava/lang/String;)Lcom/facebook/react/bridge/WritableMap;
    .locals 2

    .line 67
    invoke-static {p0}, Landroidx/core/app/NotificationManagerCompat;->from(Landroid/content/Context;)Landroidx/core/app/NotificationManagerCompat;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/core/app/NotificationManagerCompat;->areNotificationsEnabled()Z

    move-result p0

    .line 68
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 69
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v1

    if-eqz p0, :cond_0

    const-string p1, "granted"

    :cond_0
    const-string p0, "status"

    .line 71
    invoke-interface {v0, p0, p1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "settings"

    .line 72
    invoke-interface {v0, p0, v1}, Lcom/facebook/react/bridge/WritableMap;->putMap(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)V

    return-object v0
.end method

.method private static getPermissionAwareActivity(Lcom/facebook/react/bridge/ReactApplicationContext;)Lcom/facebook/react/modules/core/PermissionAwareActivity;
    .locals 1

    .line 322
    invoke-virtual {p0}, Lcom/facebook/react/bridge/ReactApplicationContext;->getCurrentActivity()Landroid/app/Activity;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 327
    instance-of v0, p0, Lcom/facebook/react/modules/core/PermissionAwareActivity;

    if-eqz v0, :cond_0

    .line 333
    check-cast p0, Lcom/facebook/react/modules/core/PermissionAwareActivity;

    return-object p0

    .line 328
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Tried to use permissions API but the host Activity doesn\'t implement PermissionAwareActivity."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 325
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Tried to use permissions API while not attached to an Activity."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static isPermissionUnavailable(Ljava/lang/String;)Z
    .locals 2

    const-string v0, "android.permission."

    const-string v1, ""

    .line 51
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "com.android.voicemail.permission."

    .line 52
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 55
    :try_start_0
    const-class v0, Landroid/Manifest$permission;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x0

    return p0

    :catch_0
    const/4 p0, 0x1

    return p0
.end method

.method public static onRequestPermissionsResult(Lcom/facebook/react/bridge/ReactApplicationContext;Landroid/util/SparseArray;I[I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/react/bridge/ReactApplicationContext;",
            "Landroid/util/SparseArray<",
            "Lcom/facebook/react/bridge/Callback;",
            ">;I[I)Z"
        }
    .end annotation

    const/4 v0, 0x0

    .line 355
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/react/bridge/Callback;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p3, v2, v0

    invoke-static {p0}, Lcom/zoontek/rnpermissions/RNPermissionsModuleImpl;->getPermissionAwareActivity(Lcom/facebook/react/bridge/ReactApplicationContext;)Lcom/facebook/react/modules/core/PermissionAwareActivity;

    move-result-object p0

    const/4 p3, 0x1

    aput-object p0, v2, p3

    invoke-interface {v1, v2}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    .line 356
    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 357
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p0, :cond_0

    move v0, p3

    :cond_0
    return v0

    :catch_0
    move-exception p0

    const-string p1, "Unexpected invocation of `onRequestPermissionsResult`"

    new-array p2, v0, [Ljava/lang/Object;

    const-string p3, "PermissionsModule"

    .line 359
    invoke-static {p3, p0, p1, p2}, Lcom/facebook/common/logging/FLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return v0
.end method

.method public static openPhotoPicker(Lcom/facebook/react/bridge/Promise;)V
    .locals 2

    const-string v0, "Permissions:openPhotoPicker"

    const-string v1, "openPhotoPicker is not supported on Android"

    .line 337
    invoke-interface {p0, v0, v1}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static openSettings(Lcom/facebook/react/bridge/ReactApplicationContext;Lcom/facebook/react/bridge/Promise;)V
    .locals 4

    .line 82
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 83
    invoke-virtual {p0}, Lcom/facebook/react/bridge/ReactApplicationContext;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.settings.APPLICATION_DETAILS_SETTINGS"

    .line 85
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v2, 0x10000000

    .line 86
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v2, "package"

    const/4 v3, 0x0

    .line 87
    invoke-static {v2, v1, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 89
    invoke-virtual {p0, v0}, Lcom/facebook/react/bridge/ReactApplicationContext;->startActivity(Landroid/content/Intent;)V

    const/4 p0, 0x1

    .line 90
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "E_INVALID_ACTIVITY"

    .line 92
    invoke-interface {p1, v0, p0}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public static request(Lcom/facebook/react/bridge/ReactApplicationContext;Lcom/facebook/react/modules/core/PermissionListener;Landroid/util/SparseArray;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/react/bridge/ReactApplicationContext;",
            "Lcom/facebook/react/modules/core/PermissionListener;",
            "Landroid/util/SparseArray<",
            "Lcom/facebook/react/bridge/Callback;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/facebook/react/bridge/Promise;",
            ")V"
        }
    .end annotation

    if-eqz p3, :cond_2

    .line 167
    invoke-static {p3}, Lcom/zoontek/rnpermissions/RNPermissionsModuleImpl;->isPermissionUnavailable(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 172
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/react/bridge/ReactApplicationContext;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    .line 182
    invoke-virtual {v0, p3}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    const-string p0, "granted"

    .line 183
    invoke-interface {p4, p0}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    return-void

    .line 188
    :cond_1
    :try_start_0
    invoke-static {p0}, Lcom/zoontek/rnpermissions/RNPermissionsModuleImpl;->getPermissionAwareActivity(Lcom/facebook/react/bridge/ReactApplicationContext;)Lcom/facebook/react/modules/core/PermissionAwareActivity;

    move-result-object p0

    sget v0, Lcom/zoontek/rnpermissions/RNPermissionsModuleImpl;->mRequestCode:I

    .line 190
    new-instance v1, Lcom/zoontek/rnpermissions/RNPermissionsModuleImpl$1;

    invoke-direct {v1, p4, p3}, Lcom/zoontek/rnpermissions/RNPermissionsModuleImpl$1;-><init>(Lcom/facebook/react/bridge/Promise;Ljava/lang/String;)V

    invoke-virtual {p2, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 211
    filled-new-array {p3}, [Ljava/lang/String;

    move-result-object p2

    sget p3, Lcom/zoontek/rnpermissions/RNPermissionsModuleImpl;->mRequestCode:I

    invoke-interface {p0, p2, p3, p1}, Lcom/facebook/react/modules/core/PermissionAwareActivity;->requestPermissions([Ljava/lang/String;ILcom/facebook/react/modules/core/PermissionListener;)V

    sget p0, Lcom/zoontek/rnpermissions/RNPermissionsModuleImpl;->mRequestCode:I

    add-int/lit8 p0, p0, 0x1

    sput p0, Lcom/zoontek/rnpermissions/RNPermissionsModuleImpl;->mRequestCode:I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "E_INVALID_ACTIVITY"

    .line 214
    invoke-interface {p4, p1, p0}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void

    :cond_2
    :goto_1
    const-string p0, "unavailable"

    .line 168
    invoke-interface {p4, p0}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    return-void
.end method

.method public static requestLocationAccuracy(Lcom/facebook/react/bridge/Promise;)V
    .locals 2

    const-string v0, "Permissions:requestLocationAccuracy"

    const-string v1, "requestLocationAccuracy is not supported on Android"

    .line 345
    invoke-interface {p0, v0, v1}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static requestMultiple(Lcom/facebook/react/bridge/ReactApplicationContext;Lcom/facebook/react/modules/core/PermissionListener;Landroid/util/SparseArray;Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/Promise;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/react/bridge/ReactApplicationContext;",
            "Lcom/facebook/react/modules/core/PermissionListener;",
            "Landroid/util/SparseArray<",
            "Lcom/facebook/react/bridge/Callback;",
            ">;",
            "Lcom/facebook/react/bridge/ReadableArray;",
            "Lcom/facebook/react/bridge/Promise;",
            ")V"
        }
    .end annotation

    .line 232
    new-instance v0, Lcom/facebook/react/bridge/WritableNativeMap;

    invoke-direct {v0}, Lcom/facebook/react/bridge/WritableNativeMap;-><init>()V

    .line 233
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 235
    invoke-virtual {p0}, Lcom/facebook/react/bridge/ReactApplicationContext;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    .line 237
    :goto_0
    invoke-interface {p3}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v6

    if-ge v4, v6, :cond_2

    .line 238
    invoke-interface {p3, v4}, Lcom/facebook/react/bridge/ReadableArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 240
    invoke-static {v6}, Lcom/zoontek/rnpermissions/RNPermissionsModuleImpl;->isPermissionUnavailable(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    const-string v7, "unavailable"

    .line 241
    invoke-interface {v0, v6, v7}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 252
    :cond_0
    invoke-virtual {v2, v6}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_1

    const-string v7, "granted"

    .line 253
    invoke-interface {v0, v6, v7}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 256
    :cond_1
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 260
    :cond_2
    invoke-interface {p3}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result p3

    if-ne p3, v5, :cond_3

    .line 261
    invoke-interface {p4, v0}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    return-void

    .line 266
    :cond_3
    :try_start_0
    invoke-static {p0}, Lcom/zoontek/rnpermissions/RNPermissionsModuleImpl;->getPermissionAwareActivity(Lcom/facebook/react/bridge/ReactApplicationContext;)Lcom/facebook/react/modules/core/PermissionAwareActivity;

    move-result-object p0

    sget p3, Lcom/zoontek/rnpermissions/RNPermissionsModuleImpl;->mRequestCode:I

    .line 268
    new-instance v2, Lcom/zoontek/rnpermissions/RNPermissionsModuleImpl$2;

    invoke-direct {v2, v1, v0, p4}, Lcom/zoontek/rnpermissions/RNPermissionsModuleImpl$2;-><init>(Ljava/util/ArrayList;Lcom/facebook/react/bridge/WritableMap;Lcom/facebook/react/bridge/Promise;)V

    invoke-virtual {p2, p3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-array p2, v3, [Ljava/lang/String;

    .line 294
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/String;

    sget p3, Lcom/zoontek/rnpermissions/RNPermissionsModuleImpl;->mRequestCode:I

    invoke-interface {p0, p2, p3, p1}, Lcom/facebook/react/modules/core/PermissionAwareActivity;->requestPermissions([Ljava/lang/String;ILcom/facebook/react/modules/core/PermissionListener;)V

    sget p0, Lcom/zoontek/rnpermissions/RNPermissionsModuleImpl;->mRequestCode:I

    add-int/lit8 p0, p0, 0x1

    sput p0, Lcom/zoontek/rnpermissions/RNPermissionsModuleImpl;->mRequestCode:I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p0

    const-string p1, "E_INVALID_ACTIVITY"

    .line 297
    invoke-interface {p4, p1, p0}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_3
    return-void
.end method

.method public static requestNotifications(Lcom/facebook/react/bridge/ReactApplicationContext;Lcom/facebook/react/bridge/Promise;)V
    .locals 1

    const-string v0, "blocked"

    .line 222
    invoke-static {p0, v0}, Lcom/zoontek/rnpermissions/RNPermissionsModuleImpl;->getLegacyNotificationsResponse(Lcom/facebook/react/bridge/ReactApplicationContext;Ljava/lang/String;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    return-void
.end method

.method public static shouldShowRequestRationale(Lcom/facebook/react/bridge/ReactApplicationContext;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 312
    :try_start_0
    invoke-static {p0}, Lcom/zoontek/rnpermissions/RNPermissionsModuleImpl;->getPermissionAwareActivity(Lcom/facebook/react/bridge/ReactApplicationContext;)Lcom/facebook/react/modules/core/PermissionAwareActivity;

    move-result-object p0

    .line 313
    invoke-interface {p0, p1}, Lcom/facebook/react/modules/core/PermissionAwareActivity;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result p0

    .line 312
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-interface {p2, p0}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "E_INVALID_ACTIVITY"

    .line 315
    invoke-interface {p2, p1, p0}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void

    :cond_0
    const/4 p0, 0x0

    .line 307
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-interface {p2, p0}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    return-void
.end method
