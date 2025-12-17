.class Lcom/horcrux/svg/SvgPackage$30;
.super Ljava/lang/Object;
.source "SvgPackage.java"

# interfaces
.implements Lcom/facebook/react/module/model/ReactModuleInfoProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/horcrux/svg/SvgPackage;->getReactModuleInfoProvider()Lcom/facebook/react/module/model/ReactModuleInfoProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/horcrux/svg/SvgPackage;


# direct methods
.method constructor <init>(Lcom/horcrux/svg/SvgPackage;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/horcrux/svg/SvgPackage$30;->this$0:Lcom/horcrux/svg/SvgPackage;

    .line 352
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getReactModuleInfos()Ljava/util/Map;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/facebook/react/module/model/ReactModuleInfo;",
            ">;"
        }
    .end annotation

    .line 355
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Class;

    .line 357
    const-class v3, Lcom/horcrux/svg/SvgViewModule;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    const-class v5, Lcom/horcrux/svg/RNSVGRenderableManager;

    aput-object v5, v2, v3

    :goto_0
    if-ge v4, v1, :cond_0

    .line 362
    aget-object v3, v2, v4

    .line 363
    const-class v5, Lcom/facebook/react/module/annotations/ReactModule;

    invoke-virtual {v3, v5}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v5

    check-cast v5, Lcom/facebook/react/module/annotations/ReactModule;

    .line 366
    invoke-interface {v5}, Lcom/facebook/react/module/annotations/ReactModule;->name()Ljava/lang/String;

    move-result-object v6

    new-instance v14, Lcom/facebook/react/module/model/ReactModuleInfo;

    .line 368
    invoke-interface {v5}, Lcom/facebook/react/module/annotations/ReactModule;->name()Ljava/lang/String;

    move-result-object v8

    .line 369
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    .line 370
    invoke-interface {v5}, Lcom/facebook/react/module/annotations/ReactModule;->canOverrideExistingModule()Z

    move-result v10

    .line 371
    invoke-interface {v5}, Lcom/facebook/react/module/annotations/ReactModule;->needsEagerInit()Z

    move-result v11

    .line 372
    invoke-interface {v5}, Lcom/facebook/react/module/annotations/ReactModule;->isCxxModule()Z

    move-result v12

    const/4 v13, 0x1

    move-object v7, v14

    invoke-direct/range {v7 .. v13}, Lcom/facebook/react/module/model/ReactModuleInfo;-><init>(Ljava/lang/String;Ljava/lang/String;ZZZZ)V

    .line 365
    invoke-interface {v0, v6, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method
