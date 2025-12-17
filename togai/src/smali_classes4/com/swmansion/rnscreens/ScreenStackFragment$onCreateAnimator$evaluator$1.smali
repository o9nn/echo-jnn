.class final Lcom/swmansion/rnscreens/ScreenStackFragment$onCreateAnimator$evaluator$1;
.super Lkotlin/jvm/internal/Lambda;
.source "ScreenStackFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/swmansion/rnscreens/ScreenStackFragment;->onCreateAnimator(IZI)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Number;",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u0004\n\u0002\u0008\u0002\u0010\u0000\u001a\u0004\u0018\u00010\u00012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003H\n\u00a2\u0006\u0004\u0008\u0004\u0010\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "",
        "invoke",
        "(Ljava/lang/Number;)Ljava/lang/Float;"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/swmansion/rnscreens/ScreenStackFragment$onCreateAnimator$evaluator$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/swmansion/rnscreens/ScreenStackFragment$onCreateAnimator$evaluator$1;

    invoke-direct {v0}, Lcom/swmansion/rnscreens/ScreenStackFragment$onCreateAnimator$evaluator$1;-><init>()V

    sput-object v0, Lcom/swmansion/rnscreens/ScreenStackFragment$onCreateAnimator$evaluator$1;->INSTANCE:Lcom/swmansion/rnscreens/ScreenStackFragment$onCreateAnimator$evaluator$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Number;)Ljava/lang/Float;
    .locals 0

    const/4 p1, 0x0

    .line 301
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 301
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p0, p1}, Lcom/swmansion/rnscreens/ScreenStackFragment$onCreateAnimator$evaluator$1;->invoke(Ljava/lang/Number;)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method
