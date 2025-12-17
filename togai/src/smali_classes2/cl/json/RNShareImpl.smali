.class public Lcl/json/RNShareImpl;
.super Ljava/lang/Object;
.source "RNShareImpl.java"

# interfaces
.implements Lcom/facebook/react/bridge/ActivityEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcl/json/RNShareImpl$SHARES;
    }
.end annotation


# static fields
.field public static final NAME:Ljava/lang/String; = "RNShare"

.field static RCTContext:Lcom/facebook/react/bridge/ReactApplicationContext; = null

.field public static final SHARE_REQUEST_CODE:I = 0x41cd


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V
    .locals 0

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p1, Lcl/json/RNShareImpl;->RCTContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    .line 147
    invoke-virtual {p1, p0}, Lcom/facebook/react/bridge/ReactApplicationContext;->addActivityEventListener(Lcom/facebook/react/bridge/ActivityEventListener;)V

    return-void
.end method


# virtual methods
.method public getConstants()Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 151
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 152
    invoke-static {}, Lcl/json/RNShareImpl$SHARES;->values()[Lcl/json/RNShareImpl$SHARES;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 153
    invoke-virtual {v4}, Lcl/json/RNShareImpl$SHARES;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v5, v6}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lcl/json/RNShareImpl$SHARES;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public isBase64File(Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 2

    .line 210
    :try_start_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 211
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "data"

    .line 212
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 213
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 215
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "RNShare"

    .line 218
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p1, v0}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintStream;)V

    .line 220
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public isPackageInstalled(Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 2

    :try_start_0
    sget-object v0, Lcl/json/RNShareImpl;->RCTContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    .line 200
    invoke-static {p1, v0}, Lcl/json/social/ShareIntent;->isPackageInstalled(Ljava/lang/String;Landroid/content/Context;)Z

    move-result p1

    .line 201
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "RNShare"

    .line 203
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    const/16 p3, 0x41cd

    if-ne p1, p3, :cond_1

    const-string p1, "success"

    if-nez p2, :cond_0

    .line 56
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object p2

    const/4 p3, 0x0

    .line 57
    invoke-interface {p2, p1, p3}, Lcom/facebook/react/bridge/WritableMap;->putBoolean(Ljava/lang/String;Z)V

    const-string p1, "message"

    const-string p3, "CANCELED"

    .line 58
    invoke-interface {p2, p1, p3}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    invoke-static {p2}, Lcl/json/social/TargetChosenReceiver;->callbackResolve(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const/4 p3, -0x1

    if-ne p2, p3, :cond_1

    .line 61
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object p2

    const/4 p3, 0x1

    .line 62
    invoke-interface {p2, p1, p3}, Lcom/facebook/react/bridge/WritableMap;->putBoolean(Ljava/lang/String;Z)V

    .line 63
    invoke-static {p2}, Lcl/json/social/TargetChosenReceiver;->callbackResolve(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V
    .locals 0

    .line 70
    invoke-virtual {p0, p2, p3, p4}, Lcl/json/RNShareImpl;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public open(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V
    .locals 2

    const-string v0, "RNShare"

    .line 159
    invoke-static {p2}, Lcl/json/social/TargetChosenReceiver;->registerCallbacks(Lcom/facebook/react/bridge/Promise;)V

    .line 161
    :try_start_0
    new-instance p2, Lcl/json/social/GenericShare;

    sget-object v1, Lcl/json/RNShareImpl;->RCTContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    invoke-direct {p2, v1}, Lcl/json/social/GenericShare;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    .line 162
    invoke-virtual {p2, p1}, Lcl/json/social/GenericShare;->open(Lcom/facebook/react/bridge/ReadableMap;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 168
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    sget-object p2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p1, p2}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintStream;)V

    .line 170
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcl/json/social/TargetChosenReceiver;->callbackReject(Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 164
    invoke-virtual {p1}, Landroid/content/ActivityNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    sget-object p2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p1, p2}, Landroid/content/ActivityNotFoundException;->printStackTrace(Ljava/io/PrintStream;)V

    const-string p1, "not_available"

    .line 166
    invoke-static {p1}, Lcl/json/social/TargetChosenReceiver;->callbackReject(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public shareSingle(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V
    .locals 2

    const-string v0, "RNShare"

    .line 175
    invoke-static {p2}, Lcl/json/social/TargetChosenReceiver;->registerCallbacks(Lcom/facebook/react/bridge/Promise;)V

    const-string p2, "social"

    .line 176
    invoke-static {p2, p1}, Lcl/json/social/ShareIntent;->hasValidKey(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 178
    :try_start_0
    invoke-interface {p1, p2}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    sget-object v1, Lcl/json/RNShareImpl;->RCTContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    invoke-static {p2, v1}, Lcl/json/RNShareImpl$SHARES;->getShareClass(Ljava/lang/String;Lcom/facebook/react/bridge/ReactApplicationContext;)Lcl/json/social/ShareIntent;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 179
    instance-of v1, p2, Lcl/json/social/ShareIntent;

    if-eqz v1, :cond_0

    .line 180
    invoke-virtual {p2, p1}, Lcl/json/social/ShareIntent;->open(Lcom/facebook/react/bridge/ReadableMap;)V

    goto :goto_0

    .line 182
    :cond_0
    new-instance p1, Landroid/content/ActivityNotFoundException;

    const-string p2, "Invalid share activity"

    invoke-direct {p1, p2}, Landroid/content/ActivityNotFoundException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 189
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    sget-object p2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p1, p2}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintStream;)V

    .line 191
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcl/json/social/TargetChosenReceiver;->callbackReject(Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 185
    invoke-virtual {p1}, Landroid/content/ActivityNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    sget-object p2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p1, p2}, Landroid/content/ActivityNotFoundException;->printStackTrace(Ljava/io/PrintStream;)V

    .line 187
    invoke-virtual {p1}, Landroid/content/ActivityNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcl/json/social/TargetChosenReceiver;->callbackReject(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string p1, "key \'social\' missing in options"

    .line 194
    invoke-static {p1}, Lcl/json/social/TargetChosenReceiver;->callbackReject(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
