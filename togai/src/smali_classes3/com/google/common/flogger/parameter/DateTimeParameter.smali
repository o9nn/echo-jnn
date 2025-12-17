.class public final Lcom/google/common/flogger/parameter/DateTimeParameter;
.super Lcom/google/common/flogger/parameter/Parameter;
.source "DateTimeParameter.java"


# instance fields
.field private final format:Lcom/google/common/flogger/parameter/DateTimeFormat;

.field private final formatString:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/google/common/flogger/backend/FormatOptions;ILcom/google/common/flogger/parameter/DateTimeFormat;)V
    .locals 1

    .line 44
    invoke-direct {p0, p1, p2}, Lcom/google/common/flogger/parameter/Parameter;-><init>(Lcom/google/common/flogger/backend/FormatOptions;I)V

    iput-object p3, p0, Lcom/google/common/flogger/parameter/DateTimeParameter;->format:Lcom/google/common/flogger/parameter/DateTimeFormat;

    .line 46
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "%"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p1, p2}, Lcom/google/common/flogger/backend/FormatOptions;->appendPrintfOptions(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 49
    invoke-virtual {p1}, Lcom/google/common/flogger/backend/FormatOptions;->shouldUpperCase()Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x54

    goto :goto_0

    :cond_0
    const/16 p1, 0x74

    :goto_0
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 50
    invoke-virtual {p3}, Lcom/google/common/flogger/parameter/DateTimeFormat;->getChar()C

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 51
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/flogger/parameter/DateTimeParameter;->formatString:Ljava/lang/String;

    return-void
.end method

.method public static of(Lcom/google/common/flogger/parameter/DateTimeFormat;Lcom/google/common/flogger/backend/FormatOptions;I)Lcom/google/common/flogger/parameter/Parameter;
    .locals 1

    .line 37
    new-instance v0, Lcom/google/common/flogger/parameter/DateTimeParameter;

    invoke-direct {v0, p1, p2, p0}, Lcom/google/common/flogger/parameter/DateTimeParameter;-><init>(Lcom/google/common/flogger/backend/FormatOptions;ILcom/google/common/flogger/parameter/DateTimeFormat;)V

    return-object v0
.end method


# virtual methods
.method protected accept(Lcom/google/common/flogger/parameter/ParameterVisitor;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/google/common/flogger/parameter/DateTimeParameter;->format:Lcom/google/common/flogger/parameter/DateTimeFormat;

    .line 56
    invoke-virtual {p0}, Lcom/google/common/flogger/parameter/DateTimeParameter;->getFormatOptions()Lcom/google/common/flogger/backend/FormatOptions;

    move-result-object v1

    invoke-interface {p1, p2, v0, v1}, Lcom/google/common/flogger/parameter/ParameterVisitor;->visitDateTime(Ljava/lang/Object;Lcom/google/common/flogger/parameter/DateTimeFormat;Lcom/google/common/flogger/backend/FormatOptions;)V

    return-void
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/common/flogger/parameter/DateTimeParameter;->formatString:Ljava/lang/String;

    return-object v0
.end method
