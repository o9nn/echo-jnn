.class public Lcom/layla/cubism/CubismViewManager;
.super Lcom/facebook/react/uimanager/SimpleViewManager;
.source "CubismViewManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/layla/cubism/CubismViewManager$ConfigurableContainer;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/react/uimanager/SimpleViewManager<",
        "Landroid/widget/FrameLayout;",
        ">;"
    }
.end annotation


# static fields
.field public static final REACT_CLASS:Ljava/lang/String; = "CubismView"

.field private static final TAG:Ljava/lang/String; = "CubismViewManager"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/facebook/react/uimanager/SimpleViewManager;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic createViewInstance(Lcom/facebook/react/uimanager/ThemedReactContext;)Landroid/view/View;
    .locals 0

    .line 17
    invoke-virtual {p0, p1}, Lcom/layla/cubism/CubismViewManager;->createViewInstance(Lcom/facebook/react/uimanager/ThemedReactContext;)Landroid/widget/FrameLayout;

    move-result-object p1

    return-object p1
.end method

.method protected createViewInstance(Lcom/facebook/react/uimanager/ThemedReactContext;)Landroid/widget/FrameLayout;
    .locals 2

    const-string v0, "CubismViewManager"

    const-string v1, "Creating ConfigurableContainer"

    .line 91
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    invoke-virtual {p1}, Lcom/facebook/react/uimanager/ThemedReactContext;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/layla/cubism/JniBridgeJava;->SetActivityInstance(Landroid/app/Activity;)V

    .line 93
    new-instance v0, Lcom/layla/cubism/CubismViewManager$ConfigurableContainer;

    invoke-direct {v0, p1}, Lcom/layla/cubism/CubismViewManager$ConfigurableContainer;-><init>(Lcom/facebook/react/uimanager/ThemedReactContext;)V

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "CubismView"

    return-object v0
.end method

.method public bridge synthetic onDropViewInstance(Landroid/view/View;)V
    .locals 0

    .line 17
    check-cast p1, Landroid/widget/FrameLayout;

    invoke-virtual {p0, p1}, Lcom/layla/cubism/CubismViewManager;->onDropViewInstance(Landroid/widget/FrameLayout;)V

    return-void
.end method

.method public onDropViewInstance(Landroid/widget/FrameLayout;)V
    .locals 1

    .line 118
    move-object v0, p1

    check-cast v0, Lcom/layla/cubism/CubismViewManager$ConfigurableContainer;

    invoke-virtual {v0}, Lcom/layla/cubism/CubismViewManager$ConfigurableContainer;->cleanup()V

    .line 119
    invoke-super {p0, p1}, Lcom/facebook/react/uimanager/SimpleViewManager;->onDropViewInstance(Landroid/view/View;)V

    return-void
.end method

.method public setBackgroundImagePath(Landroid/widget/FrameLayout;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "backgroundImagePath"
    .end annotation

    const-string v0, "file://"

    .line 109
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    .line 110
    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    .line 113
    :cond_0
    check-cast p1, Lcom/layla/cubism/CubismViewManager$ConfigurableContainer;

    invoke-virtual {p1, p2}, Lcom/layla/cubism/CubismViewManager$ConfigurableContainer;->setBackgroundImagePath(Ljava/lang/String;)V

    return-void
.end method

.method public setModelDirectoryName(Landroid/widget/FrameLayout;Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "modelDirectoryName"
    .end annotation

    .line 98
    check-cast p1, Lcom/layla/cubism/CubismViewManager$ConfigurableContainer;

    invoke-virtual {p1, p2}, Lcom/layla/cubism/CubismViewManager$ConfigurableContainer;->setModelDirectoryName(Ljava/lang/String;)V

    return-void
.end method

.method public setModelPath(Landroid/widget/FrameLayout;Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "modelPath"
    .end annotation

    .line 103
    check-cast p1, Lcom/layla/cubism/CubismViewManager$ConfigurableContainer;

    invoke-virtual {p1, p2}, Lcom/layla/cubism/CubismViewManager$ConfigurableContainer;->setModelPath(Ljava/lang/String;)V

    return-void
.end method
