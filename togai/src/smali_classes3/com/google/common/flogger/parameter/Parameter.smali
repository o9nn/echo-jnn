.class public abstract Lcom/google/common/flogger/parameter/Parameter;
.super Ljava/lang/Object;
.source "Parameter.java"


# instance fields
.field private final index:I

.field private final options:Lcom/google/common/flogger/backend/FormatOptions;


# direct methods
.method protected constructor <init>(Lcom/google/common/flogger/backend/FormatOptions;I)V
    .locals 2

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    if-ltz p2, :cond_0

    iput p2, p0, Lcom/google/common/flogger/parameter/Parameter;->index:I

    iput-object p1, p0, Lcom/google/common/flogger/parameter/Parameter;->options:Lcom/google/common/flogger/backend/FormatOptions;

    return-void

    .line 45
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "invalid index: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 42
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "format options cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method protected abstract accept(Lcom/google/common/flogger/parameter/ParameterVisitor;Ljava/lang/Object;)V
.end method

.method public final accept(Lcom/google/common/flogger/parameter/ParameterVisitor;[Ljava/lang/Object;)V
    .locals 2

    .line 62
    invoke-virtual {p0}, Lcom/google/common/flogger/parameter/Parameter;->getIndex()I

    move-result v0

    array-length v1, p2

    if-ge v0, v1, :cond_1

    .line 63
    invoke-virtual {p0}, Lcom/google/common/flogger/parameter/Parameter;->getIndex()I

    move-result v0

    aget-object p2, p2, v0

    if-eqz p2, :cond_0

    .line 65
    invoke-virtual {p0, p1, p2}, Lcom/google/common/flogger/parameter/Parameter;->accept(Lcom/google/common/flogger/parameter/ParameterVisitor;Ljava/lang/Object;)V

    goto :goto_0

    .line 67
    :cond_0
    invoke-interface {p1}, Lcom/google/common/flogger/parameter/ParameterVisitor;->visitNull()V

    goto :goto_0

    .line 70
    :cond_1
    invoke-interface {p1}, Lcom/google/common/flogger/parameter/ParameterVisitor;->visitMissing()V

    :goto_0
    return-void
.end method

.method public abstract getFormat()Ljava/lang/String;
.end method

.method protected final getFormatOptions()Lcom/google/common/flogger/backend/FormatOptions;
    .locals 1

    iget-object v0, p0, Lcom/google/common/flogger/parameter/Parameter;->options:Lcom/google/common/flogger/backend/FormatOptions;

    return-object v0
.end method

.method public final getIndex()I
    .locals 1

    iget v0, p0, Lcom/google/common/flogger/parameter/Parameter;->index:I

    return v0
.end method
