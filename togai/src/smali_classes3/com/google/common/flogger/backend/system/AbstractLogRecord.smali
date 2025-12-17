.class public abstract Lcom/google/common/flogger/backend/system/AbstractLogRecord;
.super Ljava/util/logging/LogRecord;
.source "AbstractLogRecord.java"


# static fields
.field private static final NO_PARAMETERS:[Ljava/lang/Object;

.field private static final jdkMessageFormatter:Ljava/util/logging/Formatter;


# instance fields
.field private final data:Lcom/google/common/flogger/backend/LogData;

.field private final metadata:Lcom/google/common/flogger/backend/MetadataProcessor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 95
    new-instance v0, Lcom/google/common/flogger/backend/system/AbstractLogRecord$1;

    invoke-direct {v0}, Lcom/google/common/flogger/backend/system/AbstractLogRecord$1;-><init>()V

    sput-object v0, Lcom/google/common/flogger/backend/system/AbstractLogRecord;->jdkMessageFormatter:Ljava/util/logging/Formatter;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Lcom/google/common/flogger/backend/system/AbstractLogRecord;->NO_PARAMETERS:[Ljava/lang/Object;

    return-void
.end method

.method protected constructor <init>(Lcom/google/common/flogger/backend/LogData;Lcom/google/common/flogger/backend/Metadata;)V
    .locals 2

    .line 115
    invoke-interface {p1}, Lcom/google/common/flogger/backend/LogData;->getLevel()Ljava/util/logging/Level;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Ljava/util/logging/LogRecord;-><init>(Ljava/util/logging/Level;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/common/flogger/backend/system/AbstractLogRecord;->data:Lcom/google/common/flogger/backend/LogData;

    .line 117
    invoke-interface {p1}, Lcom/google/common/flogger/backend/LogData;->getMetadata()Lcom/google/common/flogger/backend/Metadata;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/google/common/flogger/backend/MetadataProcessor;->forScopeAndLogSite(Lcom/google/common/flogger/backend/Metadata;Lcom/google/common/flogger/backend/Metadata;)Lcom/google/common/flogger/backend/MetadataProcessor;

    move-result-object p2

    iput-object p2, p0, Lcom/google/common/flogger/backend/system/AbstractLogRecord;->metadata:Lcom/google/common/flogger/backend/MetadataProcessor;

    .line 120
    invoke-interface {p1}, Lcom/google/common/flogger/backend/LogData;->getLogSite()Lcom/google/common/flogger/LogSite;

    move-result-object p2

    .line 121
    invoke-virtual {p2}, Lcom/google/common/flogger/LogSite;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/flogger/backend/system/AbstractLogRecord;->setSourceClassName(Ljava/lang/String;)V

    .line 122
    invoke-virtual {p2}, Lcom/google/common/flogger/LogSite;->getMethodName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/google/common/flogger/backend/system/AbstractLogRecord;->setSourceMethodName(Ljava/lang/String;)V

    .line 123
    invoke-interface {p1}, Lcom/google/common/flogger/backend/LogData;->getLoggerName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/google/common/flogger/backend/system/AbstractLogRecord;->setLoggerName(Ljava/lang/String;)V

    .line 124
    sget-object p2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p1}, Lcom/google/common/flogger/backend/LogData;->getTimestampNanos()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/google/common/flogger/backend/system/AbstractLogRecord;->setMillis(J)V

    sget-object p1, Lcom/google/common/flogger/backend/system/AbstractLogRecord;->NO_PARAMETERS:[Ljava/lang/Object;

    .line 130
    invoke-super {p0, p1}, Ljava/util/logging/LogRecord;->setParameters([Ljava/lang/Object;)V

    return-void
.end method

.method protected constructor <init>(Ljava/lang/RuntimeException;Lcom/google/common/flogger/backend/LogData;Lcom/google/common/flogger/backend/Metadata;)V
    .locals 1

    .line 139
    invoke-direct {p0, p2, p3}, Lcom/google/common/flogger/backend/system/AbstractLogRecord;-><init>(Lcom/google/common/flogger/backend/LogData;Lcom/google/common/flogger/backend/Metadata;)V

    .line 141
    invoke-interface {p2}, Lcom/google/common/flogger/backend/LogData;->getLevel()Ljava/util/logging/Level;

    move-result-object p3

    invoke-virtual {p3}, Ljava/util/logging/Level;->intValue()I

    move-result p3

    sget-object v0, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-virtual {v0}, Ljava/util/logging/Level;->intValue()I

    move-result v0

    if-ge p3, v0, :cond_0

    sget-object p3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    goto :goto_0

    :cond_0
    invoke-interface {p2}, Lcom/google/common/flogger/backend/LogData;->getLevel()Ljava/util/logging/Level;

    move-result-object p3

    :goto_0
    invoke-virtual {p0, p3}, Lcom/google/common/flogger/backend/system/AbstractLogRecord;->setLevel(Ljava/util/logging/Level;)V

    .line 142
    invoke-virtual {p0, p1}, Lcom/google/common/flogger/backend/system/AbstractLogRecord;->setThrown(Ljava/lang/Throwable;)V

    .line 143
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "LOGGING ERROR: "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 144
    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const/16 p3, 0xa

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 145
    invoke-static {p2, p1}, Lcom/google/common/flogger/backend/system/AbstractLogRecord;->safeAppend(Lcom/google/common/flogger/backend/LogData;Ljava/lang/StringBuilder;)V

    .line 146
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/common/flogger/backend/system/AbstractLogRecord;->setMessage(Ljava/lang/String;)V

    return-void
.end method

.method private static safeAppend(Lcom/google/common/flogger/backend/LogData;Ljava/lang/StringBuilder;)V
    .locals 7

    const-string v0, "  original message: "

    .line 308
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 309
    invoke-interface {p0}, Lcom/google/common/flogger/backend/LogData;->getTemplateContext()Lcom/google/common/flogger/backend/TemplateContext;

    move-result-object v0

    const-string v1, "\n    "

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 310
    invoke-interface {p0}, Lcom/google/common/flogger/backend/LogData;->getLiteralArgument()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/flogger/backend/MessageUtils;->safeToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 313
    :cond_0
    invoke-interface {p0}, Lcom/google/common/flogger/backend/LogData;->getTemplateContext()Lcom/google/common/flogger/backend/TemplateContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/flogger/backend/TemplateContext;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n  original arguments:"

    .line 314
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 315
    invoke-interface {p0}, Lcom/google/common/flogger/backend/LogData;->getArguments()[Ljava/lang/Object;

    move-result-object v0

    array-length v3, v0

    move v4, v2

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v0, v4

    .line 316
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v5}, Lcom/google/common/flogger/backend/MessageUtils;->safeToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 319
    :cond_1
    :goto_1
    invoke-interface {p0}, Lcom/google/common/flogger/backend/LogData;->getMetadata()Lcom/google/common/flogger/backend/Metadata;

    move-result-object v0

    .line 320
    invoke-virtual {v0}, Lcom/google/common/flogger/backend/Metadata;->size()I

    move-result v3

    if-lez v3, :cond_2

    const-string v3, "\n  metadata:"

    .line 321
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    :goto_2
    invoke-virtual {v0}, Lcom/google/common/flogger/backend/Metadata;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 323
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 324
    invoke-virtual {v0, v2}, Lcom/google/common/flogger/backend/Metadata;->getKey(I)Lcom/google/common/flogger/MetadataKey;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/common/flogger/MetadataKey;->getLabel()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    .line 325
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 326
    invoke-virtual {v0, v2}, Lcom/google/common/flogger/backend/Metadata;->getValue(I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lcom/google/common/flogger/backend/MessageUtils;->safeToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    const-string v0, "\n  level: "

    .line 329
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p0}, Lcom/google/common/flogger/backend/LogData;->getLevel()Ljava/util/logging/Level;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/flogger/backend/MessageUtils;->safeToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n  timestamp (nanos): "

    .line 330
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p0}, Lcom/google/common/flogger/backend/LogData;->getTimestampNanos()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "\n  class: "

    .line 331
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p0}, Lcom/google/common/flogger/backend/LogData;->getLogSite()Lcom/google/common/flogger/LogSite;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/flogger/LogSite;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n  method: "

    .line 332
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p0}, Lcom/google/common/flogger/backend/LogData;->getLogSite()Lcom/google/common/flogger/LogSite;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/flogger/LogSite;->getMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n  line number: "

    .line 333
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-interface {p0}, Lcom/google/common/flogger/backend/LogData;->getLogSite()Lcom/google/common/flogger/LogSite;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/common/flogger/LogSite;->getLineNumber()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    return-void
.end method


# virtual methods
.method public final appendFormattedMessageTo(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 3

    .line 204
    invoke-super {p0}, Ljava/util/logging/LogRecord;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 213
    invoke-virtual {p0}, Lcom/google/common/flogger/backend/system/AbstractLogRecord;->getLogMessageFormatter()Lcom/google/common/flogger/backend/LogMessageFormatter;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/flogger/backend/system/AbstractLogRecord;->data:Lcom/google/common/flogger/backend/LogData;

    iget-object v2, p0, Lcom/google/common/flogger/backend/system/AbstractLogRecord;->metadata:Lcom/google/common/flogger/backend/MetadataProcessor;

    invoke-virtual {v0, v1, v2, p1}, Lcom/google/common/flogger/backend/LogMessageFormatter;->append(Lcom/google/common/flogger/backend/LogData;Lcom/google/common/flogger/backend/MetadataProcessor;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 214
    :cond_0
    invoke-virtual {p0}, Lcom/google/common/flogger/backend/system/AbstractLogRecord;->getParameters()[Ljava/lang/Object;

    move-result-object v1

    array-length v1, v1

    if-nez v1, :cond_1

    .line 217
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/google/common/flogger/backend/system/AbstractLogRecord;->jdkMessageFormatter:Ljava/util/logging/Formatter;

    .line 221
    invoke-virtual {v0, p0}, Ljava/util/logging/Formatter;->formatMessage(Ljava/util/logging/LogRecord;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    return-object p1
.end method

.method public final getFormattedMessage()Ljava/lang/String;
    .locals 1

    .line 234
    invoke-virtual {p0}, Lcom/google/common/flogger/backend/system/AbstractLogRecord;->getParameters()[Ljava/lang/Object;

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_0

    .line 235
    invoke-virtual {p0}, Lcom/google/common/flogger/backend/system/AbstractLogRecord;->getMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v0, Lcom/google/common/flogger/backend/system/AbstractLogRecord;->jdkMessageFormatter:Ljava/util/logging/Formatter;

    .line 237
    invoke-virtual {v0, p0}, Ljava/util/logging/Formatter;->formatMessage(Ljava/util/logging/LogRecord;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getLogData()Lcom/google/common/flogger/backend/LogData;
    .locals 1

    iget-object v0, p0, Lcom/google/common/flogger/backend/system/AbstractLogRecord;->data:Lcom/google/common/flogger/backend/LogData;

    return-object v0
.end method

.method protected getLogMessageFormatter()Lcom/google/common/flogger/backend/LogMessageFormatter;
    .locals 1

    .line 155
    invoke-static {}, Lcom/google/common/flogger/backend/SimpleMessageFormatter;->getDefaultFormatter()Lcom/google/common/flogger/backend/LogMessageFormatter;

    move-result-object v0

    return-object v0
.end method

.method public final getMessage()Ljava/lang/String;
    .locals 3

    .line 181
    invoke-super {p0}, Ljava/util/logging/LogRecord;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 185
    :cond_0
    invoke-virtual {p0}, Lcom/google/common/flogger/backend/system/AbstractLogRecord;->getLogMessageFormatter()Lcom/google/common/flogger/backend/LogMessageFormatter;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/flogger/backend/system/AbstractLogRecord;->data:Lcom/google/common/flogger/backend/LogData;

    iget-object v2, p0, Lcom/google/common/flogger/backend/system/AbstractLogRecord;->metadata:Lcom/google/common/flogger/backend/MetadataProcessor;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/flogger/backend/LogMessageFormatter;->format(Lcom/google/common/flogger/backend/LogData;Lcom/google/common/flogger/backend/MetadataProcessor;)Ljava/lang/String;

    move-result-object v0

    .line 186
    invoke-super {p0, v0}, Ljava/util/logging/LogRecord;->setMessage(Ljava/lang/String;)V

    return-object v0
.end method

.method public final getMetadataProcessor()Lcom/google/common/flogger/backend/MetadataProcessor;
    .locals 1

    iget-object v0, p0, Lcom/google/common/flogger/backend/system/AbstractLogRecord;->metadata:Lcom/google/common/flogger/backend/MetadataProcessor;

    return-object v0
.end method

.method public final setMessage(Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    const-string p1, ""

    .line 176
    :cond_0
    invoke-super {p0, p1}, Ljava/util/logging/LogRecord;->setMessage(Ljava/lang/String;)V

    return-void
.end method

.method public final setParameters([Ljava/lang/Object;)V
    .locals 0

    .line 163
    invoke-virtual {p0}, Lcom/google/common/flogger/backend/system/AbstractLogRecord;->getMessage()Ljava/lang/String;

    if-nez p1, :cond_0

    sget-object p1, Lcom/google/common/flogger/backend/system/AbstractLogRecord;->NO_PARAMETERS:[Ljava/lang/Object;

    .line 168
    :cond_0
    invoke-super {p0, p1}, Ljava/util/logging/LogRecord;->setParameters([Ljava/lang/Object;)V

    return-void
.end method

.method public final setResourceBundle(Ljava/util/ResourceBundle;)V
    .locals 0

    return-void
.end method

.method public final setResourceBundleName(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final toMutableLogRecord()Ljava/util/logging/LogRecord;
    .locals 3

    .line 258
    new-instance v0, Ljava/util/logging/LogRecord;

    invoke-virtual {p0}, Lcom/google/common/flogger/backend/system/AbstractLogRecord;->getLevel()Ljava/util/logging/Level;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/common/flogger/backend/system/AbstractLogRecord;->getFormattedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/util/logging/LogRecord;-><init>(Ljava/util/logging/Level;Ljava/lang/String;)V

    sget-object v1, Lcom/google/common/flogger/backend/system/AbstractLogRecord;->NO_PARAMETERS:[Ljava/lang/Object;

    .line 259
    invoke-virtual {v0, v1}, Ljava/util/logging/LogRecord;->setParameters([Ljava/lang/Object;)V

    .line 260
    invoke-virtual {p0}, Lcom/google/common/flogger/backend/system/AbstractLogRecord;->getSourceClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/LogRecord;->setSourceClassName(Ljava/lang/String;)V

    .line 261
    invoke-virtual {p0}, Lcom/google/common/flogger/backend/system/AbstractLogRecord;->getSourceMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/LogRecord;->setSourceMethodName(Ljava/lang/String;)V

    .line 262
    invoke-virtual {p0}, Lcom/google/common/flogger/backend/system/AbstractLogRecord;->getLoggerName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/LogRecord;->setLoggerName(Ljava/lang/String;)V

    .line 263
    invoke-virtual {p0}, Lcom/google/common/flogger/backend/system/AbstractLogRecord;->getMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/LogRecord;->setMillis(J)V

    .line 264
    invoke-virtual {p0}, Lcom/google/common/flogger/backend/system/AbstractLogRecord;->getThrown()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/LogRecord;->setThrown(Ljava/lang/Throwable;)V

    .line 269
    invoke-virtual {p0}, Lcom/google/common/flogger/backend/system/AbstractLogRecord;->getThreadID()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/logging/LogRecord;->setThreadID(I)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 295
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 296
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " {\n  message: "

    .line 297
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 298
    invoke-virtual {p0}, Lcom/google/common/flogger/backend/system/AbstractLogRecord;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n  arguments: "

    .line 299
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 300
    invoke-virtual {p0}, Lcom/google/common/flogger/backend/system/AbstractLogRecord;->getParameters()[Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/google/common/flogger/backend/system/AbstractLogRecord;->getParameters()[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    goto :goto_0

    :cond_0
    const-string v2, "<none>"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0xa

    .line 301
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 302
    invoke-virtual {p0}, Lcom/google/common/flogger/backend/system/AbstractLogRecord;->getLogData()Lcom/google/common/flogger/backend/LogData;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/common/flogger/backend/system/AbstractLogRecord;->safeAppend(Lcom/google/common/flogger/backend/LogData;Ljava/lang/StringBuilder;)V

    const-string v1, "\n}"

    .line 303
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
