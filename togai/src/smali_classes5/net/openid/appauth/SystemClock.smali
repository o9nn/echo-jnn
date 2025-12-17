.class Lnet/openid/appauth/SystemClock;
.super Ljava/lang/Object;
.source "SystemClock.java"

# interfaces
.implements Lnet/openid/appauth/Clock;


# static fields
.field public static final INSTANCE:Lnet/openid/appauth/SystemClock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    new-instance v0, Lnet/openid/appauth/SystemClock;

    invoke-direct {v0}, Lnet/openid/appauth/SystemClock;-><init>()V

    sput-object v0, Lnet/openid/appauth/SystemClock;->INSTANCE:Lnet/openid/appauth/SystemClock;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCurrentTimeMillis()J
    .locals 2

    .line 27
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method
