.class public final Lexpo/modules/imagepicker/contracts/ImagePickerContractResult$Cancelled;
.super Lexpo/modules/imagepicker/contracts/ImagePickerContractResult;
.source "ContractsUtils.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lexpo/modules/imagepicker/contracts/ImagePickerContractResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Cancelled"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002\u00a8\u0006\u0003"
    }
    d2 = {
        "Lexpo/modules/imagepicker/contracts/ImagePickerContractResult$Cancelled;",
        "Lexpo/modules/imagepicker/contracts/ImagePickerContractResult;",
        "()V",
        "expo-image-picker_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lexpo/modules/imagepicker/contracts/ImagePickerContractResult$Cancelled;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lexpo/modules/imagepicker/contracts/ImagePickerContractResult$Cancelled;

    invoke-direct {v0}, Lexpo/modules/imagepicker/contracts/ImagePickerContractResult$Cancelled;-><init>()V

    sput-object v0, Lexpo/modules/imagepicker/contracts/ImagePickerContractResult$Cancelled;->INSTANCE:Lexpo/modules/imagepicker/contracts/ImagePickerContractResult$Cancelled;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 11
    invoke-direct {p0, v0}, Lexpo/modules/imagepicker/contracts/ImagePickerContractResult;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method
