.class public Lcom/brentvatne/react/ReactVideoPackage;
.super Ljava/lang/Object;
.source "ReactVideoPackage.java"

# interfaces
.implements Lcom/facebook/react/ReactPackage;


# instance fields
.field private config:Lcom/brentvatne/exoplayer/ReactExoplayerConfig;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/brentvatne/exoplayer/ReactExoplayerConfig;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/brentvatne/react/ReactVideoPackage;->config:Lcom/brentvatne/exoplayer/ReactExoplayerConfig;

    return-void
.end method


# virtual methods
.method public createJSModules()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "+",
            "Lcom/facebook/react/bridge/JavaScriptModule;",
            ">;>;"
        }
    .end annotation

    .line 39
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public createNativeModules(Lcom/facebook/react/bridge/ReactApplicationContext;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/react/bridge/ReactApplicationContext;",
            ")",
            "Ljava/util/List<",
            "Lcom/facebook/react/bridge/NativeModule;",
            ">;"
        }
    .end annotation

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 31
    new-instance v1, Lcom/brentvatne/react/VideoDecoderPropertiesModule;

    invoke-direct {v1, p1}, Lcom/brentvatne/react/VideoDecoderPropertiesModule;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 32
    new-instance v1, Lcom/brentvatne/react/VideoManagerModule;

    invoke-direct {v1, p1}, Lcom/brentvatne/react/VideoManagerModule;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public createViewManagers(Lcom/facebook/react/bridge/ReactApplicationContext;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/react/bridge/ReactApplicationContext;",
            ")",
            "Ljava/util/List<",
            "Lcom/facebook/react/uimanager/ViewManager;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/brentvatne/react/ReactVideoPackage;->config:Lcom/brentvatne/exoplayer/ReactExoplayerConfig;

    if-nez v0, :cond_0

    .line 46
    new-instance v0, Lcom/brentvatne/exoplayer/DefaultReactExoplayerConfig;

    invoke-direct {v0, p1}, Lcom/brentvatne/exoplayer/DefaultReactExoplayerConfig;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/brentvatne/react/ReactVideoPackage;->config:Lcom/brentvatne/exoplayer/ReactExoplayerConfig;

    .line 48
    :cond_0
    new-instance p1, Lcom/brentvatne/exoplayer/ReactExoplayerViewManager;

    iget-object v0, p0, Lcom/brentvatne/react/ReactVideoPackage;->config:Lcom/brentvatne/exoplayer/ReactExoplayerConfig;

    invoke-direct {p1, v0}, Lcom/brentvatne/exoplayer/ReactExoplayerViewManager;-><init>(Lcom/brentvatne/exoplayer/ReactExoplayerConfig;)V

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
