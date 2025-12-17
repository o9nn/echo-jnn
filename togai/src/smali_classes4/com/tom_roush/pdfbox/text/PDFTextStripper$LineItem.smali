.class final Lcom/tom_roush/pdfbox/text/PDFTextStripper$LineItem;
.super Ljava/lang/Object;
.source "PDFTextStripper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tom_roush/pdfbox/text/PDFTextStripper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LineItem"
.end annotation


# static fields
.field public static WORD_SEPARATOR:Lcom/tom_roush/pdfbox/text/PDFTextStripper$LineItem;


# instance fields
.field private final textPosition:Lcom/tom_roush/pdfbox/text/TextPosition;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1997
    new-instance v0, Lcom/tom_roush/pdfbox/text/PDFTextStripper$LineItem;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/text/PDFTextStripper$LineItem;-><init>()V

    sput-object v0, Lcom/tom_roush/pdfbox/text/PDFTextStripper$LineItem;->WORD_SEPARATOR:Lcom/tom_roush/pdfbox/text/PDFTextStripper$LineItem;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 2007
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tom_roush/pdfbox/text/PDFTextStripper$LineItem;->textPosition:Lcom/tom_roush/pdfbox/text/TextPosition;

    return-void
.end method

.method constructor <init>(Lcom/tom_roush/pdfbox/text/TextPosition;)V
    .locals 0

    .line 2012
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tom_roush/pdfbox/text/PDFTextStripper$LineItem;->textPosition:Lcom/tom_roush/pdfbox/text/TextPosition;

    return-void
.end method

.method public static getWordSeparator()Lcom/tom_roush/pdfbox/text/PDFTextStripper$LineItem;
    .locals 1

    sget-object v0, Lcom/tom_roush/pdfbox/text/PDFTextStripper$LineItem;->WORD_SEPARATOR:Lcom/tom_roush/pdfbox/text/PDFTextStripper$LineItem;

    return-object v0
.end method


# virtual methods
.method public getTextPosition()Lcom/tom_roush/pdfbox/text/TextPosition;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/text/PDFTextStripper$LineItem;->textPosition:Lcom/tom_roush/pdfbox/text/TextPosition;

    return-object v0
.end method

.method public isWordSeparator()Z
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/text/PDFTextStripper$LineItem;->textPosition:Lcom/tom_roush/pdfbox/text/TextPosition;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
