.class final Lnet/openid/appauth/internal/Logger$AndroidLogWrapper;
.super Ljava/lang/Object;
.source "Logger.java"

# interfaces
.implements Lnet/openid/appauth/internal/Logger$LogWrapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/openid/appauth/internal/Logger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AndroidLogWrapper"
.end annotation


# static fields
.field private static final INSTANCE:Lnet/openid/appauth/internal/Logger$AndroidLogWrapper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 141
    new-instance v0, Lnet/openid/appauth/internal/Logger$AndroidLogWrapper;

    invoke-direct {v0}, Lnet/openid/appauth/internal/Logger$AndroidLogWrapper;-><init>()V

    sput-object v0, Lnet/openid/appauth/internal/Logger$AndroidLogWrapper;->INSTANCE:Lnet/openid/appauth/internal/Logger$AndroidLogWrapper;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lnet/openid/appauth/internal/Logger$AndroidLogWrapper;
    .locals 1

    sget-object v0, Lnet/openid/appauth/internal/Logger$AndroidLogWrapper;->INSTANCE:Lnet/openid/appauth/internal/Logger$AndroidLogWrapper;

    return-object v0
.end method


# virtual methods
.method public getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tr"
        }
    .end annotation

    .line 154
    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public isLoggable(Ljava/lang/String;I)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "tag",
            "level"
        }
    .end annotation

    .line 150
    invoke-static {p1, p2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    return p1
.end method

.method public println(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "level",
            "tag",
            "message"
        }
    .end annotation

    .line 146
    invoke-static {p1, p2, p3}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    return-void
.end method
