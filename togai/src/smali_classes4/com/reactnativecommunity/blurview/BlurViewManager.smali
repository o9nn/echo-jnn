.class Lcom/reactnativecommunity/blurview/BlurViewManager;
.super Lcom/facebook/react/uimanager/ViewGroupManager;
.source "BlurViewManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/react/uimanager/ViewGroupManager<",
        "Leightbitlab/com/blurview/BlurView;",
        ">;"
    }
.end annotation


# instance fields
.field mCallerContext:Lcom/facebook/react/bridge/ReactApplicationContext;


# direct methods
.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/facebook/react/uimanager/ViewGroupManager;-><init>()V

    iput-object p1, p0, Lcom/reactnativecommunity/blurview/BlurViewManager;->mCallerContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    return-void
.end method


# virtual methods
.method public bridge synthetic createViewInstance(Lcom/facebook/react/uimanager/ThemedReactContext;)Landroid/view/View;
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
    invoke-virtual {p0, p1}, Lcom/reactnativecommunity/blurview/BlurViewManager;->createViewInstance(Lcom/facebook/react/uimanager/ThemedReactContext;)Leightbitlab/com/blurview/BlurView;

    move-result-object p1

    return-object p1
.end method

.method public createViewInstance(Lcom/facebook/react/uimanager/ThemedReactContext;)Leightbitlab/com/blurview/BlurView;
    .locals 0

    .line 22
    invoke-static {p1}, Lcom/reactnativecommunity/blurview/BlurViewManagerImpl;->createViewInstance(Lcom/facebook/react/uimanager/ThemedReactContext;)Leightbitlab/com/blurview/BlurView;

    move-result-object p1

    return-object p1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "AndroidBlurView"

    return-object v0
.end method

.method public setAutoUpdate(Leightbitlab/com/blurview/BlurView;Z)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        defaultBoolean = true
        name = "autoUpdate"
    .end annotation

    .line 46
    invoke-static {p1, p2}, Lcom/reactnativecommunity/blurview/BlurViewManagerImpl;->setAutoUpdate(Leightbitlab/com/blurview/BlurView;Z)V

    return-void
.end method

.method public setBlurEnabled(Leightbitlab/com/blurview/BlurView;Z)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        defaultBoolean = true
        name = "enabled"
    .end annotation

    .line 51
    invoke-static {p1, p2}, Lcom/reactnativecommunity/blurview/BlurViewManagerImpl;->setBlurEnabled(Leightbitlab/com/blurview/BlurView;Z)V

    return-void
.end method

.method public setColor(Leightbitlab/com/blurview/BlurView;I)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        customType = "Color"
        name = "overlayColor"
    .end annotation

    .line 38
    invoke-static {p1, p2}, Lcom/reactnativecommunity/blurview/BlurViewManagerImpl;->setColor(Leightbitlab/com/blurview/BlurView;I)V

    return-void
.end method

.method public setDownsampleFactor(Leightbitlab/com/blurview/BlurView;I)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        defaultInt = 0xa
        name = "downsampleFactor"
    .end annotation

    return-void
.end method

.method public setRadius(Leightbitlab/com/blurview/BlurView;I)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        defaultInt = 0xa
        name = "blurRadius"
    .end annotation

    .line 33
    invoke-static {p1, p2}, Lcom/reactnativecommunity/blurview/BlurViewManagerImpl;->setRadius(Leightbitlab/com/blurview/BlurView;I)V

    return-void
.end method
