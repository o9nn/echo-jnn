.class abstract Lcom/tom_roush/fontbox/cff/CFFParser$CFFBuiltInEncoding;
.super Lcom/tom_roush/fontbox/cff/CFFEncoding;
.source "CFFParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tom_roush/fontbox/cff/CFFParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "CFFBuiltInEncoding"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tom_roush/fontbox/cff/CFFParser$CFFBuiltInEncoding$Supplement;
    }
.end annotation


# instance fields
.field private nSups:I

.field private supplement:[Lcom/tom_roush/fontbox/cff/CFFParser$CFFBuiltInEncoding$Supplement;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1309
    invoke-direct {p0}, Lcom/tom_roush/fontbox/cff/CFFEncoding;-><init>()V

    return-void
.end method

.method static synthetic access$1500(Lcom/tom_roush/fontbox/cff/CFFParser$CFFBuiltInEncoding;)I
    .locals 0

    .line 1309
    iget p0, p0, Lcom/tom_roush/fontbox/cff/CFFParser$CFFBuiltInEncoding;->nSups:I

    return p0
.end method

.method static synthetic access$1502(Lcom/tom_roush/fontbox/cff/CFFParser$CFFBuiltInEncoding;I)I
    .locals 0

    .line 1309
    iput p1, p0, Lcom/tom_roush/fontbox/cff/CFFParser$CFFBuiltInEncoding;->nSups:I

    return p1
.end method

.method static synthetic access$1600(Lcom/tom_roush/fontbox/cff/CFFParser$CFFBuiltInEncoding;)[Lcom/tom_roush/fontbox/cff/CFFParser$CFFBuiltInEncoding$Supplement;
    .locals 0

    .line 1309
    iget-object p0, p0, Lcom/tom_roush/fontbox/cff/CFFParser$CFFBuiltInEncoding;->supplement:[Lcom/tom_roush/fontbox/cff/CFFParser$CFFBuiltInEncoding$Supplement;

    return-object p0
.end method

.method static synthetic access$1602(Lcom/tom_roush/fontbox/cff/CFFParser$CFFBuiltInEncoding;[Lcom/tom_roush/fontbox/cff/CFFParser$CFFBuiltInEncoding$Supplement;)[Lcom/tom_roush/fontbox/cff/CFFParser$CFFBuiltInEncoding$Supplement;
    .locals 0

    .line 1309
    iput-object p1, p0, Lcom/tom_roush/fontbox/cff/CFFParser$CFFBuiltInEncoding;->supplement:[Lcom/tom_roush/fontbox/cff/CFFParser$CFFBuiltInEncoding$Supplement;

    return-object p1
.end method
