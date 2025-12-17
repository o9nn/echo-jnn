.class public interface abstract Lcom/google/common/flogger/backend/LogData;
.super Ljava/lang/Object;
.source "LogData.java"


# virtual methods
.method public abstract getArguments()[Ljava/lang/Object;
.end method

.method public abstract getLevel()Ljava/util/logging/Level;
.end method

.method public abstract getLiteralArgument()Ljava/lang/Object;
.end method

.method public abstract getLogSite()Lcom/google/common/flogger/LogSite;
.end method

.method public abstract getLoggerName()Ljava/lang/String;
.end method

.method public abstract getMetadata()Lcom/google/common/flogger/backend/Metadata;
.end method

.method public abstract getTemplateContext()Lcom/google/common/flogger/backend/TemplateContext;
.end method

.method public abstract getTimestampMicros()J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getTimestampNanos()J
.end method

.method public abstract wasForced()Z
.end method
