.class public abstract Lcom/google/auto/value/extension/AutoValueExtension;
.super Ljava/lang/Object;
.source "AutoValueExtension.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/auto/value/extension/AutoValueExtension$IncrementalExtensionType;,
        Lcom/google/auto/value/extension/AutoValueExtension$BuilderContext;,
        Lcom/google/auto/value/extension/AutoValueExtension$Context;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public applicable(Lcom/google/auto/value/extension/AutoValueExtension$Context;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public consumeMethods(Lcom/google/auto/value/extension/AutoValueExtension$Context;)Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/auto/value/extension/AutoValueExtension$Context;",
            ")",
            "Ljava/util/Set<",
            "Ljavax/lang/model/element/ExecutableElement;",
            ">;"
        }
    .end annotation

    .line 428
    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;->of()Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;

    move-result-object p1

    return-object p1
.end method

.method public consumeProperties(Lcom/google/auto/value/extension/AutoValueExtension$Context;)Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/auto/value/extension/AutoValueExtension$Context;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 406
    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;->of()Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;

    move-result-object p1

    return-object p1
.end method

.method public abstract generateClass(Lcom/google/auto/value/extension/AutoValueExtension$Context;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
.end method

.method public getSupportedOptions()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 351
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljavax/annotation/processing/SupportedOptions;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Ljavax/annotation/processing/SupportedOptions;

    if-nez v0, :cond_0

    .line 353
    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;->of()Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;

    move-result-object v0

    return-object v0

    .line 355
    :cond_0
    invoke-interface {v0}, Ljavax/annotation/processing/SupportedOptions;->value()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;->copyOf([Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public incrementalType(Ljavax/annotation/processing/ProcessingEnvironment;)Lcom/google/auto/value/extension/AutoValueExtension$IncrementalExtensionType;
    .locals 0

    .line 336
    sget-object p1, Lcom/google/auto/value/extension/AutoValueExtension$IncrementalExtensionType;->UNKNOWN:Lcom/google/auto/value/extension/AutoValueExtension$IncrementalExtensionType;

    return-object p1
.end method

.method public mustBeFinal(Lcom/google/auto/value/extension/AutoValueExtension$Context;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
