.class public final Lexpo/modules/haptics/arguments/HapticsSelectionTypeKt;
.super Ljava/lang/Object;
.source "HapticsSelectionType.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\"\u0011\u0010\u0000\u001a\u00020\u0001\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "HapticsSelectionType",
        "Lexpo/modules/haptics/arguments/HapticsVibrationType;",
        "getHapticsSelectionType",
        "()Lexpo/modules/haptics/arguments/HapticsVibrationType;",
        "expo-haptics_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final HapticsSelectionType:Lexpo/modules/haptics/arguments/HapticsVibrationType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 3
    new-instance v0, Lexpo/modules/haptics/arguments/HapticsVibrationType;

    const/4 v1, 0x2

    new-array v2, v1, [J

    fill-array-data v2, :array_0

    const/4 v3, 0x0

    const/16 v4, 0x1e

    filled-new-array {v3, v4}, [I

    move-result-object v3

    new-array v1, v1, [J

    fill-array-data v1, :array_1

    invoke-direct {v0, v2, v3, v1}, Lexpo/modules/haptics/arguments/HapticsVibrationType;-><init>([J[I[J)V

    sput-object v0, Lexpo/modules/haptics/arguments/HapticsSelectionTypeKt;->HapticsSelectionType:Lexpo/modules/haptics/arguments/HapticsVibrationType;

    return-void

    :array_0
    .array-data 8
        0x0
        0x32
    .end array-data

    :array_1
    .array-data 8
        0x0
        0x46
    .end array-data
.end method

.method public static final getHapticsSelectionType()Lexpo/modules/haptics/arguments/HapticsVibrationType;
    .locals 1

    sget-object v0, Lexpo/modules/haptics/arguments/HapticsSelectionTypeKt;->HapticsSelectionType:Lexpo/modules/haptics/arguments/HapticsVibrationType;

    return-object v0
.end method
