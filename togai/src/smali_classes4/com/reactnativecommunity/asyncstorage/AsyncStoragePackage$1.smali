.class Lcom/reactnativecommunity/asyncstorage/AsyncStoragePackage$1;
.super Ljava/lang/Object;
.source "AsyncStoragePackage.java"

# interfaces
.implements Lcom/facebook/react/module/model/ReactModuleInfoProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/reactnativecommunity/asyncstorage/AsyncStoragePackage;->getReactModuleInfoProvider()Lcom/facebook/react/module/model/ReactModuleInfoProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/reactnativecommunity/asyncstorage/AsyncStoragePackage;


# direct methods
.method constructor <init>(Lcom/reactnativecommunity/asyncstorage/AsyncStoragePackage;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/reactnativecommunity/asyncstorage/AsyncStoragePackage$1;->this$0:Lcom/reactnativecommunity/asyncstorage/AsyncStoragePackage;

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getReactModuleInfos()Ljava/util/Map;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/facebook/react/module/model/ReactModuleInfo;",
            ">;"
        }
    .end annotation

    .line 61
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v8, 0x0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    .line 64
    const-class v1, Lcom/reactnativecommunity/asyncstorage/AsyncStorageModule;

    .line 70
    const-class v2, Lcom/facebook/react/module/annotations/ReactModule;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v2

    check-cast v2, Lcom/facebook/react/module/annotations/ReactModule;

    .line 73
    invoke-interface {v2}, Lcom/facebook/react/module/annotations/ReactModule;->name()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Lcom/facebook/react/module/model/ReactModuleInfo;

    .line 75
    invoke-interface {v2}, Lcom/facebook/react/module/annotations/ReactModule;->name()Ljava/lang/String;

    move-result-object v3

    .line 76
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    .line 77
    invoke-interface {v2}, Lcom/facebook/react/module/annotations/ReactModule;->canOverrideExistingModule()Z

    move-result v5

    .line 78
    invoke-interface {v2}, Lcom/facebook/react/module/annotations/ReactModule;->needsEagerInit()Z

    move-result v6

    .line 79
    invoke-interface {v2}, Lcom/facebook/react/module/annotations/ReactModule;->hasConstants()Z

    move-result v7

    .line 80
    invoke-interface {v2}, Lcom/facebook/react/module/annotations/ReactModule;->isCxxModule()Z

    move-result v11

    move-object v1, v10

    move-object v2, v3

    move-object v3, v4

    move v4, v5

    move v5, v6

    move v6, v7

    move v7, v11

    invoke-direct/range {v1 .. v8}, Lcom/facebook/react/module/model/ReactModuleInfo;-><init>(Ljava/lang/String;Ljava/lang/String;ZZZZZ)V

    .line 72
    invoke-interface {v0, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
