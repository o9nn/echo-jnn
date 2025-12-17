.class public final Lcom/reactnativecommunity/blurview/R$styleable;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/reactnativecommunity/blurview/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static BlurringView:[I = null

.field public static BlurringView_blurRadius:I = 0x0

.field public static BlurringView_downsampleFactor:I = 0x1

.field public static BlurringView_overlayColor:I = 0x2


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const v0, 0x7f0401aa

    const v1, 0x7f04038d

    const v2, 0x7f040080

    filled-new-array {v2, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/reactnativecommunity/blurview/R$styleable;->BlurringView:[I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
