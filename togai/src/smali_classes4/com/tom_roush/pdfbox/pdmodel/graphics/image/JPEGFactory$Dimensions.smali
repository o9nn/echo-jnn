.class Lcom/tom_roush/pdfbox/pdmodel/graphics/image/JPEGFactory$Dimensions;
.super Ljava/lang/Object;
.source "JPEGFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tom_roush/pdfbox/pdmodel/graphics/image/JPEGFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Dimensions"
.end annotation


# instance fields
.field private height:I

.field private numComponents:I

.field private width:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tom_roush/pdfbox/pdmodel/graphics/image/JPEGFactory$1;)V
    .locals 0

    .line 93
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/JPEGFactory$Dimensions;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/tom_roush/pdfbox/pdmodel/graphics/image/JPEGFactory$Dimensions;)I
    .locals 0

    .line 93
    iget p0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/JPEGFactory$Dimensions;->width:I

    return p0
.end method

.method static synthetic access$002(Lcom/tom_roush/pdfbox/pdmodel/graphics/image/JPEGFactory$Dimensions;I)I
    .locals 0

    .line 93
    iput p1, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/JPEGFactory$Dimensions;->width:I

    return p1
.end method

.method static synthetic access$100(Lcom/tom_roush/pdfbox/pdmodel/graphics/image/JPEGFactory$Dimensions;)I
    .locals 0

    .line 93
    iget p0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/JPEGFactory$Dimensions;->height:I

    return p0
.end method

.method static synthetic access$102(Lcom/tom_roush/pdfbox/pdmodel/graphics/image/JPEGFactory$Dimensions;I)I
    .locals 0

    .line 93
    iput p1, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/JPEGFactory$Dimensions;->height:I

    return p1
.end method
