.class final Lcom/google/common/flogger/FluentLogger$Context;
.super Lcom/google/common/flogger/LogContext;
.source "FluentLogger.java"

# interfaces
.implements Lcom/google/common/flogger/FluentLogger$Api;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/flogger/FluentLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "Context"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/flogger/LogContext<",
        "Lcom/google/common/flogger/FluentLogger;",
        "Lcom/google/common/flogger/FluentLogger$Api;",
        ">;",
        "Lcom/google/common/flogger/FluentLogger$Api;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/flogger/FluentLogger;


# direct methods
.method private constructor <init>(Lcom/google/common/flogger/FluentLogger;Ljava/util/logging/Level;Z)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/flogger/FluentLogger$Context;->this$0:Lcom/google/common/flogger/FluentLogger;

    .line 90
    invoke-direct {p0, p2, p3}, Lcom/google/common/flogger/LogContext;-><init>(Ljava/util/logging/Level;Z)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/flogger/FluentLogger;Ljava/util/logging/Level;ZLcom/google/common/flogger/FluentLogger$1;)V
    .locals 0

    .line 88
    invoke-direct {p0, p1, p2, p3}, Lcom/google/common/flogger/FluentLogger$Context;-><init>(Lcom/google/common/flogger/FluentLogger;Ljava/util/logging/Level;Z)V

    return-void
.end method


# virtual methods
.method protected api()Lcom/google/common/flogger/FluentLogger$Api;
    .locals 0

    return-object p0
.end method

.method protected bridge synthetic api()Lcom/google/common/flogger/LoggingApi;
    .locals 1

    .line 88
    invoke-virtual {p0}, Lcom/google/common/flogger/FluentLogger$Context;->api()Lcom/google/common/flogger/FluentLogger$Api;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic getLogger()Lcom/google/common/flogger/AbstractLogger;
    .locals 1

    .line 88
    invoke-virtual {p0}, Lcom/google/common/flogger/FluentLogger$Context;->getLogger()Lcom/google/common/flogger/FluentLogger;

    move-result-object v0

    return-object v0
.end method

.method protected getLogger()Lcom/google/common/flogger/FluentLogger;
    .locals 1

    iget-object v0, p0, Lcom/google/common/flogger/FluentLogger$Context;->this$0:Lcom/google/common/flogger/FluentLogger;

    return-object v0
.end method

.method protected getMessageParser()Lcom/google/common/flogger/parser/MessageParser;
    .locals 1

    .line 110
    invoke-static {}, Lcom/google/common/flogger/parser/DefaultPrintfMessageParser;->getInstance()Lcom/google/common/flogger/parser/PrintfMessageParser;

    move-result-object v0

    return-object v0
.end method

.method protected noOp()Lcom/google/common/flogger/FluentLogger$Api;
    .locals 1

    .line 105
    sget-object v0, Lcom/google/common/flogger/FluentLogger;->NO_OP:Lcom/google/common/flogger/FluentLogger$NoOp;

    return-object v0
.end method

.method protected bridge synthetic noOp()Lcom/google/common/flogger/LoggingApi;
    .locals 1

    .line 88
    invoke-virtual {p0}, Lcom/google/common/flogger/FluentLogger$Context;->noOp()Lcom/google/common/flogger/FluentLogger$Api;

    move-result-object v0

    return-object v0
.end method
