.class public final Lcom/google/common/flogger/LogSiteStackTrace;
.super Ljava/lang/Exception;
.source "LogSiteStackTrace.java"


# direct methods
.method constructor <init>(Ljava/lang/Throwable;Lcom/google/common/flogger/StackSize;[Ljava/lang/StackTraceElement;)V
    .locals 0
    .param p1    # Ljava/lang/Throwable;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 40
    invoke-virtual {p2}, Lcom/google/common/flogger/StackSize;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 44
    invoke-virtual {p0, p3}, Lcom/google/common/flogger/LogSiteStackTrace;->setStackTrace([Ljava/lang/StackTraceElement;)V

    return-void
.end method


# virtual methods
.method public fillInStackTrace()Ljava/lang/Throwable;
    .locals 0

    return-object p0
.end method
