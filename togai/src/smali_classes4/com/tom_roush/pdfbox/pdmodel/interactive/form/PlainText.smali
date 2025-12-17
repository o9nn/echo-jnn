.class Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PlainText;
.super Ljava/lang/Object;
.source "PlainText.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PlainText$Word;,
        Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PlainText$Line;,
        Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PlainText$Paragraph;,
        Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PlainText$TextAttribute;
    }
.end annotation


# static fields
.field private static final FONTSCALE:F = 1000.0f


# instance fields
.field private final paragraphs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PlainText$Paragraph;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 5

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    new-instance p1, Ljava/util/ArrayList;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PlainText;->paragraphs:Ljava/util/List;

    .line 56
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PlainText$Paragraph;

    const-string v1, ""

    invoke-direct {v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PlainText$Paragraph;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    const/16 v0, 0x9

    const/16 v1, 0x20

    .line 60
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    const-string v0, "\\r\\n|\\n|\\r|\\u2028|\\u2029"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PlainText;->paragraphs:Ljava/util/List;

    .line 62
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p1, v1

    .line 65
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    const-string v2, " "

    :cond_1
    iget-object v3, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PlainText;->paragraphs:Ljava/util/List;

    .line 69
    new-instance v4, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PlainText$Paragraph;

    invoke-direct {v4, v2}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PlainText$Paragraph;-><init>(Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method constructor <init>(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PlainText;->paragraphs:Ljava/util/List;

    .line 85
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PlainText;->paragraphs:Ljava/util/List;

    .line 87
    new-instance v2, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PlainText$Paragraph;

    invoke-direct {v2, v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PlainText$Paragraph;-><init>(Ljava/lang/String;)V

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
            "Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PlainText$Paragraph;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PlainText;->paragraphs:Ljava/util/List;

    return-object v0
.end method
