.class final Lcom/google/common/flogger/FluentLogger$NoOp;
.super Lcom/google/common/flogger/LoggingApi$NoOp;
.source "FluentLogger.java"

# interfaces
.implements Lcom/google/common/flogger/FluentLogger$Api;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/flogger/FluentLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "NoOp"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/flogger/LoggingApi$NoOp<",
        "Lcom/google/common/flogger/FluentLogger$Api;",
        ">;",
        "Lcom/google/common/flogger/FluentLogger$Api;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 54
    invoke-direct {p0}, Lcom/google/common/flogger/LoggingApi$NoOp;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/flogger/FluentLogger$1;)V
    .locals 0

    .line 54
    invoke-direct {p0}, Lcom/google/common/flogger/FluentLogger$NoOp;-><init>()V

    return-void
.end method
