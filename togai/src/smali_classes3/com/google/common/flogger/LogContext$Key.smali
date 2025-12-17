.class public final Lcom/google/common/flogger/LogContext$Key;
.super Ljava/lang/Object;
.source "LogContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/flogger/LogContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Key"
.end annotation


# static fields
.field public static final CONTEXT_STACK_SIZE:Lcom/google/common/flogger/MetadataKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/flogger/MetadataKey<",
            "Lcom/google/common/flogger/StackSize;",
            ">;"
        }
    .end annotation
.end field

.field public static final LOG_AT_MOST_EVERY:Lcom/google/common/flogger/MetadataKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/flogger/MetadataKey<",
            "Lcom/google/common/flogger/LogSiteStats$RateLimitPeriod;",
            ">;"
        }
    .end annotation
.end field

.field public static final LOG_CAUSE:Lcom/google/common/flogger/MetadataKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/flogger/MetadataKey<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field public static final LOG_EVERY_N:Lcom/google/common/flogger/MetadataKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/flogger/MetadataKey<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final LOG_SITE_GROUPING_KEY:Lcom/google/common/flogger/MetadataKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/flogger/MetadataKey<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final TAGS:Lcom/google/common/flogger/MetadataKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/flogger/MetadataKey<",
            "Lcom/google/common/flogger/context/Tags;",
            ">;"
        }
    .end annotation
.end field

.field public static final WAS_FORCED:Lcom/google/common/flogger/MetadataKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/flogger/MetadataKey<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "cause"

    .line 71
    const-class v1, Ljava/lang/Throwable;

    .line 72
    invoke-static {v0, v1}, Lcom/google/common/flogger/MetadataKey;->single(Ljava/lang/String;Ljava/lang/Class;)Lcom/google/common/flogger/MetadataKey;

    move-result-object v0

    sput-object v0, Lcom/google/common/flogger/LogContext$Key;->LOG_CAUSE:Lcom/google/common/flogger/MetadataKey;

    const-string v0, "ratelimit_count"

    .line 78
    const-class v1, Ljava/lang/Integer;

    .line 79
    invoke-static {v0, v1}, Lcom/google/common/flogger/MetadataKey;->single(Ljava/lang/String;Ljava/lang/Class;)Lcom/google/common/flogger/MetadataKey;

    move-result-object v0

    sput-object v0, Lcom/google/common/flogger/LogContext$Key;->LOG_EVERY_N:Lcom/google/common/flogger/MetadataKey;

    const-string v0, "ratelimit_period"

    .line 85
    const-class v1, Lcom/google/common/flogger/LogSiteStats$RateLimitPeriod;

    .line 86
    invoke-static {v0, v1}, Lcom/google/common/flogger/MetadataKey;->single(Ljava/lang/String;Ljava/lang/Class;)Lcom/google/common/flogger/MetadataKey;

    move-result-object v0

    sput-object v0, Lcom/google/common/flogger/LogContext$Key;->LOG_AT_MOST_EVERY:Lcom/google/common/flogger/MetadataKey;

    .line 94
    new-instance v0, Lcom/google/common/flogger/LogContext$Key$1;

    const-class v1, Ljava/lang/Object;

    const/4 v2, 0x1

    const-string v3, "group_by"

    invoke-direct {v0, v3, v1, v2}, Lcom/google/common/flogger/LogContext$Key$1;-><init>(Ljava/lang/String;Ljava/lang/Class;Z)V

    sput-object v0, Lcom/google/common/flogger/LogContext$Key;->LOG_SITE_GROUPING_KEY:Lcom/google/common/flogger/MetadataKey;

    const-string v0, "forced"

    .line 144
    const-class v1, Ljava/lang/Boolean;

    .line 145
    invoke-static {v0, v1}, Lcom/google/common/flogger/MetadataKey;->single(Ljava/lang/String;Ljava/lang/Class;)Lcom/google/common/flogger/MetadataKey;

    move-result-object v0

    sput-object v0, Lcom/google/common/flogger/LogContext$Key;->WAS_FORCED:Lcom/google/common/flogger/MetadataKey;

    .line 155
    new-instance v0, Lcom/google/common/flogger/LogContext$Key$2;

    const-class v1, Lcom/google/common/flogger/context/Tags;

    const/4 v2, 0x0

    const-string v3, "tags"

    invoke-direct {v0, v3, v1, v2}, Lcom/google/common/flogger/LogContext$Key$2;-><init>(Ljava/lang/String;Ljava/lang/Class;Z)V

    sput-object v0, Lcom/google/common/flogger/LogContext$Key;->TAGS:Lcom/google/common/flogger/MetadataKey;

    const-string v0, "stack_size"

    .line 175
    const-class v1, Lcom/google/common/flogger/StackSize;

    .line 176
    invoke-static {v0, v1}, Lcom/google/common/flogger/MetadataKey;->single(Ljava/lang/String;Ljava/lang/Class;)Lcom/google/common/flogger/MetadataKey;

    move-result-object v0

    sput-object v0, Lcom/google/common/flogger/LogContext$Key;->CONTEXT_STACK_SIZE:Lcom/google/common/flogger/MetadataKey;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
