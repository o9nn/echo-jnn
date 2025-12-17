.class Landroidx/media3/ui/PlayerControlViewLayoutManager$8;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PlayerControlViewLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media3/ui/PlayerControlViewLayoutManager;-><init>(Landroidx/media3/ui/PlayerControlView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media3/ui/PlayerControlViewLayoutManager;


# direct methods
.method constructor <init>(Landroidx/media3/ui/PlayerControlViewLayoutManager;)V
    .locals 0

    iput-object p1, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager$8;->this$0:Landroidx/media3/ui/PlayerControlViewLayoutManager;

    .line 313
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager$8;->this$0:Landroidx/media3/ui/PlayerControlViewLayoutManager;

    .line 325
    invoke-static {p1}, Landroidx/media3/ui/PlayerControlViewLayoutManager;->access$900(Landroidx/media3/ui/PlayerControlViewLayoutManager;)Landroid/view/ViewGroup;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager$8;->this$0:Landroidx/media3/ui/PlayerControlViewLayoutManager;

    .line 326
    invoke-static {p1}, Landroidx/media3/ui/PlayerControlViewLayoutManager;->access$900(Landroidx/media3/ui/PlayerControlViewLayoutManager;)Landroid/view/ViewGroup;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    iget-object p1, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager$8;->this$0:Landroidx/media3/ui/PlayerControlViewLayoutManager;

    .line 316
    invoke-static {p1}, Landroidx/media3/ui/PlayerControlViewLayoutManager;->access$800(Landroidx/media3/ui/PlayerControlViewLayoutManager;)Landroid/view/ViewGroup;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager$8;->this$0:Landroidx/media3/ui/PlayerControlViewLayoutManager;

    .line 317
    invoke-static {p1}, Landroidx/media3/ui/PlayerControlViewLayoutManager;->access$800(Landroidx/media3/ui/PlayerControlViewLayoutManager;)Landroid/view/ViewGroup;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object p1, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager$8;->this$0:Landroidx/media3/ui/PlayerControlViewLayoutManager;

    .line 318
    invoke-static {p1}, Landroidx/media3/ui/PlayerControlViewLayoutManager;->access$800(Landroidx/media3/ui/PlayerControlViewLayoutManager;)Landroid/view/ViewGroup;

    move-result-object p1

    iget-object v1, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager$8;->this$0:Landroidx/media3/ui/PlayerControlViewLayoutManager;

    invoke-static {v1}, Landroidx/media3/ui/PlayerControlViewLayoutManager;->access$800(Landroidx/media3/ui/PlayerControlViewLayoutManager;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setTranslationX(F)V

    iget-object p1, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager$8;->this$0:Landroidx/media3/ui/PlayerControlViewLayoutManager;

    .line 319
    invoke-static {p1}, Landroidx/media3/ui/PlayerControlViewLayoutManager;->access$800(Landroidx/media3/ui/PlayerControlViewLayoutManager;)Landroid/view/ViewGroup;

    move-result-object p1

    iget-object v1, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager$8;->this$0:Landroidx/media3/ui/PlayerControlViewLayoutManager;

    invoke-static {v1}, Landroidx/media3/ui/PlayerControlViewLayoutManager;->access$800(Landroidx/media3/ui/PlayerControlViewLayoutManager;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    invoke-virtual {p1, v1, v0}, Landroid/view/ViewGroup;->scrollTo(II)V

    :cond_0
    return-void
.end method
