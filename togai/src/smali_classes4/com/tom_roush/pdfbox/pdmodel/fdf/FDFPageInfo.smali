.class public Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFPageInfo;
.super Ljava/lang/Object;
.source "FDFPageInfo.java"

# interfaces
.implements Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;


# instance fields
.field private final pageInfo:Lcom/tom_roush/pdfbox/cos/COSDictionary;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;-><init>()V

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFPageInfo;->pageInfo:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    return-void
.end method

.method public constructor <init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFPageInfo;->pageInfo:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    return-void
.end method


# virtual methods
.method public bridge synthetic getCOSObject()Lcom/tom_roush/pdfbox/cos/COSBase;
    .locals 1

    .line 28
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFPageInfo;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    return-object v0
.end method

.method public getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFPageInfo;->pageInfo:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    return-object v0
.end method
