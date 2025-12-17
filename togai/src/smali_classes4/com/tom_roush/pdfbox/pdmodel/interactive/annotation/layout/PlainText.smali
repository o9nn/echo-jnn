.class public Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/layout/PlainText;
.super Ljava/lang/Object;
.source "PlainText.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/layout/PlainText$Word;,
        Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/layout/PlainText$Line;,
        Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/layout/PlainText$Paragraph;,
        Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/layout/PlainText$TextAttribute;
    }
.end annotation


# static fields
.field private static final FONTSCALE:F = 1000.0f


# instance fields
.field private final paragraphs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/layout/PlainText$Paragraph;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 5

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x9

    const/16 v1, 0x20

    .line 53
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    const-string v0, "\\r\\n|\\n|\\r|\\u2028|\\u2029"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/layout/PlainText;->paragraphs:Ljava/util/List;

    .line 55
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 58
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_0

    const-string v2, " "

    :cond_0
    iget-object v3, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/layout/PlainText;->paragraphs:Ljava/util/List;

    .line 62
    new-instance v4, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/layout/PlainText$Paragraph;

    invoke-direct {v4, v2}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/layout/PlainText$Paragraph;-><init>(Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/layout/PlainText;->paragraphs:Ljava/util/List;

    .line 77
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/layout/PlainText;->paragraphs:Ljava/util/List;

    .line 79
    new-instance v2, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/layout/PlainText$Paragraph;

    invoke-direct {v2, v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/layout/PlainText$Paragraph;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method getParagraphs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/layout/PlainText$Paragraph;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/layout/PlainText;->paragraphs:Ljava/util/List;

    return-object v0
.end method
