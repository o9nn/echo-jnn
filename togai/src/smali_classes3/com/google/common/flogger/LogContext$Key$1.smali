.class Lcom/google/common/flogger/LogContext$Key$1;
.super Lcom/google/common/flogger/MetadataKey;
.source "LogContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/flogger/LogContext$Key;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/flogger/MetadataKey<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/Class;Z)V
    .locals 0

    .line 95
    invoke-direct {p0, p1, p2, p3}, Lcom/google/common/flogger/MetadataKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Z)V

    return-void
.end method


# virtual methods
.method public emitRepeated(Ljava/util/Iterator;Lcom/google/common/flogger/MetadataKey$KeyValueHandler;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/google/common/flogger/MetadataKey$KeyValueHandler;",
            ")V"
        }
    .end annotation

    .line 98
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 99
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 100
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 101
    invoke-virtual {p0}, Lcom/google/common/flogger/LogContext$Key$1;->getLabel()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1, v0}, Lcom/google/common/flogger/MetadataKey$KeyValueHandler;->handle(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 104
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 105
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_1
    const/16 v0, 0x2c

    .line 107
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 108
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 109
    invoke-virtual {p0}, Lcom/google/common/flogger/LogContext$Key$1;->getLabel()Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x5d

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, p1, v0}, Lcom/google/common/flogger/MetadataKey$KeyValueHandler;->handle(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method
