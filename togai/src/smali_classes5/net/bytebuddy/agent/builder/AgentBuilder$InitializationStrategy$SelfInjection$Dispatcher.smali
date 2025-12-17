.class public abstract Lnet/bytebuddy/agent/builder/AgentBuilder$InitializationStrategy$SelfInjection$Dispatcher;
.super Ljava/lang/Object;
.source "AgentBuilder.java"

# interfaces
.implements Lnet/bytebuddy/agent/builder/AgentBuilder$InitializationStrategy$Dispatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/agent/builder/AgentBuilder$InitializationStrategy$SelfInjection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40c
    name = "Dispatcher"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/agent/builder/AgentBuilder$InitializationStrategy$SelfInjection$Dispatcher$InjectingInitializer;
    }
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# instance fields
.field protected final identification:I

.field protected final nexusAccessor:Lnet/bytebuddy/dynamic/NexusAccessor;


# direct methods
.method protected constructor <init>(Lnet/bytebuddy/dynamic/NexusAccessor;I)V
    .locals 0

    .line 3082
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$InitializationStrategy$SelfInjection$Dispatcher;->nexusAccessor:Lnet/bytebuddy/dynamic/NexusAccessor;

    iput p2, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$InitializationStrategy$SelfInjection$Dispatcher;->identification:I

    return-void
.end method


# virtual methods
.method public apply(Lnet/bytebuddy/dynamic/DynamicType$Builder;)Lnet/bytebuddy/dynamic/DynamicType$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/dynamic/DynamicType$Builder<",
            "*>;)",
            "Lnet/bytebuddy/dynamic/DynamicType$Builder<",
            "*>;"
        }
    .end annotation

    .line 3091
    new-instance v0, Lnet/bytebuddy/dynamic/NexusAccessor$InitializationAppender;

    iget v1, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$InitializationStrategy$SelfInjection$Dispatcher;->identification:I

    invoke-direct {v0, v1}, Lnet/bytebuddy/dynamic/NexusAccessor$InitializationAppender;-><init>(I)V

    invoke-interface {p1, v0}, Lnet/bytebuddy/dynamic/DynamicType$Builder;->initializer(Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender;)Lnet/bytebuddy/dynamic/DynamicType$Builder;

    move-result-object p1

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
    iget v2, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$InitializationStrategy$SelfInjection$Dispatcher;->identification:I

    check-cast p1, Lnet/bytebuddy/agent/builder/AgentBuilder$InitializationStrategy$SelfInjection$Dispatcher;

    iget v3, p1, Lnet/bytebuddy/agent/builder/AgentBuilder$InitializationStrategy$SelfInjection$Dispatcher;->identification:I

    if-eq v2, v3, :cond_3

    return v1

    :cond_3
    iget-object v2, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$InitializationStrategy$SelfInjection$Dispatcher;->nexusAccessor:Lnet/bytebuddy/dynamic/NexusAccessor;

    iget-object p1, p1, Lnet/bytebuddy/agent/builder/AgentBuilder$InitializationStrategy$SelfInjection$Dispatcher;->nexusAccessor:Lnet/bytebuddy/dynamic/NexusAccessor;

    invoke-virtual {v2, p1}, Lnet/bytebuddy/dynamic/NexusAccessor;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v1

    :cond_4
    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$InitializationStrategy$SelfInjection$Dispatcher;->nexusAccessor:Lnet/bytebuddy/dynamic/NexusAccessor;

    invoke-virtual {v0}, Lnet/bytebuddy/dynamic/NexusAccessor;->hashCode()I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$InitializationStrategy$SelfInjection$Dispatcher;->identification:I

    add-int/2addr v1, v0

    return v1
.end method
