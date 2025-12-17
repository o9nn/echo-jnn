.class public final Lcom/google/common/flogger/util/StackBasedLogSite;
.super Lcom/google/common/flogger/LogSite;
.source "StackBasedLogSite.java"


# annotations
.annotation runtime Lcom/google/errorprone/annotations/CheckReturnValue;
.end annotation


# instance fields
.field private final stackElement:Ljava/lang/StackTraceElement;


# direct methods
.method public constructor <init>(Ljava/lang/StackTraceElement;)V
    .locals 1

    .line 41
    invoke-direct {p0}, Lcom/google/common/flogger/LogSite;-><init>()V

    const-string v0, "stack element"

    .line 42
    invoke-static {p1, v0}, Lcom/google/common/flogger/util/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/StackTraceElement;

    iput-object p1, p0, Lcom/google/common/flogger/util/StackBasedLogSite;->stackElement:Ljava/lang/StackTraceElement;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 68
    instance-of v0, p1, Lcom/google/common/flogger/util/StackBasedLogSite;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/common/flogger/util/StackBasedLogSite;->stackElement:Ljava/lang/StackTraceElement;

    check-cast p1, Lcom/google/common/flogger/util/StackBasedLogSite;

    iget-object p1, p1, Lcom/google/common/flogger/util/StackBasedLogSite;->stackElement:Ljava/lang/StackTraceElement;

    .line 69
    invoke-virtual {v0, p1}, Ljava/lang/StackTraceElement;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getClassName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/common/flogger/util/StackBasedLogSite;->stackElement:Ljava/lang/StackTraceElement;

    .line 47
    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/common/flogger/util/StackBasedLogSite;->stackElement:Ljava/lang/StackTraceElement;

    .line 63
    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLineNumber()I
    .locals 2

    iget-object v0, p0, Lcom/google/common/flogger/util/StackBasedLogSite;->stackElement:Ljava/lang/StackTraceElement;

    .line 58
    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public getMethodName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/common/flogger/util/StackBasedLogSite;->stackElement:Ljava/lang/StackTraceElement;

    .line 52
    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/google/common/flogger/util/StackBasedLogSite;->stackElement:Ljava/lang/StackTraceElement;

    .line 77
    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->hashCode()I

    move-result v0

    return v0
.end method
