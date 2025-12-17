.class public interface abstract Lcom/google/common/flogger/backend/SimpleMessageFormatter$SimpleLogHandler;
.super Ljava/lang/Object;
.source "SimpleMessageFormatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/flogger/backend/SimpleMessageFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SimpleLogHandler"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# virtual methods
.method public abstract handleFormattedLogMessage(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    .param p3    # Ljava/lang/Throwable;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
.end method
