.class public Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/StandardStructureTypes;
.super Ljava/lang/Object;
.source "StandardStructureTypes.java"


# static fields
.field public static final ANNOT:Ljava/lang/String; = "Annot"

.field public static final ART:Ljava/lang/String; = "Art"

.field public static final BIB_ENTRY:Ljava/lang/String; = "BibEntry"

.field public static final BLOCK_QUOTE:Ljava/lang/String; = "BlockQuote"

.field public static final CAPTION:Ljava/lang/String; = "Caption"

.field public static final CODE:Ljava/lang/String; = "Code"

.field public static final DIV:Ljava/lang/String; = "Div"

.field public static final DOCUMENT:Ljava/lang/String; = "Document"

.field public static final FORM:Ljava/lang/String; = "Form"

.field public static final FORMULA:Ljava/lang/String; = "Formula"

.field public static final Figure:Ljava/lang/String; = "Figure"

.field public static final H:Ljava/lang/String; = "H"

.field public static final H1:Ljava/lang/String; = "H1"

.field public static final H2:Ljava/lang/String; = "H2"

.field public static final H3:Ljava/lang/String; = "H3"

.field public static final H4:Ljava/lang/String; = "H4"

.field public static final H5:Ljava/lang/String; = "H5"

.field public static final H6:Ljava/lang/String; = "H6"

.field public static final INDEX:Ljava/lang/String; = "Index"

.field public static final L:Ljava/lang/String; = "L"

.field public static final LBL:Ljava/lang/String; = "Lbl"

.field public static final LI:Ljava/lang/String; = "LI"

.field public static final LINK:Ljava/lang/String; = "Link"

.field public static final L_BODY:Ljava/lang/String; = "LBody"

.field public static final NON_STRUCT:Ljava/lang/String; = "NonStruct"

.field public static final NOTE:Ljava/lang/String; = "Note"

.field public static final P:Ljava/lang/String; = "P"

.field public static final PART:Ljava/lang/String; = "Part"

.field public static final PRIVATE:Ljava/lang/String; = "Private"

.field public static final QUOTE:Ljava/lang/String; = "Quote"

.field public static final RB:Ljava/lang/String; = "RB"

.field public static final REFERENCE:Ljava/lang/String; = "Reference"

.field public static final RP:Ljava/lang/String; = "RP"

.field public static final RT:Ljava/lang/String; = "RT"

.field public static final RUBY:Ljava/lang/String; = "Ruby"

.field public static final SECT:Ljava/lang/String; = "Sect"

.field public static final SPAN:Ljava/lang/String; = "Span"

.field public static final TABLE:Ljava/lang/String; = "Table"

.field public static final TD:Ljava/lang/String; = "TD"

.field public static final TH:Ljava/lang/String; = "TH"

.field public static final TOC:Ljava/lang/String; = "TOC"

.field public static final TOCI:Ljava/lang/String; = "TOCI"

.field public static final TR:Ljava/lang/String; = "TR"

.field public static final T_BODY:Ljava/lang/String; = "TBody"

.field public static final T_FOOT:Ljava/lang/String; = "TFoot"

.field public static final T_HEAD:Ljava/lang/String; = "THead"

.field public static final WARICHU:Ljava/lang/String; = "Warichu"

.field public static final WP:Ljava/lang/String; = "WP"

.field public static final WT:Ljava/lang/String; = "WT"

.field public static types:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const-string v0, "PdfBox-Android"

    .line 290
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/StandardStructureTypes;->types:Ljava/util/List;

    const-class v1, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/StandardStructureTypes;

    .line 294
    invoke-virtual {v1}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    .line 295
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 297
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v5

    invoke-static {v5}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    move-result v5

    if-eqz v5, :cond_0

    :try_start_0
    sget-object v5, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/StandardStructureTypes;->types:Ljava/util/List;

    const/4 v6, 0x0

    .line 301
    invoke-virtual {v4, v6}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v4

    .line 309
    invoke-virtual {v4}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catch_1
    move-exception v4

    .line 305
    invoke-virtual {v4}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/StandardStructureTypes;->types:Ljava/util/List;

    .line 313
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 317
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
