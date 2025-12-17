.class public Lcom/tom_roush/pdfbox/pdmodel/common/PDDictionaryWrapper;
.super Ljava/lang/Object;
.source "PDDictionaryWrapper.java"

# interfaces
.implements Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;


# instance fields
.field private final dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;-><init>()V

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/common/PDDictionaryWrapper;->dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    return-void
.end method

.method public constructor <init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/common/PDDictionaryWrapper;->dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 66
    :cond_0
    instance-of v0, p1, Lcom/tom_roush/pdfbox/pdmodel/common/PDDictionaryWrapper;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/common/PDDictionaryWrapper;->dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 68
    check-cast p1, Lcom/tom_roush/pdfbox/pdmodel/common/PDDictionaryWrapper;

    iget-object p1, p1, Lcom/tom_roush/pdfbox/pdmodel/common/PDDictionaryWrapper;->dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic getCOSObject()Lcom/tom_roush/pdfbox/cos/COSBase;
    .locals 1

    .line 27
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/common/PDDictionaryWrapper;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    return-object v0
.end method

.method public getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/common/PDDictionaryWrapper;->dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/common/PDDictionaryWrapper;->dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 76
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
