.class Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/layout/PlainText$Word;
.super Ljava/lang/Object;
.source "PlainText.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/layout/PlainText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Word"
.end annotation


# instance fields
.field private attributedString:Ljava/text/AttributedString;

.field private final textContent:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 272
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/layout/PlainText$Word;->textContent:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method getAttributes()Ljava/text/AttributedString;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/layout/PlainText$Word;->attributedString:Ljava/text/AttributedString;

    return-object v0
.end method

.method getText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/layout/PlainText$Word;->textContent:Ljava/lang/String;

    return-object v0
.end method

.method setAttributes(Ljava/text/AttributedString;)V
    .locals 0

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/layout/PlainText$Word;->attributedString:Ljava/text/AttributedString;

    return-void
.end method
