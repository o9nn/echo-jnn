.class public Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationRubberStamp;
.super Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationMarkup;
.source "PDAnnotationRubberStamp.java"


# static fields
.field public static final NAME_APPROVED:Ljava/lang/String; = "Approved"

.field public static final NAME_AS_IS:Ljava/lang/String; = "AsIs"

.field public static final NAME_CONFIDENTIAL:Ljava/lang/String; = "Confidential"

.field public static final NAME_DEPARTMENTAL:Ljava/lang/String; = "Departmental"

.field public static final NAME_DRAFT:Ljava/lang/String; = "Draft"

.field public static final NAME_EXPERIMENTAL:Ljava/lang/String; = "Experimental"

.field public static final NAME_EXPIRED:Ljava/lang/String; = "Expired"

.field public static final NAME_FINAL:Ljava/lang/String; = "Final"

.field public static final NAME_FOR_COMMENT:Ljava/lang/String; = "ForComment"

.field public static final NAME_FOR_PUBLIC_RELEASE:Ljava/lang/String; = "ForPublicRelease"

.field public static final NAME_NOT_APPROVED:Ljava/lang/String; = "NotApproved"

.field public static final NAME_NOT_FOR_PUBLIC_RELEASE:Ljava/lang/String; = "NotForPublicRelease"

.field public static final NAME_SOLD:Ljava/lang/String; = "Sold"

.field public static final NAME_TOP_SECRET:Ljava/lang/String; = "TopSecret"

.field public static final SUB_TYPE:Ljava/lang/String; = "Stamp"


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 100
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationMarkup;-><init>()V

    .line 101
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationRubberStamp;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->SUBTYPE:Lcom/tom_roush/pdfbox/cos/COSName;

    const-string v2, "Stamp"

    invoke-virtual {v0, v1, v2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setName(Lcom/tom_roush/pdfbox/cos/COSName;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V
    .locals 0

    .line 111
    invoke-direct {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationMarkup;-><init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 3

    .line 133
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationRubberStamp;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->NAME:Lcom/tom_roush/pdfbox/cos/COSName;

    const-string v2, "Draft"

    invoke-virtual {v0, v1, v2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getNameAsString(Lcom/tom_roush/pdfbox/cos/COSName;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 2

    .line 122
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationRubberStamp;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->NAME:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setName(Lcom/tom_roush/pdfbox/cos/COSName;Ljava/lang/String;)V

    return-void
.end method
