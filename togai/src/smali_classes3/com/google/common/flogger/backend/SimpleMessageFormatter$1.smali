.class Lcom/google/common/flogger/backend/SimpleMessageFormatter$1;
.super Lcom/google/common/flogger/backend/LogMessageFormatter;
.source "SimpleMessageFormatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/flogger/backend/SimpleMessageFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 60
    invoke-direct {p0}, Lcom/google/common/flogger/backend/LogMessageFormatter;-><init>()V

    return-void
.end method


# virtual methods
.method public append(Lcom/google/common/flogger/backend/LogData;Lcom/google/common/flogger/backend/MetadataProcessor;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 1

    .line 64
    invoke-static {}, Lcom/google/common/flogger/backend/SimpleMessageFormatter;->access$000()Lcom/google/common/flogger/backend/MetadataHandler;

    move-result-object v0

    invoke-static {p1, p2, v0, p3}, Lcom/google/common/flogger/backend/SimpleMessageFormatter;->appendFormatted(Lcom/google/common/flogger/backend/LogData;Lcom/google/common/flogger/backend/MetadataProcessor;Lcom/google/common/flogger/backend/MetadataHandler;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public format(Lcom/google/common/flogger/backend/LogData;Lcom/google/common/flogger/backend/MetadataProcessor;)Ljava/lang/String;
    .locals 0

    .line 69
    invoke-static {p1, p2}, Lcom/google/common/flogger/backend/SimpleMessageFormatter;->access$100(Lcom/google/common/flogger/backend/LogData;Lcom/google/common/flogger/backend/MetadataProcessor;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
