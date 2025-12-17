.class public abstract Lcom/google/common/flogger/LoggingScope;
.super Ljava/lang/Object;
.source "LoggingScope.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/flogger/LoggingScope$WeakScope;
    }
.end annotation


# instance fields
.field private final label:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/flogger/LoggingScope;->label:Ljava/lang/String;

    return-void
.end method

.method public static create(Ljava/lang/String;)Lcom/google/common/flogger/LoggingScope;
    .locals 2

    .line 52
    new-instance v0, Lcom/google/common/flogger/LoggingScope$WeakScope;

    const-string v1, "label"

    invoke-static {p0, v1}, Lcom/google/common/flogger/util/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-direct {v0, p0}, Lcom/google/common/flogger/LoggingScope$WeakScope;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method protected abstract onClose(Ljava/lang/Runnable;)V
.end method

.method protected abstract specialize(Lcom/google/common/flogger/LogSiteKey;)Lcom/google/common/flogger/LogSiteKey;
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/common/flogger/LoggingScope;->label:Ljava/lang/String;

    return-object v0
.end method
