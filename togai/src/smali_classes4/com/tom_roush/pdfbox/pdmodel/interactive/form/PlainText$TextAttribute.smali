.class Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PlainText$TextAttribute;
.super Ljava/text/AttributedCharacterIterator$Attribute;
.source "PlainText.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PlainText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TextAttribute"
.end annotation


# static fields
.field public static final WIDTH:Ljava/text/AttributedCharacterIterator$Attribute;

.field private static final serialVersionUID:J = -0x2b8f8f68e29490bdL


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 118
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PlainText$TextAttribute;

    const-string v1, "width"

    invoke-direct {v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PlainText$TextAttribute;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PlainText$TextAttribute;->WIDTH:Ljava/text/AttributedCharacterIterator$Attribute;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 122
    invoke-direct {p0, p1}, Ljava/text/AttributedCharacterIterator$Attribute;-><init>(Ljava/lang/String;)V

    return-void
.end method
