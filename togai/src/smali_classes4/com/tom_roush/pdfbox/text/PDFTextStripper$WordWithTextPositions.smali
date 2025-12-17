.class final Lcom/tom_roush/pdfbox/text/PDFTextStripper$WordWithTextPositions;
.super Ljava/lang/Object;
.source "PDFTextStripper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tom_roush/pdfbox/text/PDFTextStripper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "WordWithTextPositions"
.end annotation


# instance fields
.field text:Ljava/lang/String;

.field textPositions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tom_roush/pdfbox/text/TextPosition;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/tom_roush/pdfbox/text/TextPosition;",
            ">;)V"
        }
    .end annotation

    .line 2039
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tom_roush/pdfbox/text/PDFTextStripper$WordWithTextPositions;->text:Ljava/lang/String;

    iput-object p2, p0, Lcom/tom_roush/pdfbox/text/PDFTextStripper$WordWithTextPositions;->textPositions:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/text/PDFTextStripper$WordWithTextPositions;->text:Ljava/lang/String;

    return-object v0
.end method

.method public getTextPositions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/tom_roush/pdfbox/text/TextPosition;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/text/PDFTextStripper$WordWithTextPositions;->textPositions:Ljava/util/List;

    return-object v0
.end method
