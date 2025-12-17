.class public Lorg/mockito/internal/stubbing/answers/ClonesArguments;
.super Ljava/lang/Object;
.source "ClonesArguments.java"

# interfaces
.implements Lorg/mockito/stubbing/Answer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/mockito/stubbing/Answer<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public answer(Lorg/mockito/invocation/InvocationOnMock;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 19
    invoke-interface {p1}, Lorg/mockito/invocation/InvocationOnMock;->getArguments()[Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    .line 20
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_3

    .line 21
    aget-object v3, v0, v2

    if-eqz v3, :cond_2

    .line 23
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->isArray()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 24
    invoke-static {v3}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v4

    .line 25
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v5

    invoke-static {v5, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v5

    move v6, v1

    :goto_1
    if-ge v6, v4, :cond_0

    .line 27
    invoke-static {v3, v6}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v5, v6, v7}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 29
    :cond_0
    aput-object v5, v0, v2

    goto :goto_2

    .line 31
    :cond_1
    invoke-static {}, Lorg/mockito/internal/configuration/plugins/Plugins;->getInstantiatorProvider()Lorg/mockito/plugins/InstantiatorProvider2;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Lorg/mockito/plugins/InstantiatorProvider2;->getInstantiator(Lorg/mockito/mock/MockCreationSettings;)Lorg/mockito/creation/instance/Instantiator;

    move-result-object v4

    .line 32
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/mockito/creation/instance/Instantiator;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    .line 33
    new-instance v5, Lorg/mockito/internal/util/reflection/LenientCopyTool;

    invoke-direct {v5}, Lorg/mockito/internal/util/reflection/LenientCopyTool;-><init>()V

    invoke-virtual {v5, v3, v4}, Lorg/mockito/internal/util/reflection/LenientCopyTool;->copyToRealObject(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 34
    aput-object v4, v0, v2

    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 38
    :cond_3
    new-instance v0, Lorg/mockito/internal/stubbing/defaultanswers/ReturnsEmptyValues;

    invoke-direct {v0}, Lorg/mockito/internal/stubbing/defaultanswers/ReturnsEmptyValues;-><init>()V

    invoke-virtual {v0, p1}, Lorg/mockito/internal/stubbing/defaultanswers/ReturnsEmptyValues;->answer(Lorg/mockito/invocation/InvocationOnMock;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
