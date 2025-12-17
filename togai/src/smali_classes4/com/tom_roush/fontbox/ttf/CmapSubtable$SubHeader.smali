.class Lcom/tom_roush/fontbox/ttf/CmapSubtable$SubHeader;
.super Ljava/lang/Object;
.source "CmapSubtable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tom_roush/fontbox/ttf/CmapSubtable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SubHeader"
.end annotation


# instance fields
.field private final entryCount:I

.field private final firstCode:I

.field private final idDelta:S

.field private final idRangeOffset:I


# direct methods
.method private constructor <init>(IISI)V
    .locals 0

    .line 732
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/tom_roush/fontbox/ttf/CmapSubtable$SubHeader;->firstCode:I

    iput p2, p0, Lcom/tom_roush/fontbox/ttf/CmapSubtable$SubHeader;->entryCount:I

    iput-short p3, p0, Lcom/tom_roush/fontbox/ttf/CmapSubtable$SubHeader;->idDelta:S

    iput p4, p0, Lcom/tom_roush/fontbox/ttf/CmapSubtable$SubHeader;->idRangeOffset:I

    return-void
.end method

.method synthetic constructor <init>(IISILcom/tom_roush/fontbox/ttf/CmapSubtable$1;)V
    .locals 0

    .line 718
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/tom_roush/fontbox/ttf/CmapSubtable$SubHeader;-><init>(IISI)V

    return-void
.end method

.method static synthetic access$100(Lcom/tom_roush/fontbox/ttf/CmapSubtable$SubHeader;)I
    .locals 0

    .line 718
    invoke-direct {p0}, Lcom/tom_roush/fontbox/ttf/CmapSubtable$SubHeader;->getFirstCode()I

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/tom_roush/fontbox/ttf/CmapSubtable$SubHeader;)I
    .locals 0

    .line 718
    invoke-direct {p0}, Lcom/tom_roush/fontbox/ttf/CmapSubtable$SubHeader;->getIdRangeOffset()I

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lcom/tom_roush/fontbox/ttf/CmapSubtable$SubHeader;)S
    .locals 0

    .line 718
    invoke-direct {p0}, Lcom/tom_roush/fontbox/ttf/CmapSubtable$SubHeader;->getIdDelta()S

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lcom/tom_roush/fontbox/ttf/CmapSubtable$SubHeader;)I
    .locals 0

    .line 718
    invoke-direct {p0}, Lcom/tom_roush/fontbox/ttf/CmapSubtable$SubHeader;->getEntryCount()I

    move-result p0

    return p0
.end method

.method private getEntryCount()I
    .locals 1

    iget v0, p0, Lcom/tom_roush/fontbox/ttf/CmapSubtable$SubHeader;->entryCount:I

    return v0
.end method

.method private getFirstCode()I
    .locals 1

    iget v0, p0, Lcom/tom_roush/fontbox/ttf/CmapSubtable$SubHeader;->firstCode:I

    return v0
.end method

.method private getIdDelta()S
    .locals 1

    iget-short v0, p0, Lcom/tom_roush/fontbox/ttf/CmapSubtable$SubHeader;->idDelta:S

    return v0
.end method

.method private getIdRangeOffset()I
    .locals 1

    iget v0, p0, Lcom/tom_roush/fontbox/ttf/CmapSubtable$SubHeader;->idRangeOffset:I

    return v0
.end method
