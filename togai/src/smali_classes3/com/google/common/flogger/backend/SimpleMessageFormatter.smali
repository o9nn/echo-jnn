.class public final Lcom/google/common/flogger/backend/SimpleMessageFormatter;
.super Ljava/lang/Object;
.source "SimpleMessageFormatter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/flogger/backend/SimpleMessageFormatter$Option;,
        Lcom/google/common/flogger/backend/SimpleMessageFormatter$SimpleLogHandler;
    }
.end annotation


# static fields
.field private static final DEFAULT_FORMATTER:Lcom/google/common/flogger/backend/LogMessageFormatter;

.field private static final DEFAULT_HANDLER:Lcom/google/common/flogger/backend/MetadataHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/flogger/backend/MetadataHandler<",
            "Lcom/google/common/flogger/MetadataKey$KeyValueHandler;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEFAULT_KEYS_TO_IGNORE:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/common/flogger/MetadataKey<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 53
    sget-object v0, Lcom/google/common/flogger/LogContext$Key;->LOG_CAUSE:Lcom/google/common/flogger/MetadataKey;

    .line 54
    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/google/common/flogger/backend/SimpleMessageFormatter;->DEFAULT_KEYS_TO_IGNORE:Ljava/util/Set;

    .line 57
    invoke-static {v0}, Lcom/google/common/flogger/backend/MetadataKeyValueHandlers;->getDefaultHandler(Ljava/util/Set;)Lcom/google/common/flogger/backend/MetadataHandler;

    move-result-object v0

    sput-object v0, Lcom/google/common/flogger/backend/SimpleMessageFormatter;->DEFAULT_HANDLER:Lcom/google/common/flogger/backend/MetadataHandler;

    .line 59
    new-instance v0, Lcom/google/common/flogger/backend/SimpleMessageFormatter$1;

    invoke-direct {v0}, Lcom/google/common/flogger/backend/SimpleMessageFormatter$1;-><init>()V

    sput-object v0, Lcom/google/common/flogger/backend/SimpleMessageFormatter;->DEFAULT_FORMATTER:Lcom/google/common/flogger/backend/LogMessageFormatter;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 280
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/google/common/flogger/backend/MetadataHandler;
    .locals 1

    sget-object v0, Lcom/google/common/flogger/backend/SimpleMessageFormatter;->DEFAULT_HANDLER:Lcom/google/common/flogger/backend/MetadataHandler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/common/flogger/backend/LogData;Lcom/google/common/flogger/backend/MetadataProcessor;)Ljava/lang/String;
    .locals 0

    .line 51
    invoke-static {p0, p1}, Lcom/google/common/flogger/backend/SimpleMessageFormatter;->format(Lcom/google/common/flogger/backend/LogData;Lcom/google/common/flogger/backend/MetadataProcessor;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static appendContext(Lcom/google/common/flogger/backend/MetadataProcessor;Lcom/google/common/flogger/backend/MetadataHandler;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/flogger/backend/MetadataProcessor;",
            "Lcom/google/common/flogger/backend/MetadataHandler<",
            "Lcom/google/common/flogger/MetadataKey$KeyValueHandler;",
            ">;",
            "Ljava/lang/StringBuilder;",
            ")",
            "Ljava/lang/StringBuilder;"
        }
    .end annotation

    .line 136
    new-instance v0, Lcom/google/common/flogger/backend/KeyValueFormatter;

    const-string v1, "[CONTEXT "

    const-string v2, " ]"

    invoke-direct {v0, v1, v2, p2}, Lcom/google/common/flogger/backend/KeyValueFormatter;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 137
    invoke-virtual {p0, p1, v0}, Lcom/google/common/flogger/backend/MetadataProcessor;->process(Lcom/google/common/flogger/backend/MetadataHandler;Ljava/lang/Object;)V

    .line 138
    invoke-virtual {v0}, Lcom/google/common/flogger/backend/KeyValueFormatter;->done()V

    return-object p2
.end method

.method public static appendFormatted(Lcom/google/common/flogger/backend/LogData;Lcom/google/common/flogger/backend/MetadataProcessor;Lcom/google/common/flogger/backend/MetadataHandler;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/flogger/backend/LogData;",
            "Lcom/google/common/flogger/backend/MetadataProcessor;",
            "Lcom/google/common/flogger/backend/MetadataHandler<",
            "Lcom/google/common/flogger/MetadataKey$KeyValueHandler;",
            ">;",
            "Ljava/lang/StringBuilder;",
            ")",
            "Ljava/lang/StringBuilder;"
        }
    .end annotation

    .line 112
    invoke-static {p0, p3}, Lcom/google/common/flogger/backend/BaseMessageFormatter;->appendFormattedMessage(Lcom/google/common/flogger/backend/LogData;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 113
    invoke-static {p1, p2, p3}, Lcom/google/common/flogger/backend/SimpleMessageFormatter;->appendContext(Lcom/google/common/flogger/backend/MetadataProcessor;Lcom/google/common/flogger/backend/MetadataHandler;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object p0

    return-object p0
.end method

.method private static format(Lcom/google/common/flogger/backend/LogData;Lcom/google/common/flogger/backend/MetadataProcessor;)Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/google/common/flogger/backend/SimpleMessageFormatter;->DEFAULT_KEYS_TO_IGNORE:Ljava/util/Set;

    .line 194
    invoke-static {p0, p1, v0}, Lcom/google/common/flogger/backend/SimpleMessageFormatter;->mustBeFormatted(Lcom/google/common/flogger/backend/LogData;Lcom/google/common/flogger/backend/MetadataProcessor;Ljava/util/Set;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/common/flogger/backend/SimpleMessageFormatter;->DEFAULT_HANDLER:Lcom/google/common/flogger/backend/MetadataHandler;

    .line 195
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0, p1, v0, v1}, Lcom/google/common/flogger/backend/SimpleMessageFormatter;->appendFormatted(Lcom/google/common/flogger/backend/LogData;Lcom/google/common/flogger/backend/MetadataProcessor;Lcom/google/common/flogger/backend/MetadataHandler;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 196
    :cond_0
    invoke-static {p0}, Lcom/google/common/flogger/backend/SimpleMessageFormatter;->getLiteralLogMessage(Lcom/google/common/flogger/backend/LogData;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static format(Lcom/google/common/flogger/backend/LogData;Lcom/google/common/flogger/backend/SimpleMessageFormatter$SimpleLogHandler;)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 205
    invoke-static {}, Lcom/google/common/flogger/backend/Metadata;->empty()Lcom/google/common/flogger/backend/Metadata;

    move-result-object v0

    invoke-interface {p0}, Lcom/google/common/flogger/backend/LogData;->getMetadata()Lcom/google/common/flogger/backend/Metadata;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/flogger/backend/MetadataProcessor;->forScopeAndLogSite(Lcom/google/common/flogger/backend/Metadata;Lcom/google/common/flogger/backend/Metadata;)Lcom/google/common/flogger/backend/MetadataProcessor;

    move-result-object v0

    .line 207
    invoke-interface {p0}, Lcom/google/common/flogger/backend/LogData;->getLevel()Ljava/util/logging/Level;

    move-result-object v1

    .line 208
    invoke-static {p0, v0}, Lcom/google/common/flogger/backend/SimpleMessageFormatter;->format(Lcom/google/common/flogger/backend/LogData;Lcom/google/common/flogger/backend/MetadataProcessor;)Ljava/lang/String;

    move-result-object p0

    sget-object v2, Lcom/google/common/flogger/LogContext$Key;->LOG_CAUSE:Lcom/google/common/flogger/MetadataKey;

    .line 209
    invoke-virtual {v0, v2}, Lcom/google/common/flogger/backend/MetadataProcessor;->getSingleValue(Lcom/google/common/flogger/MetadataKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    .line 206
    invoke-interface {p1, v1, p0, v0}, Lcom/google/common/flogger/backend/SimpleMessageFormatter$SimpleLogHandler;->handleFormattedLogMessage(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method static format(Lcom/google/common/flogger/backend/LogData;Lcom/google/common/flogger/backend/SimpleMessageFormatter$SimpleLogHandler;Lcom/google/common/flogger/backend/SimpleMessageFormatter$Option;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 235
    sget-object v0, Lcom/google/common/flogger/backend/SimpleMessageFormatter$2;->$SwitchMap$com$google$common$flogger$backend$SimpleMessageFormatter$Option:[I

    invoke-virtual {p2}, Lcom/google/common/flogger/backend/SimpleMessageFormatter$Option;->ordinal()I

    move-result p2

    aget p2, v0, p2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    goto :goto_0

    .line 253
    :cond_0
    invoke-static {p0, p1}, Lcom/google/common/flogger/backend/SimpleMessageFormatter;->format(Lcom/google/common/flogger/backend/LogData;Lcom/google/common/flogger/backend/SimpleMessageFormatter$SimpleLogHandler;)V

    goto :goto_0

    .line 237
    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 238
    invoke-interface {p0}, Lcom/google/common/flogger/backend/LogData;->getLogSite()Lcom/google/common/flogger/LogSite;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/google/common/flogger/backend/MessageUtils;->appendLogSite(Lcom/google/common/flogger/LogSite;Ljava/lang/StringBuilder;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, " "

    .line 239
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    :cond_2
    invoke-static {}, Lcom/google/common/flogger/backend/Metadata;->empty()Lcom/google/common/flogger/backend/Metadata;

    move-result-object v0

    invoke-interface {p0}, Lcom/google/common/flogger/backend/LogData;->getMetadata()Lcom/google/common/flogger/backend/Metadata;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/flogger/backend/MetadataProcessor;->forScopeAndLogSite(Lcom/google/common/flogger/backend/Metadata;Lcom/google/common/flogger/backend/Metadata;)Lcom/google/common/flogger/backend/MetadataProcessor;

    move-result-object v0

    sget-object v1, Lcom/google/common/flogger/backend/SimpleMessageFormatter;->DEFAULT_HANDLER:Lcom/google/common/flogger/backend/MetadataHandler;

    .line 242
    invoke-static {p0, v0, v1, p2}, Lcom/google/common/flogger/backend/SimpleMessageFormatter;->appendFormatted(Lcom/google/common/flogger/backend/LogData;Lcom/google/common/flogger/backend/MetadataProcessor;Lcom/google/common/flogger/backend/MetadataHandler;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 247
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 248
    invoke-interface {p0}, Lcom/google/common/flogger/backend/LogData;->getMetadata()Lcom/google/common/flogger/backend/Metadata;

    move-result-object v0

    sget-object v1, Lcom/google/common/flogger/LogContext$Key;->LOG_CAUSE:Lcom/google/common/flogger/MetadataKey;

    invoke-virtual {v0, v1}, Lcom/google/common/flogger/backend/Metadata;->findValue(Lcom/google/common/flogger/MetadataKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    .line 249
    invoke-interface {p0}, Lcom/google/common/flogger/backend/LogData;->getLevel()Ljava/util/logging/Level;

    move-result-object p0

    invoke-interface {p1, p0, p2, v0}, Lcom/google/common/flogger/backend/SimpleMessageFormatter$SimpleLogHandler;->handleFormattedLogMessage(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public static getDefaultFormatter()Lcom/google/common/flogger/backend/LogMessageFormatter;
    .locals 1

    sget-object v0, Lcom/google/common/flogger/backend/SimpleMessageFormatter;->DEFAULT_FORMATTER:Lcom/google/common/flogger/backend/LogMessageFormatter;

    return-object v0
.end method

.method public static getLiteralLogMessage(Lcom/google/common/flogger/backend/LogData;)Ljava/lang/String;
    .locals 0

    .line 155
    invoke-interface {p0}, Lcom/google/common/flogger/backend/LogData;->getLiteralArgument()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/google/common/flogger/backend/MessageUtils;->safeToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static mustBeFormatted(Lcom/google/common/flogger/backend/LogData;Lcom/google/common/flogger/backend/MetadataProcessor;Ljava/util/Set;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/flogger/backend/LogData;",
            "Lcom/google/common/flogger/backend/MetadataProcessor;",
            "Ljava/util/Set<",
            "Lcom/google/common/flogger/MetadataKey<",
            "*>;>;)Z"
        }
    .end annotation

    .line 183
    invoke-interface {p0}, Lcom/google/common/flogger/backend/LogData;->getTemplateContext()Lcom/google/common/flogger/backend/TemplateContext;

    move-result-object p0

    if-nez p0, :cond_1

    .line 184
    invoke-virtual {p1}, Lcom/google/common/flogger/backend/MetadataProcessor;->keyCount()I

    move-result p0

    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result v0

    if-gt p0, v0, :cond_1

    .line 185
    invoke-virtual {p1}, Lcom/google/common/flogger/backend/MetadataProcessor;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p2, p0}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
