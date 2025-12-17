.class Lcom/google/auto/value/processor/MissingTypes$MissingTypeException;
.super Ljava/lang/RuntimeException;
.source "MissingTypes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/auto/value/processor/MissingTypes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MissingTypeException"
.end annotation


# direct methods
.method constructor <init>(Ljavax/lang/model/type/ErrorType;)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 57
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    return-void
.end method
