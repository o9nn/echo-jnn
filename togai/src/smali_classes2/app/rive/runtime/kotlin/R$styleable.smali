.class public final Lapp/rive/runtime/kotlin/R$styleable;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lapp/rive/runtime/kotlin/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static CustomRiveView:[I = null

.field public static CustomRiveView_riveAlignment:I = 0x0

.field public static CustomRiveView_riveAnimation:I = 0x1

.field public static CustomRiveView_riveArtboard:I = 0x2

.field public static CustomRiveView_riveAssetLoaderClass:I = 0x3

.field public static CustomRiveView_riveAutoPlay:I = 0x4

.field public static CustomRiveView_riveFit:I = 0x5

.field public static CustomRiveView_riveLoop:I = 0x6

.field public static CustomRiveView_riveRenderer:I = 0x7

.field public static CustomRiveView_riveResource:I = 0x8

.field public static CustomRiveView_riveShouldLoadCDNAssets:I = 0x9

.field public static CustomRiveView_riveStateMachine:I = 0xa

.field public static CustomRiveView_riveTraceAnimations:I = 0xb

.field public static CustomRiveView_riveUrl:I = 0xc

.field public static RiveAnimationView:[I = null

.field public static RiveAnimationView_riveAlignment:I = 0x0

.field public static RiveAnimationView_riveAnimation:I = 0x1

.field public static RiveAnimationView_riveArtboard:I = 0x2

.field public static RiveAnimationView_riveAssetLoaderClass:I = 0x3

.field public static RiveAnimationView_riveAutoPlay:I = 0x4

.field public static RiveAnimationView_riveFit:I = 0x5

.field public static RiveAnimationView_riveLoop:I = 0x6

.field public static RiveAnimationView_riveRenderer:I = 0x7

.field public static RiveAnimationView_riveResource:I = 0x8

.field public static RiveAnimationView_riveShouldLoadCDNAssets:I = 0x9

.field public static RiveAnimationView_riveStateMachine:I = 0xa

.field public static RiveAnimationView_riveTraceAnimations:I = 0xb

.field public static RiveAnimationView_riveUrl:I = 0xc


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const/16 v0, 0xd

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lapp/rive/runtime/kotlin/R$styleable;->CustomRiveView:[I

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lapp/rive/runtime/kotlin/R$styleable;->RiveAnimationView:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f0403d4
        0x7f0403d5
        0x7f0403d6
        0x7f0403d7
        0x7f0403d8
        0x7f0403d9
        0x7f0403da
        0x7f0403db
        0x7f0403dc
        0x7f0403dd
        0x7f0403de
        0x7f0403df
        0x7f0403e0
    .end array-data

    :array_1
    .array-data 4
        0x7f0403d4
        0x7f0403d5
        0x7f0403d6
        0x7f0403d7
        0x7f0403d8
        0x7f0403d9
        0x7f0403da
        0x7f0403db
        0x7f0403dc
        0x7f0403dd
        0x7f0403de
        0x7f0403df
        0x7f0403e0
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
