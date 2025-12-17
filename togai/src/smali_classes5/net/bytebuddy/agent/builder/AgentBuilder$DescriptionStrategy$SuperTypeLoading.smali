.class public Lnet/bytebuddy/agent/builder/AgentBuilder$DescriptionStrategy$SuperTypeLoading;
.super Ljava/lang/Object;
.source "AgentBuilder.java"

# interfaces
.implements Lnet/bytebuddy/agent/builder/AgentBuilder$DescriptionStrategy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/agent/builder/AgentBuilder$DescriptionStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SuperTypeLoading"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/agent/builder/AgentBuilder$DescriptionStrategy$SuperTypeLoading$Asynchronous;,
        Lnet/bytebuddy/agent/builder/AgentBuilder$DescriptionStrategy$SuperTypeLoading$UnlockingClassLoadingDelegate;
    }
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# instance fields
.field private final delegate:Lnet/bytebuddy/agent/builder/AgentBuilder$DescriptionStrategy;


# direct methods
.method public constructor <init>(Lnet/bytebuddy/agent/builder/AgentBuilder$DescriptionStrategy;)V
    .locals 0

    .line 3530
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$DescriptionStrategy$SuperTypeLoading;->delegate:Lnet/bytebuddy/agent/builder/AgentBuilder$DescriptionStrategy;

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/String;Ljava/lang/Class;Lnet/bytebuddy/pool/TypePool;Lnet/bytebuddy/agent/builder/AgentBuilder$CircularityLock;Ljava/lang/ClassLoader;Lnet/bytebuddy/utility/JavaModule;)Lnet/bytebuddy/description/type/TypeDescription;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;",
            "Lnet/bytebuddy/pool/TypePool;",
            "Lnet/bytebuddy/agent/builder/AgentBuilder$CircularityLock;",
            "Ljava/lang/ClassLoader;",
            "Lnet/bytebuddy/utility/JavaModule;",
            ")",
            "Lnet/bytebuddy/description/type/TypeDescription;"
        }
    .end annotation

    iget-object v0, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$DescriptionStrategy$SuperTypeLoading;->delegate:Lnet/bytebuddy/agent/builder/AgentBuilder$DescriptionStrategy;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    .line 3550
    invoke-interface/range {v0 .. v6}, Lnet/bytebuddy/agent/builder/AgentBuilder$DescriptionStrategy;->apply(Ljava/lang/String;Ljava/lang/Class;Lnet/bytebuddy/pool/TypePool;Lnet/bytebuddy/agent/builder/AgentBuilder$CircularityLock;Ljava/lang/ClassLoader;Lnet/bytebuddy/utility/JavaModule;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object p1

    .line 3551
    instance-of p2, p1, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p2, Lnet/bytebuddy/description/type/TypeDescription$SuperTypeLoading;

    new-instance p3, Lnet/bytebuddy/agent/builder/AgentBuilder$DescriptionStrategy$SuperTypeLoading$UnlockingClassLoadingDelegate;

    invoke-direct {p3, p4}, Lnet/bytebuddy/agent/builder/AgentBuilder$DescriptionStrategy$SuperTypeLoading$UnlockingClassLoadingDelegate;-><init>(Lnet/bytebuddy/agent/builder/AgentBuilder$CircularityLock;)V

    invoke-direct {p2, p1, p5, p3}, Lnet/bytebuddy/description/type/TypeDescription$SuperTypeLoading;-><init>(Lnet/bytebuddy/description/type/TypeDescription;Ljava/lang/ClassLoader;Lnet/bytebuddy/description/type/TypeDescription$SuperTypeLoading$ClassLoadingDelegate;)V

    move-object p1, p2

    :goto_0
    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    iget-object v2, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$DescriptionStrategy$SuperTypeLoading;->delegate:Lnet/bytebuddy/agent/builder/AgentBuilder$DescriptionStrategy;

    check-cast p1, Lnet/bytebuddy/agent/builder/AgentBuilder$DescriptionStrategy$SuperTypeLoading;

    iget-object p1, p1, Lnet/bytebuddy/agent/builder/AgentBuilder$DescriptionStrategy$SuperTypeLoading;->delegate:Lnet/bytebuddy/agent/builder/AgentBuilder$DescriptionStrategy;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v1

    :cond_3
    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$DescriptionStrategy$SuperTypeLoading;->delegate:Lnet/bytebuddy/agent/builder/AgentBuilder$DescriptionStrategy;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    return v1
.end method

.method public isLoadedFirst()Z
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$DescriptionStrategy$SuperTypeLoading;->delegate:Lnet/bytebuddy/agent/builder/AgentBuilder$DescriptionStrategy;

    .line 3538
    invoke-interface {v0}, Lnet/bytebuddy/agent/builder/AgentBuilder$DescriptionStrategy;->isLoadedFirst()Z

    move-result v0

    return v0
.end method
