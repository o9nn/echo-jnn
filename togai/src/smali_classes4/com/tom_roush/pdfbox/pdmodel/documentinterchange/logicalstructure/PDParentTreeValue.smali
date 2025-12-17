.class public Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDParentTreeValue;
.super Ljava/lang/Object;
.source "PDParentTreeValue.java"

# interfaces
.implements Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;


# instance fields
.field obj:Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;


# direct methods
.method public constructor <init>(Lcom/tom_roush/pdfbox/cos/COSArray;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDParentTreeValue;->obj:Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;

    return-void
.end method

.method public constructor <init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDParentTreeValue;->obj:Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;

    return-void
.end method


# virtual methods
.method public getCOSObject()Lcom/tom_roush/pdfbox/cos/COSBase;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDParentTreeValue;->obj:Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;

    .line 47
    invoke-interface {v0}, Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDParentTreeValue;->obj:Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;

    .line 53
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
