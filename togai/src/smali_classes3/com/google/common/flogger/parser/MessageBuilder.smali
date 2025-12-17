.class public abstract Lcom/google/common/flogger/parser/MessageBuilder;
.super Ljava/lang/Object;
.source "MessageBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final context:Lcom/google/common/flogger/backend/TemplateContext;

.field private maxIndex:I

.field private pmask:I


# direct methods
.method public constructor <init>(Lcom/google/common/flogger/backend/TemplateContext;)V
    .locals 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/common/flogger/parser/MessageBuilder;->pmask:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/common/flogger/parser/MessageBuilder;->maxIndex:I

    const-string v0, "context"

    .line 42
    invoke-static {p1, v0}, Lcom/google/common/flogger/util/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/flogger/backend/TemplateContext;

    iput-object p1, p0, Lcom/google/common/flogger/parser/MessageBuilder;->context:Lcom/google/common/flogger/backend/TemplateContext;

    return-void
.end method


# virtual methods
.method public final addParameter(IILcom/google/common/flogger/parameter/Parameter;)V
    .locals 3

    .line 78
    invoke-virtual {p3}, Lcom/google/common/flogger/parameter/Parameter;->getIndex()I

    move-result v0

    const/16 v1, 0x20

    if-ge v0, v1, :cond_0

    iget v0, p0, Lcom/google/common/flogger/parser/MessageBuilder;->pmask:I

    const/4 v1, 0x1

    .line 79
    invoke-virtual {p3}, Lcom/google/common/flogger/parameter/Parameter;->getIndex()I

    move-result v2

    shl-int/2addr v1, v2

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/common/flogger/parser/MessageBuilder;->pmask:I

    :cond_0
    iget v0, p0, Lcom/google/common/flogger/parser/MessageBuilder;->maxIndex:I

    .line 81
    invoke-virtual {p3}, Lcom/google/common/flogger/parameter/Parameter;->getIndex()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/google/common/flogger/parser/MessageBuilder;->maxIndex:I

    .line 82
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/common/flogger/parser/MessageBuilder;->addParameterImpl(IILcom/google/common/flogger/parameter/Parameter;)V

    return-void
.end method

.method protected abstract addParameterImpl(IILcom/google/common/flogger/parameter/Parameter;)V
.end method

.method public final build()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 111
    invoke-virtual {p0}, Lcom/google/common/flogger/parser/MessageBuilder;->getParser()Lcom/google/common/flogger/parser/MessageParser;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/common/flogger/parser/MessageParser;->parseImpl(Lcom/google/common/flogger/parser/MessageBuilder;)V

    iget v0, p0, Lcom/google/common/flogger/parser/MessageBuilder;->pmask:I

    add-int/lit8 v1, v0, 0x1

    and-int/2addr v1, v0

    if-nez v1, :cond_1

    iget v1, p0, Lcom/google/common/flogger/parser/MessageBuilder;->maxIndex:I

    const/16 v2, 0x1f

    if-le v1, v2, :cond_0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 122
    :cond_0
    invoke-virtual {p0}, Lcom/google/common/flogger/parser/MessageBuilder;->buildImpl()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_1
    not-int v0, v0

    .line 117
    invoke-static {v0}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v0

    .line 119
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "unreferenced arguments [first missing index=%d]"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 120
    invoke-virtual {p0}, Lcom/google/common/flogger/parser/MessageBuilder;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 118
    invoke-static {v0, v1}, Lcom/google/common/flogger/parser/ParseException;->generic(Ljava/lang/String;Ljava/lang/String;)Lcom/google/common/flogger/parser/ParseException;

    move-result-object v0

    throw v0
.end method

.method protected abstract buildImpl()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public final getExpectedArgumentCount()I
    .locals 1

    iget v0, p0, Lcom/google/common/flogger/parser/MessageBuilder;->maxIndex:I

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final getMessage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/common/flogger/parser/MessageBuilder;->context:Lcom/google/common/flogger/backend/TemplateContext;

    .line 52
    invoke-virtual {v0}, Lcom/google/common/flogger/backend/TemplateContext;->getMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getParser()Lcom/google/common/flogger/parser/MessageParser;
    .locals 1

    iget-object v0, p0, Lcom/google/common/flogger/parser/MessageBuilder;->context:Lcom/google/common/flogger/backend/TemplateContext;

    .line 47
    invoke-virtual {v0}, Lcom/google/common/flogger/backend/TemplateContext;->getParser()Lcom/google/common/flogger/parser/MessageParser;

    move-result-object v0

    return-object v0
.end method
