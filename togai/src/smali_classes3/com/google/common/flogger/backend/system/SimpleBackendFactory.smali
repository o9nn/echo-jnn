.class public final Lcom/google/common/flogger/backend/system/SimpleBackendFactory;
.super Lcom/google/common/flogger/backend/system/BackendFactory;
.source "SimpleBackendFactory.java"


# static fields
.field private static final INSTANCE:Lcom/google/common/flogger/backend/system/BackendFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    new-instance v0, Lcom/google/common/flogger/backend/system/SimpleBackendFactory;

    invoke-direct {v0}, Lcom/google/common/flogger/backend/system/SimpleBackendFactory;-><init>()V

    sput-object v0, Lcom/google/common/flogger/backend/system/SimpleBackendFactory;->INSTANCE:Lcom/google/common/flogger/backend/system/BackendFactory;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/google/common/flogger/backend/system/BackendFactory;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/google/common/flogger/backend/system/BackendFactory;
    .locals 1

    sget-object v0, Lcom/google/common/flogger/backend/system/SimpleBackendFactory;->INSTANCE:Lcom/google/common/flogger/backend/system/BackendFactory;

    return-object v0
.end method


# virtual methods
.method public create(Ljava/lang/String;)Lcom/google/common/flogger/backend/LoggerBackend;
    .locals 2

    const/16 v0, 0x24

    const/16 v1, 0x2e

    .line 40
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object p1

    .line 41
    new-instance v0, Lcom/google/common/flogger/backend/system/SimpleLoggerBackend;

    invoke-direct {v0, p1}, Lcom/google/common/flogger/backend/system/SimpleLoggerBackend;-><init>(Ljava/util/logging/Logger;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Default logger backend factory"

    return-object v0
.end method
