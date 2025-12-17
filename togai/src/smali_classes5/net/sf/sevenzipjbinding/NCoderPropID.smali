.class public final enum Lnet/sf/sevenzipjbinding/NCoderPropID;
.super Ljava/lang/Enum;
.source "NCoderPropID.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/sf/sevenzipjbinding/NCoderPropID;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/sf/sevenzipjbinding/NCoderPropID;

.field public static final enum kAlgorithm:Lnet/sf/sevenzipjbinding/NCoderPropID;

.field public static final enum kBlockSize:Lnet/sf/sevenzipjbinding/NCoderPropID;

.field public static final enum kDefaultProp:Lnet/sf/sevenzipjbinding/NCoderPropID;

.field public static final enum kDictionarySize:Lnet/sf/sevenzipjbinding/NCoderPropID;

.field public static final enum kEndMarker:Lnet/sf/sevenzipjbinding/NCoderPropID;

.field public static final enum kLitContextBits:Lnet/sf/sevenzipjbinding/NCoderPropID;

.field public static final enum kLitPosBits:Lnet/sf/sevenzipjbinding/NCoderPropID;

.field public static final enum kMatchFinder:Lnet/sf/sevenzipjbinding/NCoderPropID;

.field public static final enum kMatchFinderCycles:Lnet/sf/sevenzipjbinding/NCoderPropID;

.field public static final enum kNumFastBytes:Lnet/sf/sevenzipjbinding/NCoderPropID;

.field public static final enum kNumPasses:Lnet/sf/sevenzipjbinding/NCoderPropID;

.field public static final enum kNumThreads:Lnet/sf/sevenzipjbinding/NCoderPropID;

.field public static final enum kOrder:Lnet/sf/sevenzipjbinding/NCoderPropID;

.field public static final enum kPosStateBits:Lnet/sf/sevenzipjbinding/NCoderPropID;

.field public static final enum kUsedMemorySize:Lnet/sf/sevenzipjbinding/NCoderPropID;


