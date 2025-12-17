.class Lcom/tom_roush/pdfbox/pdfparser/XrefTrailerResolver$XrefTrailerObj;
.super Ljava/lang/Object;
.source "XrefTrailerResolver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tom_roush/pdfbox/pdfparser/XrefTrailerResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "XrefTrailerObj"
.end annotation


# instance fields
.field protected trailer:Lcom/tom_roush/pdfbox/cos/COSDictionary;

.field private final xrefTable:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/tom_roush/pdfbox/cos/COSObjectKey;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private xrefType:Lcom/tom_roush/pdfbox/pdfparser/XrefTrailerResolver$XRefType;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdfparser/XrefTrailerResolver$XrefTrailerObj;->trailer:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 68
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdfparser/XrefTrailerResolver$XrefTrailerObj;->xrefTable:Ljava/util/Map;

    .line 75
    sget-object v0, Lcom/tom_roush/pdfbox/pdfparser/XrefTrailerResolver$XRefType;->TABLE:Lcom/tom_roush/pdfbox/pdfparser/XrefTrailerResolver$XRefType;

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdfparser/XrefTrailerResolver$XrefTrailerObj;->xrefType:Lcom/tom_roush/pdfbox/pdfparser/XrefTrailerResolver$XRefType;

    return-void
.end method

.method synthetic constructor <init>(Lcom/tom_roush/pdfbox/pdfparser/XrefTrailerResolver$1;)V
    .locals 0

    .line 62
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/pdfparser/XrefTrailerResolver$XrefTrailerObj;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/tom_roush/pdfbox/pdfparser/XrefTrailerResolver$XrefTrailerObj;)Lcom/tom_roush/pdfbox/pdfparser/XrefTrailerResolver$XRefType;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/tom_roush/pdfbox/pdfparser/XrefTrailerResolver$XrefTrailerObj;->xrefType:Lcom/tom_roush/pdfbox/pdfparser/XrefTrailerResolver$XRefType;

    return-object p0
.end method

.method static synthetic access$102(Lcom/tom_roush/pdfbox/pdfparser/XrefTrailerResolver$XrefTrailerObj;Lcom/tom_roush/pdfbox/pdfparser/XrefTrailerResolver$XRefType;)Lcom/tom_roush/pdfbox/pdfparser/XrefTrailerResolver$XRefType;
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdfparser/XrefTrailerResolver$XrefTrailerObj;->xrefType:Lcom/tom_roush/pdfbox/pdfparser/XrefTrailerResolver$XRefType;

    return-object p1
.end method

.method static synthetic access$200(Lcom/tom_roush/pdfbox/pdfparser/XrefTrailerResolver$XrefTrailerObj;)Ljava/util/Map;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/tom_roush/pdfbox/pdfparser/XrefTrailerResolver$XrefTrailerObj;->xrefTable:Ljava/util/Map;

    return-object p0
.end method


# virtual methods
.method public reset()V
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdfparser/XrefTrailerResolver$XrefTrailerObj;->xrefTable:Ljava/util/Map;

    .line 80
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method
