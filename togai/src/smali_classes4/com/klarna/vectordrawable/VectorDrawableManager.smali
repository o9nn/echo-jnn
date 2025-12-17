.class public Lcom/klarna/vectordrawable/VectorDrawableManager;
.super Lcom/facebook/react/uimanager/SimpleViewManager;
.source "VectorDrawableManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/react/uimanager/SimpleViewManager<",
        "Landroid/widget/ImageView;",
        ">;"
    }
.end annotation


# instance fields
.field mCallerContext:Lcom/facebook/react/bridge/ReactApplicationContext;


# direct methods
.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/facebook/react/uimanager/SimpleViewManager;-><init>()V

    iput-object p1, p0, Lcom/klarna/vectordrawable/VectorDrawableManager;->mCallerContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    return-void
.end method


# virtual methods
.method protected bridge synthetic createViewInstance(Lcom/facebook/react/uimanager/ThemedReactContext;)Landroid/view/View;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 12
    invoke-virtual {p0, p1}, Lcom/klarna/vectordrawable/VectorDrawableManager;->createViewInstance(Lcom/facebook/react/uimanager/ThemedReactContext;)Landroid/widget/ImageView;

    move-result-object p1

    return-object p1
.end method

.method protected createViewInstance(Lcom/facebook/react/uimanager/ThemedReactContext;)Landroid/widget/ImageView;
    .locals 0

    .line 28
    invoke-static {p1}, Lcom/klarna/vectordrawable/VectorDrawableManagerImpl;->createViewInstance(Lcom/facebook/react/uimanager/ThemedReactContext;)Landroid/widget/ImageView;

    move-result-object p1

    return-object p1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "RNVectorDrawable"

    return-object v0
.end method

.method public setResizeMode(Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 0
    .param p2    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "resizeMode"
    .end annotation

    .line 38
    invoke-static {p1, p2}, Lcom/klarna/vectordrawable/VectorDrawableManagerImpl;->setResizeMode(Landroid/widget/ImageView;Ljava/lang/String;)V

    return-void
.end method

.method public setResourceName(Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 0
    .param p2    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "resourceName"
    .end annotation

    .line 33
    invoke-static {p1, p2}, Lcom/klarna/vectordrawable/VectorDrawableManagerImpl;->setResourceName(Landroid/widget/ImageView;Ljava/lang/String;)V

    return-void
.end method

.method public setTintColor(Landroid/widget/ImageView;Ljava/lang/Integer;)V
    .locals 0
    .param p2    # Ljava/lang/Integer;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        customType = "Color"
        name = "tintColor"
    .end annotation

    .line 43
    invoke-static {p1, p2}, Lcom/klarna/vectordrawable/VectorDrawableManagerImpl;->setTintColor(Landroid/widget/ImageView;Ljava/lang/Integer;)V

    return-void
.end method
