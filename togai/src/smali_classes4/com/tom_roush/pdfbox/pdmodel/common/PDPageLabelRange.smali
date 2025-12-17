.class public Lcom/tom_roush/pdfbox/pdmodel/common/PDPageLabelRange;
.super Ljava/lang/Object;
.source "PDPageLabelRange.java"

# interfaces
.implements Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;


# static fields
.field private static final KEY_PREFIX:Lcom/tom_roush/pdfbox/cos/COSName;

.field private static final KEY_START:Lcom/tom_roush/pdfbox/cos/COSName;

.field private static final KEY_STYLE:Lcom/tom_roush/pdfbox/cos/COSName;

.field public static final STYLE_DECIMAL:Ljava/lang/String; = "D"

.field public static final STYLE_LETTERS_LOWER:Ljava/lang/String; = "a"

.field public static final STYLE_LETTERS_UPPER:Ljava/lang/String; = "A"

.field public static final STYLE_ROMAN_LOWER:Ljava/lang/String; = "r"

.field public static final STYLE_ROMAN_UPPER:Ljava/lang/String; = "R"


# instance fields
.field private root:Lcom/tom_roush/pdfbox/cos/COSDictionary;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->ST:Lcom/tom_roush/pdfbox/cos/COSName;

    sput-object v0, Lcom/tom_roush/pdfbox/pdmodel/common/PDPageLabelRange;->KEY_START:Lcom/tom_roush/pdfbox/cos/COSName;

    .line 37
    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->P:Lcom/tom_roush/pdfbox/cos/COSName;

    sput-object v0, Lcom/tom_roush/pdfbox/pdmodel/common/PDPageLabelRange;->KEY_PREFIX:Lcom/tom_roush/pdfbox/cos/COSName;

    .line 38
    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->S:Lcom/tom_roush/pdfbox/cos/COSName;

    sput-object v0, Lcom/tom_roush/pdfbox/pdmodel/common/PDPageLabelRange;->KEY_STYLE:Lcom/tom_roush/pdfbox/cos/COSName;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 74
    new-instance v0, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;-><init>()V

    invoke-direct {p0, v0}, Lcom/tom_roush/pdfbox/pdmodel/common/PDPageLabelRange;-><init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V

    return-void
.end method

.method public constructor <init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V
    .locals 0

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/common/PDPageLabelRange;->root:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    return-void
.end method


# virtual methods
.method public bridge synthetic getCOSObject()Lcom/tom_roush/pdfbox/cos/COSBase;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/common/PDPageLabelRange;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    return-object v0
.end method

.method public getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/common/PDPageLabelRange;->root:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    return-object v0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/common/PDPageLabelRange;->root:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    sget-object v1, Lcom/tom_roush/pdfbox/pdmodel/common/PDPageLabelRange;->KEY_PREFIX:Lcom/tom_roush/pdfbox/cos/COSName;

    .line 164
    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getString(Lcom/tom_roush/pdfbox/cos/COSName;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStart()I
    .locals 3

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/common/PDPageLabelRange;->root:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    sget-object v1, Lcom/tom_roush/pdfbox/pdmodel/common/PDPageLabelRange;->KEY_START:Lcom/tom_roush/pdfbox/cos/COSName;

    const/4 v2, 0x1

    .line 135
    invoke-virtual {v0, v1, v2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getInt(Lcom/tom_roush/pdfbox/cos/COSName;I)I

    move-result v0

    return v0
.end method

.method public getStyle()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/common/PDPageLabelRange;->root:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    sget-object v1, Lcom/tom_roush/pdfbox/pdmodel/common/PDPageLabelRange;->KEY_STYLE:Lcom/tom_roush/pdfbox/cos/COSName;

    .line 106
    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getNameAsString(Lcom/tom_roush/pdfbox/cos/COSName;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setPrefix(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/common/PDPageLabelRange;->root:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    sget-object v1, Lcom/tom_roush/pdfbox/pdmodel/common/PDPageLabelRange;->KEY_PREFIX:Lcom/tom_roush/pdfbox/cos/COSName;

    .line 178
    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setString(Lcom/tom_roush/pdfbox/cos/COSName;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/common/PDPageLabelRange;->root:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    sget-object v0, Lcom/tom_roush/pdfbox/pdmodel/common/PDPageLabelRange;->KEY_PREFIX:Lcom/tom_roush/pdfbox/cos/COSName;

    .line 182
    invoke-virtual {p1, v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->removeItem(Lcom/tom_roush/pdfbox/cos/COSName;)V

    :goto_0
    return-void
.end method

.method public setStart(I)V
    .locals 2

    if-lez p1, :cond_0

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/common/PDPageLabelRange;->root:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    sget-object v1, Lcom/tom_roush/pdfbox/pdmodel/common/PDPageLabelRange;->KEY_START:Lcom/tom_roush/pdfbox/cos/COSName;

    .line 153
    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setInt(Lcom/tom_roush/pdfbox/cos/COSName;I)V

    return-void

    .line 150
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The page numbering start value must be a positive integer"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setStyle(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/common/PDPageLabelRange;->root:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    sget-object v1, Lcom/tom_roush/pdfbox/pdmodel/common/PDPageLabelRange;->KEY_STYLE:Lcom/tom_roush/pdfbox/cos/COSName;

    .line 120
    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setName(Lcom/tom_roush/pdfbox/cos/COSName;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/common/PDPageLabelRange;->root:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    sget-object v0, Lcom/tom_roush/pdfbox/pdmodel/common/PDPageLabelRange;->KEY_STYLE:Lcom/tom_roush/pdfbox/cos/COSName;

    .line 124
    invoke-virtual {p1, v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->removeItem(Lcom/tom_roush/pdfbox/cos/COSName;)V

    :goto_0
    return-void
.end method
