.class public Lnet/bytebuddy/agent/builder/AgentBuilder$Listener$ModuleReadEdgeCompleting;
.super Lnet/bytebuddy/agent/builder/AgentBuilder$Listener$Adapter;
.source "AgentBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/agent/builder/AgentBuilder$Listener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ModuleReadEdgeCompleting"
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# instance fields
.field private final addTargetEdge:Z

.field private final instrumentation:Ljava/lang/instrument/Instrumentation;

.field private final modules:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "+",
            "Lnet/bytebuddy/utility/JavaModule;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/instrument/Instrumentation;ZLjava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/instrument/Instrumentation;",
            "Z",
            "Ljava/util/Set<",
            "+",
            "Lnet/bytebuddy/utility/JavaModule;",
            ">;)V"
        }
    .end annotation

    .line 1706
    invoke-direct {p0}, Lnet/bytebuddy/agent/builder/AgentBuilder$Listener$Adapter;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Listener$ModuleReadEdgeCompleting;->instrumentation:Ljava/lang/instrument/Instrumentation;

    iput-boolean p2, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Listener$ModuleReadEdgeCompleting;->addTargetEdge:Z

    iput-object p3, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Listener$ModuleReadEdgeCompleting;->modules:Ljava/util/Set;

    return-void
.end method

.method public static varargs of(Ljava/lang/instrument/Instrumentation;Z[Ljava/lang/Class;)Lnet/bytebuddy/agent/builder/AgentBuilder$Listener;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/instrument/Instrumentation;",
            "Z[",
            "Ljava/lang/Class<",
            "*>;)",
            "Lnet/bytebuddy/agent/builder/AgentBuilder$Listener;"
        }
    .end annotation

    .line 1722
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1723
    array-length v1, p2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p2, v2

    .line 1724
    invoke-static {v3}, Lnet/bytebuddy/utility/JavaModule;->ofType(Ljava/lang/Class;)Lnet/bytebuddy/utility/JavaModule;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1726
    :cond_0
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_1

    sget-object p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Listener$NoOp;->INSTANCE:Lnet/bytebuddy/agent/builder/AgentBuilder$Listener$NoOp;

    goto :goto_1

    :cond_1
    new-instance p2, Lnet/bytebuddy/agent/builder/AgentBuilder$Listener$ModuleReadEdgeCompleting;

    invoke-direct {p2, p0, p1, v0}, Lnet/bytebuddy/agent/builder/AgentBuilder$Listener$ModuleReadEdgeCompleting;-><init>(Ljava/lang/instrument/Instrumentation;ZLjava/util/Set;)V

    move-object p0, p2

    :goto_1
    return-object p0
.end method


# virtual methods
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
    iget-boolean v2, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Listener$ModuleReadEdgeCompleting;->addTargetEdge:Z

    check-cast p1, Lnet/bytebuddy/agent/builder/AgentBuilder$Listener$ModuleReadEdgeCompleting;

    iget-boolean v3, p1, Lnet/bytebuddy/agent/builder/AgentBuilder$Listener$ModuleReadEdgeCompleting;->addTargetEdge:Z

    if-eq v2, v3, :cond_3

    return v1

    :cond_3
    iget-object v2, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Listener$ModuleReadEdgeCompleting;->instrumentation:Ljava/lang/instrument/Instrumentation;

    iget-object v3, p1, Lnet/bytebuddy/agent/builder/AgentBuilder$Listener$ModuleReadEdgeCompleting;->instrumentation:Ljava/lang/instrument/Instrumentation;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    :cond_4
    iget-object v2, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Listener$ModuleReadEdgeCompleting;->modules:Ljava/util/Set;

    iget-object p1, p1, Lnet/bytebuddy/agent/builder/AgentBuilder$Listener$ModuleReadEdgeCompleting;->modules:Ljava/util/Set;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    return v1

    :cond_5
    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Listener$ModuleReadEdgeCompleting;->instrumentation:Ljava/lang/instrument/Instrumentation;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-boolean v0, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Listener$ModuleReadEdgeCompleting;->addTargetEdge:Z

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Listener$ModuleReadEdgeCompleting;->modules:Ljava/util/Set;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public onTransformation(Lnet/bytebuddy/description/type/TypeDescription;Ljava/lang/ClassLoader;Lnet/bytebuddy/utility/JavaModule;ZLnet/bytebuddy/dynamic/DynamicType;)V
    .locals 0

    .line 1733
    sget-object p1, Lnet/bytebuddy/utility/JavaModule;->UNSUPPORTED:Lnet/bytebuddy/utility/JavaModule;

    if-eq p3, p1, :cond_2

    invoke-virtual {p3}, Lnet/bytebuddy/utility/JavaModule;->isNamed()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Listener$ModuleReadEdgeCompleting;->modules:Ljava/util/Set;

    .line 1734
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lnet/bytebuddy/utility/JavaModule;

    .line 1735
    invoke-virtual {p3, p2}, Lnet/bytebuddy/utility/JavaModule;->canRead(Lnet/bytebuddy/utility/JavaModule;)Z

    move-result p4

    if-nez p4, :cond_1

    iget-object p4, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Listener$ModuleReadEdgeCompleting;->instrumentation:Ljava/lang/instrument/Instrumentation;

    .line 1736
    invoke-virtual {p3, p4, p2}, Lnet/bytebuddy/utility/JavaModule;->addReads(Ljava/lang/instrument/Instrumentation;Lnet/bytebuddy/utility/JavaModule;)V

    :cond_1
    iget-boolean p4, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Listener$ModuleReadEdgeCompleting;->addTargetEdge:Z

    if-eqz p4, :cond_0

    .line 1738
    invoke-virtual {p2, p3}, Lnet/bytebuddy/utility/JavaModule;->canRead(Lnet/bytebuddy/utility/JavaModule;)Z

    move-result p4

    if-nez p4, :cond_0

    iget-object p4, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Listener$ModuleReadEdgeCompleting;->instrumentation:Ljava/lang/instrument/Instrumentation;

    .line 1739
    invoke-virtual {p2, p4, p3}, Lnet/bytebuddy/utility/JavaModule;->addReads(Ljava/lang/instrument/Instrumentation;Lnet/bytebuddy/utility/JavaModule;)V

    goto :goto_0

    :cond_2
    return-void
.end method
