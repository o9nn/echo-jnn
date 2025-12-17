.class public Lcom/google/common/flogger/parser/DefaultBraceStyleMessageParser;
.super Lcom/google/common/flogger/parser/BraceStyleMessageParser;
.source "DefaultBraceStyleMessageParser.java"


# static fields
.field private static final INSTANCE:Lcom/google/common/flogger/parser/BraceStyleMessageParser;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    new-instance v0, Lcom/google/common/flogger/parser/DefaultBraceStyleMessageParser;

    invoke-direct {v0}, Lcom/google/common/flogger/parser/DefaultBraceStyleMessageParser;-><init>()V

    sput-object v0, Lcom/google/common/flogger/parser/DefaultBraceStyleMessageParser;->INSTANCE:Lcom/google/common/flogger/parser/BraceStyleMessageParser;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/google/common/flogger/parser/BraceStyleMessageParser;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/google/common/flogger/parser/BraceStyleMessageParser;
    .locals 1

    sget-object v0, Lcom/google/common/flogger/parser/DefaultBraceStyleMessageParser;->INSTANCE:Lcom/google/common/flogger/parser/BraceStyleMessageParser;

    return-object v0
.end method


# virtual methods
.method public parseBraceFormatTerm(Lcom/google/common/flogger/parser/MessageBuilder;ILjava/lang/String;III)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/flogger/parser/MessageBuilder<",
            "*>;I",
            "Ljava/lang/String;",
            "III)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/common/flogger/parser/ParseException;
        }
    .end annotation

    const/4 v0, -0x1

    if-ne p5, v0, :cond_0

    .line 58
    invoke-static {p2}, Lcom/google/common/flogger/parameter/BraceStyleParameter;->of(I)Lcom/google/common/flogger/parameter/BraceStyleParameter;

    move-result-object p2

    invoke-virtual {p1, p4, p6, p2}, Lcom/google/common/flogger/parser/MessageBuilder;->addParameter(IILcom/google/common/flogger/parameter/Parameter;)V

    return-void

    :cond_0
    add-int/lit8 p5, p5, -0x1

    add-int/lit8 p6, p6, -0x1

    const-string p1, "the default brace style parser does not allow trailing format specifiers"

    .line 52
    invoke-static {p1, p3, p5, p6}, Lcom/google/common/flogger/parser/ParseException;->withBounds(Ljava/lang/String;Ljava/lang/String;II)Lcom/google/common/flogger/parser/ParseException;

    move-result-object p1

    throw p1
.end method
