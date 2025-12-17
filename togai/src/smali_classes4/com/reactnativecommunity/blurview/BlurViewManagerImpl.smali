.class Lcom/reactnativecommunity/blurview/BlurViewManagerImpl;
.super Ljava/lang/Object;
.source "BlurViewManagerImpl.java"


# static fields
.field public static final REACT_CLASS:Ljava/lang/String; = "AndroidBlurView"

.field public static final defaultRadius:I = 0xa

.field public static final defaultSampling:I = 0xa


# direct methods
.method constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createViewInstance(Lcom/facebook/react/uimanager/ThemedReactContext;)Leightbitlab/com/blurview/BlurView;
    .locals 2
    .param p0    # Lcom/facebook/react/uimanager/ThemedReactContext;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 20
    new-instance v0, Leightbitlab/com/blurview/BlurView;

    invoke-direct {v0, p0}, Leightbitlab/com/blurview/BlurView;-><init>(Landroid/content/Context;)V

    .line 22
    invoke-virtual {p0}, Lcom/facebook/react/uimanager/ThemedReactContext;->getCurrentActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/Activity;

    .line 23
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    .line 24
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    const v1, 0x1020002

    .line 26
    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Leightbitlab/com/blurview/BlurView;->setupWith(Landroid/view/ViewGroup;)Leightbitlab/com/blurview/BlurViewFacade;

    move-result-object v1

    .line 27
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-interface {v1, p0}, Leightbitlab/com/blurview/BlurViewFacade;->setFrameClearDrawable(Landroid/graphics/drawable/Drawable;)Leightbitlab/com/blurview/BlurViewFacade;

    move-result-object p0

    const/high16 v1, 0x41200000    # 10.0f

    .line 28
    invoke-interface {p0, v1}, Leightbitlab/com/blurview/BlurViewFacade;->setBlurRadius(F)Leightbitlab/com/blurview/BlurViewFacade;

    return-object v0
.end method

.method public static setAutoUpdate(Leightbitlab/com/blurview/BlurView;Z)V
    .locals 0

    .line 45
    invoke-virtual {p0, p1}, Leightbitlab/com/blurview/BlurView;->setBlurAutoUpdate(Z)Leightbitlab/com/blurview/BlurViewFacade;

    .line 46
    invoke-virtual {p0}, Leightbitlab/com/blurview/BlurView;->invalidate()V

    return-void
.end method

.method public static setBlurEnabled(Leightbitlab/com/blurview/BlurView;Z)V
    .locals 0

    .line 50
    invoke-virtual {p0, p1}, Leightbitlab/com/blurview/BlurView;->setBlurEnabled(Z)Leightbitlab/com/blurview/BlurViewFacade;

    return-void
.end method

.method public static setColor(Leightbitlab/com/blurview/BlurView;I)V
    .locals 0

    .line 38
    invoke-virtual {p0, p1}, Leightbitlab/com/blurview/BlurView;->setOverlayColor(I)Leightbitlab/com/blurview/BlurViewFacade;

    .line 39
    invoke-virtual {p0}, Leightbitlab/com/blurview/BlurView;->invalidate()V

    return-void
.end method

.method public static setDownsampleFactor(Leightbitlab/com/blurview/BlurView;I)V
    .locals 0

    return-void
.end method

.method public static setRadius(Leightbitlab/com/blurview/BlurView;I)V
    .locals 0

    int-to-float p1, p1

    .line 33
    invoke-virtual {p0, p1}, Leightbitlab/com/blurview/BlurView;->setBlurRadius(F)Leightbitlab/com/blurview/BlurViewFacade;

    .line 34
    invoke-virtual {p0}, Leightbitlab/com/blurview/BlurView;->invalidate()V

    return-void
.end method
