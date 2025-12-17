.class public interface abstract Lnet/openid/appauth/internal/Logger$LogWrapper;
.super Ljava/lang/Object;
.source "Logger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/openid/appauth/internal/Logger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "LogWrapper"
.end annotation


# virtual methods
.method public abstract getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tr"
        }
    .end annotation
.end method

.method public abstract isLoggable(Ljava/lang/String;I)Z
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
.end method

.method public abstract println(ILjava/lang/String;Ljava/lang/String;)V
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
.end method
