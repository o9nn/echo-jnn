.class public Lcl/json/RNShare;
.super Lcom/facebook/react/bridge/ReactContextBaseJavaModule;
.source "RNShare.java"


# instance fields
.field private final delegate:Lcl/json/RNShareImpl;


# direct methods
.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V
    .locals 1

    .line 18
    invoke-direct {p0, p1}, Lcom/facebook/react/bridge/ReactContextBaseJavaModule;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    .line 19
    new-instance v0, Lcl/json/RNShareImpl;

    invoke-direct {v0, p1}, Lcl/json/RNShareImpl;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    iput-object v0, p0, Lcl/json/RNShare;->delegate:Lcl/json/RNShareImpl;

    return-void
.end method


# virtual methods
.method public getConstants()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcl/json/RNShare;->delegate:Lcl/json/RNShareImpl;

    .line 30
    invoke-virtual {v0}, Lcl/json/RNShareImpl;->getConstants()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "RNShare"

    return-object v0
.end method

.method public isBase64File(Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    iget-object v0, p0, Lcl/json/RNShare;->delegate:Lcl/json/RNShareImpl;

    .line 50
    invoke-virtual {v0, p1, p2}, Lcl/json/RNShareImpl;->isBase64File(Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V

    return-void
.end method

.method public isPackageInstalled(Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    iget-object v0, p0, Lcl/json/RNShare;->delegate:Lcl/json/RNShareImpl;

    .line 45
    invoke-virtual {v0, p1, p2}, Lcl/json/RNShareImpl;->isPackageInstalled(Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V

    return-void
.end method

.method public open(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    iget-object v0, p0, Lcl/json/RNShare;->delegate:Lcl/json/RNShareImpl;

    .line 35
    invoke-virtual {v0, p1, p2}, Lcl/json/RNShareImpl;->open(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V

    return-void
.end method

.method public shareSingle(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    iget-object v0, p0, Lcl/json/RNShare;->delegate:Lcl/json/RNShareImpl;

    .line 40
    invoke-virtual {v0, p1, p2}, Lcl/json/RNShareImpl;->shareSingle(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V

    return-void
.end method
