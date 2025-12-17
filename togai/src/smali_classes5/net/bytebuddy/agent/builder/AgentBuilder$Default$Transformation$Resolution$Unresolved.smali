.class public Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Resolution$Unresolved;
.super Ljava/lang/Object;
.source "AgentBuilder.java"

# interfaces
.implements Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Resolution;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Resolution;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Unresolved"
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# instance fields
.field private final classLoader:Ljava/lang/ClassLoader;

.field private final loaded:Z

.field private final module:Lnet/bytebuddy/utility/JavaModule;

.field private final typeDescription:Lnet/bytebuddy/description/type/TypeDescription;


# direct methods
.method protected constructor <init>(Lnet/bytebuddy/description/type/TypeDescription;Ljava/lang/ClassLoader;Lnet/bytebuddy/utility/JavaModule;Z)V
    .locals 0

    .line 9861
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Resolution$Unresolved;->typeDescription:Lnet/bytebuddy/description/type/TypeDescription;

    iput-object p2, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Resolution$Unresolved;->classLoader:Ljava/lang/ClassLoader;

    iput-object p3, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Resolution$Unresolved;->module:Lnet/bytebuddy/utility/JavaModule;

    iput-boolean p4, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Resolution$Unresolved;->loaded:Z

    return-void
.end method


# virtual methods
.method public apply(Lnet/bytebuddy/agent/builder/AgentBuilder$InitializationStrategy;Lnet/bytebuddy/dynamic/ClassFileLocator;Lnet/bytebuddy/agent/builder/AgentBuilder$TypeStrategy;Lnet/bytebuddy/ByteBuddy;Lnet/bytebuddy/agent/builder/AgentBuilder$Default$NativeMethodStrategy;Lnet/bytebuddy/agent/builder/AgentBuilder$Default$BootstrapInjectionStrategy;Ljava/security/AccessControlContext;Lnet/bytebuddy/agent/builder/AgentBuilder$Listener;)[B
    .locals 0

    iget-object p1, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Resolution$Unresolved;->typeDescription:Lnet/bytebuddy/description/type/TypeDescription;

    iget-object p2, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Resolution$Unresolved;->classLoader:Ljava/lang/ClassLoader;

    iget-object p3, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Resolution$Unresolved;->module:Lnet/bytebuddy/utility/JavaModule;

    iget-boolean p4, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Resolution$Unresolved;->loaded:Z

    .line 9900
    invoke-interface {p8, p1, p2, p3, p4}, Lnet/bytebuddy/agent/builder/AgentBuilder$Listener;->onIgnored(Lnet/bytebuddy/description/type/TypeDescription;Ljava/lang/ClassLoader;Lnet/bytebuddy/utility/JavaModule;Z)V

    .line 9901
    invoke-static {}, Lnet/bytebuddy/agent/builder/AgentBuilder$Default;->access$1300()[B

    move-result-object p1

    return-object p1
.end method

.method public asDecoratorOf(Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Resolution;)Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Resolution;
    .locals 0

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
    iget-boolean v2, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Resolution$Unresolved;->loaded:Z

    check-cast p1, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Resolution$Unresolved;

    iget-boolean v3, p1, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Resolution$Unresolved;->loaded:Z

    if-eq v2, v3, :cond_3

    return v1

    :cond_3
    iget-object v2, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Resolution$Unresolved;->typeDescription:Lnet/bytebuddy/description/type/TypeDescription;

    iget-object v3, p1, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Resolution$Unresolved;->typeDescription:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    :cond_4
    iget-object v2, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Resolution$Unresolved;->classLoader:Ljava/lang/ClassLoader;

    iget-object v3, p1, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Resolution$Unresolved;->classLoader:Ljava/lang/ClassLoader;

    invoke-virtual {v2, v3}, Ljava/lang/ClassLoader;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    return v1

    :cond_5
    iget-object v2, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Resolution$Unresolved;->module:Lnet/bytebuddy/utility/JavaModule;

    iget-object p1, p1, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Resolution$Unresolved;->module:Lnet/bytebuddy/utility/JavaModule;

    invoke-virtual {v2, p1}, Lnet/bytebuddy/utility/JavaModule;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    return v1

    :cond_6
    return v0
.end method

.method public getSort()Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Resolution$Sort;
    .locals 1

    .line 9872
    sget-object v0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Resolution$Sort;->UNDEFINED:Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Resolution$Sort;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Resolution$Unresolved;->typeDescription:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Resolution$Unresolved;->classLoader:Ljava/lang/ClassLoader;

    invoke-virtual {v0}, Ljava/lang/ClassLoader;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Resolution$Unresolved;->module:Lnet/bytebuddy/utility/JavaModule;

    invoke-virtual {v0}, Lnet/bytebuddy/utility/JavaModule;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-boolean v0, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Resolution$Unresolved;->loaded:Z

    add-int/2addr v1, v0

    return v1
.end method

.method public prepend(Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Resolution$Decoratable;)Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Resolution;
    .locals 0

    return-object p1
.end method