# instance fields
.field private final clazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final option:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 19

    .line 12
    new-instance v0, Lnet/sf/sevenzipjbinding/NCoderPropID;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v2, "C"

    const-string v3, "kBlockSize"

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, Lnet/sf/sevenzipjbinding/NCoderPropID;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lnet/sf/sevenzipjbinding/NCoderPropID;->kBlockSize:Lnet/sf/sevenzipjbinding/NCoderPropID;

    .line 13
    new-instance v1, Lnet/sf/sevenzipjbinding/NCoderPropID;

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v3, "D"

    const-string v4, "kDictionarySize"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v2, v3}, Lnet/sf/sevenzipjbinding/NCoderPropID;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/String;)V

    sput-object v1, Lnet/sf/sevenzipjbinding/NCoderPropID;->kDictionarySize:Lnet/sf/sevenzipjbinding/NCoderPropID;

    .line 14
    new-instance v2, Lnet/sf/sevenzipjbinding/NCoderPropID;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v4, "MEM"

    const-string v5, "kUsedMemorySize"

    const/4 v6, 0x2

    invoke-direct {v2, v5, v6, v3, v4}, Lnet/sf/sevenzipjbinding/NCoderPropID;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/String;)V

    sput-object v2, Lnet/sf/sevenzipjbinding/NCoderPropID;->kUsedMemorySize:Lnet/sf/sevenzipjbinding/NCoderPropID;

    .line 15
    new-instance v3, Lnet/sf/sevenzipjbinding/NCoderPropID;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v5, "O"

    const-string v6, "kOrder"

    const/4 v7, 0x3

    invoke-direct {v3, v6, v7, v4, v5}, Lnet/sf/sevenzipjbinding/NCoderPropID;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/String;)V

    sput-object v3, Lnet/sf/sevenzipjbinding/NCoderPropID;->kOrder:Lnet/sf/sevenzipjbinding/NCoderPropID;

    .line 16
    new-instance v4, Lnet/sf/sevenzipjbinding/NCoderPropID;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v6, "PB"

    const-string v7, "kPosStateBits"

    const/4 v8, 0x4

    invoke-direct {v4, v7, v8, v5, v6}, Lnet/sf/sevenzipjbinding/NCoderPropID;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/String;)V

    sput-object v4, Lnet/sf/sevenzipjbinding/NCoderPropID;->kPosStateBits:Lnet/sf/sevenzipjbinding/NCoderPropID;

    .line 17
    new-instance v5, Lnet/sf/sevenzipjbinding/NCoderPropID;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v7, "LC"

    const-string v8, "kLitContextBits"

    const/4 v9, 0x5

    invoke-direct {v5, v8, v9, v6, v7}, Lnet/sf/sevenzipjbinding/NCoderPropID;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/String;)V

    sput-object v5, Lnet/sf/sevenzipjbinding/NCoderPropID;->kLitContextBits:Lnet/sf/sevenzipjbinding/NCoderPropID;

    .line 18
    new-instance v6, Lnet/sf/sevenzipjbinding/NCoderPropID;

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v8, "LP"

    const-string v9, "kLitPosBits"

    const/4 v10, 0x6

    invoke-direct {v6, v9, v10, v7, v8}, Lnet/sf/sevenzipjbinding/NCoderPropID;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/String;)V

    sput-object v6, Lnet/sf/sevenzipjbinding/NCoderPropID;->kLitPosBits:Lnet/sf/sevenzipjbinding/NCoderPropID;

    .line 19
    new-instance v7, Lnet/sf/sevenzipjbinding/NCoderPropID;

    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const-string v9, "eos"

    const-string v10, "kEndMarker"

    const/4 v11, 0x7

    invoke-direct {v7, v10, v11, v8, v9}, Lnet/sf/sevenzipjbinding/NCoderPropID;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/String;)V

    sput-object v7, Lnet/sf/sevenzipjbinding/NCoderPropID;->kEndMarker:Lnet/sf/sevenzipjbinding/NCoderPropID;

    .line 20
    new-instance v8, Lnet/sf/sevenzipjbinding/NCoderPropID;

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v10, "Pass"

    const-string v11, "kNumPasses"

    const/16 v12, 0x8

    invoke-direct {v8, v11, v12, v9, v10}, Lnet/sf/sevenzipjbinding/NCoderPropID;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/String;)V

    sput-object v8, Lnet/sf/sevenzipjbinding/NCoderPropID;->kNumPasses:Lnet/sf/sevenzipjbinding/NCoderPropID;

    .line 21
    new-instance v9, Lnet/sf/sevenzipjbinding/NCoderPropID;

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v11, "fb"

    const-string v12, "kNumFastBytes"

    const/16 v13, 0x9

    invoke-direct {v9, v12, v13, v10, v11}, Lnet/sf/sevenzipjbinding/NCoderPropID;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/String;)V

    sput-object v9, Lnet/sf/sevenzipjbinding/NCoderPropID;->kNumFastBytes:Lnet/sf/sevenzipjbinding/NCoderPropID;

    .line 22
    new-instance v10, Lnet/sf/sevenzipjbinding/NCoderPropID;

    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v12, "mc"

    const-string v13, "kMatchFinderCycles"

    const/16 v14, 0xa

    invoke-direct {v10, v13, v14, v11, v12}, Lnet/sf/sevenzipjbinding/NCoderPropID;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/String;)V

    sput-object v10, Lnet/sf/sevenzipjbinding/NCoderPropID;->kMatchFinderCycles:Lnet/sf/sevenzipjbinding/NCoderPropID;

    .line 23
    new-instance v11, Lnet/sf/sevenzipjbinding/NCoderPropID;

    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v13, "a"

    const-string v14, "kAlgorithm"

    const/16 v15, 0xb

    invoke-direct {v11, v14, v15, v12, v13}, Lnet/sf/sevenzipjbinding/NCoderPropID;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/String;)V

    sput-object v11, Lnet/sf/sevenzipjbinding/NCoderPropID;->kAlgorithm:Lnet/sf/sevenzipjbinding/NCoderPropID;

    .line 24
    new-instance v12, Lnet/sf/sevenzipjbinding/NCoderPropID;

    const-class v13, Ljava/lang/String;

    const-string v14, "mf"

    const-string v15, "kMatchFinder"

    move-object/from16 v16, v11

    const/16 v11, 0xc

    invoke-direct {v12, v15, v11, v13, v14}, Lnet/sf/sevenzipjbinding/NCoderPropID;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/String;)V

    sput-object v12, Lnet/sf/sevenzipjbinding/NCoderPropID;->kMatchFinder:Lnet/sf/sevenzipjbinding/NCoderPropID;

    .line 25
    new-instance v13, Lnet/sf/sevenzipjbinding/NCoderPropID;

    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v14, "mt"

    const-string v15, "kNumThreads"

    move-object/from16 v17, v12

    const/16 v12, 0xd

    invoke-direct {v13, v15, v12, v11, v14}, Lnet/sf/sevenzipjbinding/NCoderPropID;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/String;)V

    sput-object v13, Lnet/sf/sevenzipjbinding/NCoderPropID;->kNumThreads:Lnet/sf/sevenzipjbinding/NCoderPropID;

    .line 26
    new-instance v14, Lnet/sf/sevenzipjbinding/NCoderPropID;

    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v12, ""

    const-string v15, "kDefaultProp"

    move-object/from16 v18, v13

    const/16 v13, 0xe

    invoke-direct {v14, v15, v13, v11, v12}, Lnet/sf/sevenzipjbinding/NCoderPropID;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/String;)V

    sput-object v14, Lnet/sf/sevenzipjbinding/NCoderPropID;->kDefaultProp:Lnet/sf/sevenzipjbinding/NCoderPropID;

    move-object/from16 v11, v16

    move-object/from16 v12, v17

    move-object/from16 v13, v18

    filled-new-array/range {v0 .. v14}, [Lnet/sf/sevenzipjbinding/NCoderPropID;

    move-result-object v0

    sput-object v0, Lnet/sf/sevenzipjbinding/NCoderPropID;->$VALUES:[Lnet/sf/sevenzipjbinding/NCoderPropID;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 31
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lnet/sf/sevenzipjbinding/NCoderPropID;->clazz:Ljava/lang/Class;

    iput-object p4, p0, Lnet/sf/sevenzipjbinding/NCoderPropID;->option:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/sf/sevenzipjbinding/NCoderPropID;
    .locals 1

    const-class v0, Lnet/sf/sevenzipjbinding/NCoderPropID;

    .line 11
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/sf/sevenzipjbinding/NCoderPropID;

    return-object p0
.end method

.method public static values()[Lnet/sf/sevenzipjbinding/NCoderPropID;
    .locals 1

    sget-object v0, Lnet/sf/sevenzipjbinding/NCoderPropID;->$VALUES:[Lnet/sf/sevenzipjbinding/NCoderPropID;

    .line 11
    invoke-virtual {v0}, [Lnet/sf/sevenzipjbinding/NCoderPropID;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/sf/sevenzipjbinding/NCoderPropID;

    return-object v0
.end method
