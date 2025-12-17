.class Lcom/google/common/flogger/LogSite$1;
.super Lcom/google/common/flogger/LogSite;
.source "LogSite.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/flogger/LogSite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 58
    invoke-direct {p0}, Lcom/google/common/flogger/LogSite;-><init>()V

    return-void
.end method


# virtual methods
.method public getClassName()Ljava/lang/String;
    .locals 1

    const-string v0, "<unknown class>"

    return-object v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getLineNumber()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getMethodName()Ljava/lang/String;
    .locals 1

    const-string v0, "<unknown method>"

    return-object v0
.end method
