.class Lcom/tom_roush/fontbox/cff/CFFParser$Format0FDSelect;
.super Lcom/tom_roush/fontbox/cff/FDSelect;
.source "CFFParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tom_roush/fontbox/cff/CFFParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Format0FDSelect"
.end annotation


# instance fields
.field private fds:[I

.field private format:I


# direct methods
.method private constructor <init>(Lcom/tom_roush/fontbox/cff/CFFCIDFont;)V
    .locals 0

    .line 1023
    invoke-direct {p0, p1}, Lcom/tom_roush/fontbox/cff/FDSelect;-><init>(Lcom/tom_roush/fontbox/cff/CFFCIDFont;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tom_roush/fontbox/cff/CFFCIDFont;Lcom/tom_roush/fontbox/cff/CFFParser$1;)V
    .locals 0

    .line 1015
    invoke-direct {p0, p1}, Lcom/tom_roush/fontbox/cff/CFFParser$Format0FDSelect;-><init>(Lcom/tom_roush/fontbox/cff/CFFCIDFont;)V

    return-void
.end method

.method static synthetic access$2102(Lcom/tom_roush/fontbox/cff/CFFParser$Format0FDSelect;I)I
    .locals 0

    .line 1015
    iput p1, p0, Lcom/tom_roush/fontbox/cff/CFFParser$Format0FDSelect;->format:I

    return p1
.end method

.method static synthetic access$2200(Lcom/tom_roush/fontbox/cff/CFFParser$Format0FDSelect;)[I
    .locals 0

    .line 1015
    iget-object p0, p0, Lcom/tom_roush/fontbox/cff/CFFParser$Format0FDSelect;->fds:[I

    return-object p0
.end method

.method static synthetic access$2202(Lcom/tom_roush/fontbox/cff/CFFParser$Format0FDSelect;[I)[I
    .locals 0

    .line 1015
    iput-object p1, p0, Lcom/tom_roush/fontbox/cff/CFFParser$Format0FDSelect;->fds:[I

    return-object p1
.end method


# virtual methods
.method public getFDIndex(I)I
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/fontbox/cff/CFFParser$Format0FDSelect;->fds:[I

    .line 1029
    array-length v1, v0

    if-ge p1, v1, :cond_0

    .line 1031
    aget p1, v0, p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1039
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "[fds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tom_roush/fontbox/cff/CFFParser$Format0FDSelect;->fds:[I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
