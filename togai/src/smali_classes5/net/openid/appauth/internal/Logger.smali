.class public final Lnet/openid/appauth/internal/Logger;
.super Ljava/lang/Object;
.source "Logger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/openid/appauth/internal/Logger$AndroidLogWrapper;,
        Lnet/openid/appauth/internal/Logger$LogWrapper;
    }
.end annotation


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "AppAuth"

.field private static sInstance:Lnet/openid/appauth/internal/Logger;


# instance fields
.field private final mLog:Lnet/openid/appauth/internal/Logger$LogWrapper;

.field private final mLogLevel:I


# direct methods
.method constructor <init>(Lnet/openid/appauth/internal/Logger$LogWrapper;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "log"
        }
    .end annotation

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    invoke-static {p1}, Lnet/openid/appauth/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/openid/appauth/internal/Logger$LogWrapper;

    iput-object p1, p0, Lnet/openid/appauth/internal/Logger;->mLog:Lnet/openid/appauth/internal/Logger$LogWrapper;

    const/4 p1, 0x7

    :goto_0
    const/4 v0, 0x2

    if-lt p1, v0, :cond_0

    iget-object v0, p0, Lnet/openid/appauth/internal/Logger;->mLog:Lnet/openid/appauth/internal/Logger$LogWrapper;

    const-string v1, "AppAuth"

    .line 59
    invoke-interface {v0, v1, p1}, Lnet/openid/appauth/internal/Logger$LogWrapper;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_0
    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lnet/openid/appauth/internal/Logger;->mLogLevel:I

    return-void
.end method

.method public static varargs debug(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "message",
            "messageParams"
        }
    .end annotation

    .line 75
    invoke-static {}, Lnet/openid/appauth/internal/Logger;->getInstance()Lnet/openid/appauth/internal/Logger;

    move-result-object v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0, p1}, Lnet/openid/appauth/internal/Logger;->log(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs debugWithStack(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "tr",
            "message",
            "messageParams"
        }
    .end annotation

    .line 79
    invoke-static {}, Lnet/openid/appauth/internal/Logger;->getInstance()Lnet/openid/appauth/internal/Logger;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p0, p1, p2}, Lnet/openid/appauth/internal/Logger;->log(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs error(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "message",
            "messageParams"
        }
    .end annotation

    .line 99
    invoke-static {}, Lnet/openid/appauth/internal/Logger;->getInstance()Lnet/openid/appauth/internal/Logger;

    move-result-object v0

    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0, p1}, Lnet/openid/appauth/internal/Logger;->log(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs errorWithStack(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "tr",
            "message",
            "messageParams"
        }
    .end annotation

    .line 103
    invoke-static {}, Lnet/openid/appauth/internal/Logger;->getInstance()Lnet/openid/appauth/internal/Logger;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1, p0, p1, p2}, Lnet/openid/appauth/internal/Logger;->log(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static declared-synchronized getInstance()Lnet/openid/appauth/internal/Logger;
    .locals 3

    const-class v0, Lnet/openid/appauth/internal/Logger;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lnet/openid/appauth/internal/Logger;->sInstance:Lnet/openid/appauth/internal/Logger;

    if-nez v1, :cond_0

    .line 44
    new-instance v1, Lnet/openid/appauth/internal/Logger;

    invoke-static {}, Lnet/openid/appauth/internal/Logger$AndroidLogWrapper;->access$000()Lnet/openid/appauth/internal/Logger$AndroidLogWrapper;

    move-result-object v2

    invoke-direct {v1, v2}, Lnet/openid/appauth/internal/Logger;-><init>(Lnet/openid/appauth/internal/Logger$LogWrapper;)V

    sput-object v1, Lnet/openid/appauth/internal/Logger;->sInstance:Lnet/openid/appauth/internal/Logger;

    :cond_0
    sget-object v1, Lnet/openid/appauth/internal/Logger;->sInstance:Lnet/openid/appauth/internal/Logger;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static varargs info(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "message",
            "messageParams"
        }
    .end annotation

    .line 83
    invoke-static {}, Lnet/openid/appauth/internal/Logger;->getInstance()Lnet/openid/appauth/internal/Logger;

    move-result-object v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0, p1}, Lnet/openid/appauth/internal/Logger;->log(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs infoWithStack(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "tr",
            "message",
            "messageParams"
        }
    .end annotation

    .line 87
    invoke-static {}, Lnet/openid/appauth/internal/Logger;->getInstance()Lnet/openid/appauth/internal/Logger;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p0, p1, p2}, Lnet/openid/appauth/internal/Logger;->log(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static declared-synchronized setInstance(Lnet/openid/appauth/internal/Logger;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "logger"
        }
    .end annotation

    const-class v0, Lnet/openid/appauth/internal/Logger;

    monitor-enter v0

    :try_start_0
    sput-object p0, Lnet/openid/appauth/internal/Logger;->sInstance:Lnet/openid/appauth/internal/Logger;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static varargs verbose(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "message",
            "messageParams"
        }
    .end annotation

    .line 67
    invoke-static {}, Lnet/openid/appauth/internal/Logger;->getInstance()Lnet/openid/appauth/internal/Logger;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0, p1}, Lnet/openid/appauth/internal/Logger;->log(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs verboseWithStack(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "tr",
            "message",
            "messageParams"
        }
    .end annotation

    .line 71
    invoke-static {}, Lnet/openid/appauth/internal/Logger;->getInstance()Lnet/openid/appauth/internal/Logger;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p0, p1, p2}, Lnet/openid/appauth/internal/Logger;->log(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs warn(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "message",
            "messageParams"
        }
    .end annotation

    .line 91
    invoke-static {}, Lnet/openid/appauth/internal/Logger;->getInstance()Lnet/openid/appauth/internal/Logger;

    move-result-object v0

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0, p1}, Lnet/openid/appauth/internal/Logger;->log(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs warnWithStack(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "tr",
            "message",
            "messageParams"
        }
    .end annotation

    .line 95
    invoke-static {}, Lnet/openid/appauth/internal/Logger;->getInstance()Lnet/openid/appauth/internal/Logger;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p0, p1, p2}, Lnet/openid/appauth/internal/Logger;->log(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public varargs log(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "level",
            "tr",
            "message",
            "messageParams"
        }
    .end annotation

    iget v0, p0, Lnet/openid/appauth/internal/Logger;->mLogLevel:I

    if-le v0, p1, :cond_0

    return-void

    :cond_0
    if-eqz p4, :cond_2

    .line 111
    array-length v0, p4

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    goto :goto_0

    .line 114
    :cond_1
    invoke-static {p3, p4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    :cond_2
    :goto_0
    if-eqz p2, :cond_3

    .line 118
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string p4, "\n"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    iget-object p4, p0, Lnet/openid/appauth/internal/Logger;->mLog:Lnet/openid/appauth/internal/Logger$LogWrapper;

    invoke-interface {p4, p2}, Lnet/openid/appauth/internal/Logger$LogWrapper;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    :cond_3
    iget-object p2, p0, Lnet/openid/appauth/internal/Logger;->mLog:Lnet/openid/appauth/internal/Logger$LogWrapper;

    const-string p4, "AppAuth"

    .line 121
    invoke-interface {p2, p1, p4, p3}, Lnet/openid/appauth/internal/Logger$LogWrapper;->println(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method
