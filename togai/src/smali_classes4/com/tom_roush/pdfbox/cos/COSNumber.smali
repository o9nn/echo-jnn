.class public abstract Lcom/tom_roush/pdfbox/cos/COSNumber;
.super Lcom/tom_roush/pdfbox/cos/COSBase;
.source "COSNumber.java"


# static fields
.field public static final ONE:Lcom/tom_roush/pdfbox/cos/COSInteger;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ZERO:Lcom/tom_roush/pdfbox/cos/COSInteger;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSInteger;->ZERO:Lcom/tom_roush/pdfbox/cos/COSInteger;

    sput-object v0, Lcom/tom_roush/pdfbox/cos/COSNumber;->ZERO:Lcom/tom_roush/pdfbox/cos/COSInteger;

    .line 39
    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSInteger;->ONE:Lcom/tom_roush/pdfbox/cos/COSInteger;

    sput-object v0, Lcom/tom_roush/pdfbox/cos/COSNumber;->ONE:Lcom/tom_roush/pdfbox/cos/COSInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/cos/COSBase;-><init>()V

    return-void
.end method

.method public static get(Ljava/lang/String;)Lcom/tom_roush/pdfbox/cos/COSNumber;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 82
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const-string v1, "Not a number: "

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_3

    .line 84
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x30

    if-gt v2, v0, :cond_0

    const/16 v2, 0x39

    if-gt v0, v2, :cond_0

    int-to-long v0, v0

    const-wide/16 v2, 0x30

    sub-long/2addr v0, v2

    .line 87
    invoke-static {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSInteger;->get(J)Lcom/tom_roush/pdfbox/cos/COSInteger;

    move-result-object p0

    return-object p0

    :cond_0
    const/16 v2, 0x2d

    if-eq v0, v2, :cond_2

    const/16 v2, 0x2e

    if-ne v0, v2, :cond_1

    goto :goto_0

    .line 96
    :cond_1
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 92
    :cond_2
    :goto_0
    sget-object p0, Lcom/tom_roush/pdfbox/cos/COSInteger;->ZERO:Lcom/tom_roush/pdfbox/cos/COSInteger;

    return-object p0

    .line 99
    :cond_3
    invoke-static {p0}, Lcom/tom_roush/pdfbox/cos/COSNumber;->isFloat(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 101
    new-instance v0, Lcom/tom_roush/pdfbox/cos/COSFloat;

    invoke-direct {v0, p0}, Lcom/tom_roush/pdfbox/cos/COSFloat;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 105
    :cond_4
    :try_start_0
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x2b

    if-ne v0, v2, :cond_5

    .line 108
    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/tom_roush/pdfbox/cos/COSInteger;->get(J)Lcom/tom_roush/pdfbox/cos/COSInteger;

    move-result-object p0

    return-object p0

    .line 110
    :cond_5
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/tom_roush/pdfbox/cos/COSInteger;->get(J)Lcom/tom_roush/pdfbox/cos/COSInteger;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const-string v0, "+"

    .line 115
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const-string v2, "-"

    if-nez v0, :cond_7

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_1

    :cond_6
    move-object v0, p0

    goto :goto_2

    .line 116
    :cond_7
    :goto_1
    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :goto_2
    const-string v3, "[0-9]*"

    .line 117
    invoke-virtual {v0, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 122
    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_8

    sget-object p0, Lcom/tom_roush/pdfbox/cos/COSInteger;->OUT_OF_RANGE_MIN:Lcom/tom_roush/pdfbox/cos/COSInteger;

    goto :goto_3

    .line 123
    :cond_8
    sget-object p0, Lcom/tom_roush/pdfbox/cos/COSInteger;->OUT_OF_RANGE_MAX:Lcom/tom_roush/pdfbox/cos/COSInteger;

    :goto_3
    return-object p0

    .line 119
    :cond_9
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static isFloat(Ljava/lang/String;)Z
    .locals 5

    .line 129
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    .line 132
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2e

    if-eq v3, v4, :cond_1

    const/16 v4, 0x65

    if-ne v3, v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    const/4 p0, 0x1

    return p0

    :cond_2
    return v1
.end method


# virtual methods
.method public abstract doubleValue()D
.end method

.method public abstract floatValue()F
.end method

.method public abstract intValue()I
.end method

.method public abstract longValue()J
.end method
