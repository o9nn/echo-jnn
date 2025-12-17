.class final Lcom/google/common/flogger/backend/NoOpContextDataProvider$NoOpScopedLoggingContext$LazyLogger;
.super Ljava/lang/Object;
.source "NoOpContextDataProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/flogger/backend/NoOpContextDataProvider$NoOpScopedLoggingContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LazyLogger"
.end annotation


# static fields
.field private static final logger:Lcom/google/common/flogger/FluentLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 51
    invoke-static {}, Lcom/google/common/flogger/FluentLogger;->forEnclosingClass()Lcom/google/common/flogger/FluentLogger;

    move-result-object v0

    sput-object v0, Lcom/google/common/flogger/backend/NoOpContextDataProvider$NoOpScopedLoggingContext$LazyLogger;->logger:Lcom/google/common/flogger/FluentLogger;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/google/common/flogger/FluentLogger;
    .locals 1

    sget-object v0, Lcom/google/common/flogger/backend/NoOpContextDataProvider$NoOpScopedLoggingContext$LazyLogger;->logger:Lcom/google/common/flogger/FluentLogger;

    return-object v0
.end method
