.class public abstract Lcom/google/common/flogger/backend/LogMessageFormatter;
.super Ljava/lang/Object;
.source "LogMessageFormatter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract append(Lcom/google/common/flogger/backend/LogData;Lcom/google/common/flogger/backend/MetadataProcessor;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
.end method

.method public format(Lcom/google/common/flogger/backend/LogData;Lcom/google/common/flogger/backend/MetadataProcessor;)Ljava/lang/String;
    .locals 1

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/common/flogger/backend/LogMessageFormatter;->append(Lcom/google/common/flogger/backend/LogData;Lcom/google/common/flogger/backend/MetadataProcessor;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
