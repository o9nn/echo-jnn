.class public Lcom/tom_roush/fontbox/cff/CIDKeyedType2CharString;
.super Lcom/tom_roush/fontbox/cff/Type2CharString;
.source "CIDKeyedType2CharString.java"


# instance fields
.field private final cid:I


# direct methods
.method public constructor <init>(Lcom/tom_roush/fontbox/type1/Type1CharStringReader;Ljava/lang/String;IILjava/util/List;II)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tom_roush/fontbox/type1/Type1CharStringReader;",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;II)V"
        }
    .end annotation

    .line 47
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "%04x"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move v7, p4

    move-object/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    invoke-direct/range {v3 .. v10}, Lcom/tom_roush/fontbox/cff/Type2CharString;-><init>(Lcom/tom_roush/fontbox/type1/Type1CharStringReader;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;II)V

    move-object v0, p0

    move v1, p3

    iput v1, v0, Lcom/tom_roush/fontbox/cff/CIDKeyedType2CharString;->cid:I

    return-void
.end method


# virtual methods
.method public getCID()I
    .locals 1

    iget v0, p0, Lcom/tom_roush/fontbox/cff/CIDKeyedType2CharString;->cid:I

    return v0
.end method
