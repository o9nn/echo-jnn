.class public Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunctionType4;
.super Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunction;
.source "PDFunctionType4.java"


# static fields
.field private static final OPERATORS:Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Operators;


# instance fields
.field private final instructions:Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/InstructionSequence;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Operators;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Operators;-><init>()V

    sput-object v0, Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunctionType4;->OPERATORS:Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Operators;

    return-void
.end method

.method public constructor <init>(Lcom/tom_roush/pdfbox/cos/COSBase;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 49
    invoke-direct {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunction;-><init>(Lcom/tom_roush/pdfbox/cos/COSBase;)V

    .line 50
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunctionType4;->getPDStream()Lcom/tom_roush/pdfbox/pdmodel/common/PDStream;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/common/PDStream;->toByteArray()[B

    move-result-object p1

    .line 51
    new-instance v0, Ljava/lang/String;

    const-string v1, "ISO-8859-1"

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 52
    invoke-static {v0}, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/InstructionSequenceBuilder;->parse(Ljava/lang/CharSequence;)Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/InstructionSequence;

    move-result-object p1

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunctionType4;->instructions:Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/InstructionSequence;

    return-void
.end method


# virtual methods
.method public eval([F)[F
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 69
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/ExecutionContext;

    sget-object v1, Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunctionType4;->OPERATORS:Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Operators;

    invoke-direct {v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/ExecutionContext;-><init>(Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Operators;)V

    const/4 v1, 0x0

    .line 70
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 72
    invoke-virtual {p0, v1}, Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunctionType4;->getDomainForInput(I)Lcom/tom_roush/pdfbox/pdmodel/common/PDRange;

    move-result-object v2

    .line 73
    aget v3, p1, v1

    invoke-virtual {v2}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRange;->getMin()F

    move-result v4

    invoke-virtual {v2}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRange;->getMax()F

    move-result v2

    invoke-virtual {p0, v3, v4, v2}, Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunctionType4;->clipToRange(FFF)F

    move-result v2

    .line 74
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/ExecutionContext;->getStack()Ljava/util/Stack;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunctionType4;->instructions:Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/InstructionSequence;

    .line 78
    invoke-virtual {p1, v0}, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/InstructionSequence;->execute(Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/ExecutionContext;)V

    .line 81
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunctionType4;->getNumberOfOutputParameters()I

    move-result p1

    .line 82
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/ExecutionContext;->getStack()Ljava/util/Stack;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Stack;->size()I

    move-result v1

    if-lt v1, p1, :cond_2

    .line 90
    new-array v1, p1, [F

    add-int/lit8 p1, p1, -0x1

    :goto_1
    if-ltz p1, :cond_1

    .line 93
    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunctionType4;->getRangeForOutput(I)Lcom/tom_roush/pdfbox/pdmodel/common/PDRange;

    move-result-object v2

    .line 94
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/ExecutionContext;->popReal()F

    move-result v3

    aput v3, v1, p1

    .line 95
    invoke-virtual {v2}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRange;->getMin()F

    move-result v4

    invoke-virtual {v2}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRange;->getMax()F

    move-result v2

    invoke-virtual {p0, v3, v4, v2}, Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunctionType4;->clipToRange(FFF)F

    move-result v2

    aput v2, v1, p1

    add-int/lit8 p1, p1, -0x1

    goto :goto_1

    :cond_1
    return-object v1

    .line 85
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "The type 4 function returned "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " values but the Range entry indicates that "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " values be returned."

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getFunctionType()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method
