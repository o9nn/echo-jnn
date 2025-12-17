.class public Lcom/tom_roush/pdfbox/pdmodel/interactive/measurement/PDNumberFormatDictionary;
.super Ljava/lang/Object;
.source "PDNumberFormatDictionary.java"

# interfaces
.implements Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;


# static fields
.field public static final FRACTIONAL_DISPLAY_DECIMAL:Ljava/lang/String; = "D"

.field public static final FRACTIONAL_DISPLAY_FRACTION:Ljava/lang/String; = "F"

.field public static final FRACTIONAL_DISPLAY_ROUND:Ljava/lang/String; = "R"

.field public static final FRACTIONAL_DISPLAY_TRUNCATE:Ljava/lang/String; = "T"

.field public static final LABEL_PREFIX_TO_VALUE:Ljava/lang/String; = "P"

.field public static final LABEL_SUFFIX_TO_VALUE:Ljava/lang/String; = "S"

.field public static final TYPE:Ljava/lang/String; = "NumberFormat"


# instance fields
.field private numberFormatDictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;-><init>()V

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/measurement/PDNumberFormatDictionary;->numberFormatDictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 69
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->TYPE:Lcom/tom_roush/pdfbox/cos/COSName;

    const-string v2, "NumberFormat"

    invoke-virtual {v0, v1, v2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setName(Lcom/tom_roush/pdfbox/cos/COSName;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V
    .locals 0

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/measurement/PDNumberFormatDictionary;->numberFormatDictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    return-void
.end method


# virtual methods
.method public bridge synthetic getCOSObject()Lcom/tom_roush/pdfbox/cos/COSBase;
    .locals 1

    .line 27
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/measurement/PDNumberFormatDictionary;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    return-object v0
.end method

.method public getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/measurement/PDNumberFormatDictionary;->numberFormatDictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    return-object v0
.end method

.method public getConversionFactor()F
    .locals 2

    .line 131
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/measurement/PDNumberFormatDictionary;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    const-string v1, "C"

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getFloat(Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method public getDecimalSeparator()Ljava/lang/String;
    .locals 3

    .line 243
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/measurement/PDNumberFormatDictionary;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    const-string v1, "RD"

    const-string v2, "."

    invoke-virtual {v0, v1, v2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDenominator()I
    .locals 2

    .line 183
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/measurement/PDNumberFormatDictionary;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    const-string v1, "D"

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getFractionalDisplay()Ljava/lang/String;
    .locals 3

    .line 151
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/measurement/PDNumberFormatDictionary;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    const-string v1, "F"

    const-string v2, "D"

    invoke-virtual {v0, v1, v2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLabelPositionToValue()Ljava/lang/String;
    .locals 3

    .line 301
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/measurement/PDNumberFormatDictionary;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    const-string v1, "O"

    const-string v2, "S"

    invoke-virtual {v0, v1, v2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLabelPrefixString()Ljava/lang/String;
    .locals 3

    .line 262
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/measurement/PDNumberFormatDictionary;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    const-string v1, "PS"

    const-string v2, " "

    invoke-virtual {v0, v1, v2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLabelSuffixString()Ljava/lang/String;
    .locals 3

    .line 281
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/measurement/PDNumberFormatDictionary;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    const-string v1, "SS"

    const-string v2, " "

    invoke-virtual {v0, v1, v2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getThousandsSeparator()Ljava/lang/String;
    .locals 3

    .line 223
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/measurement/PDNumberFormatDictionary;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    const-string v1, "RT"

    const-string v2, ","

    invoke-virtual {v0, v1, v2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    const-string v0, "NumberFormat"

    return-object v0
.end method

.method public getUnits()Ljava/lang/String;
    .locals 2

    .line 111
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/measurement/PDNumberFormatDictionary;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    const-string v1, "U"

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isFD()Z
    .locals 3

    .line 203
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/measurement/PDNumberFormatDictionary;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    const-string v1, "FD"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public setConversionFactor(F)V
    .locals 2

    .line 141
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/measurement/PDNumberFormatDictionary;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    const-string v1, "C"

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setFloat(Ljava/lang/String;F)V

    return-void
.end method

.method public setDecimalSeparator(Ljava/lang/String;)V
    .locals 2

    .line 253
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/measurement/PDNumberFormatDictionary;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    const-string v1, "RD"

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setDenominator(I)V
    .locals 2

    .line 193
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/measurement/PDNumberFormatDictionary;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    const-string v1, "D"

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setInt(Ljava/lang/String;I)V

    return-void
.end method

.method public setFD(Z)V
    .locals 2

    .line 213
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/measurement/PDNumberFormatDictionary;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    const-string v1, "FD"

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setFractionalDisplay(Ljava/lang/String;)V
    .locals 2

    const-string v0, "F"

    if-eqz p1, :cond_1

    const-string v1, "D"

    .line 163
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 164
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "R"

    .line 165
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "T"

    .line 166
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 172
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Value must be \"D\", \"F\", \"R\", or \"T\", (or null)."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 168
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/measurement/PDNumberFormatDictionary;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setLabelPositionToValue(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_1

    const-string v0, "P"

    .line 313
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "S"

    .line 314
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 320
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Value must be \"S\", or \"P\" (or null)."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 316
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/measurement/PDNumberFormatDictionary;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    const-string v1, "O"

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setLabelPrefixString(Ljava/lang/String;)V
    .locals 2

    .line 271
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/measurement/PDNumberFormatDictionary;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    const-string v1, "PS"

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setLabelSuffixString(Ljava/lang/String;)V
    .locals 2

    .line 291
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/measurement/PDNumberFormatDictionary;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    const-string v1, "SS"

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setThousandsSeparator(Ljava/lang/String;)V
    .locals 2

    .line 233
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/measurement/PDNumberFormatDictionary;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    const-string v1, "RT"

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setUnits(Ljava/lang/String;)V
    .locals 2

    .line 121
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/measurement/PDNumberFormatDictionary;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    const-string v1, "U"

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
