.class public Lnet/bytebuddy/agent/builder/AgentBuilder$TypeStrategy$ForBuildEntryPoint;
.super Ljava/lang/Object;
.source "AgentBuilder.java"

# interfaces
.implements Lnet/bytebuddy/agent/builder/AgentBuilder$TypeStrategy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/agent/builder/AgentBuilder$TypeStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ForBuildEntryPoint"
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# instance fields
.field private final entryPoint:Lnet/bytebuddy/build/EntryPoint;


# direct methods
.method public constructor <init>(Lnet/bytebuddy/build/EntryPoint;)V
    .locals 0

    .line 2116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$TypeStrategy$ForBuildEntryPoint;->entryPoint:Lnet/bytebuddy/build/EntryPoint;

    return-void
.end method


# virtual methods
.method public builder(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/ByteBuddy;Lnet/bytebuddy/dynamic/ClassFileLocator;Lnet/bytebuddy/dynamic/scaffold/inline/MethodNameTransformer;Ljava/lang/ClassLoader;Lnet/bytebuddy/utility/JavaModule;Ljava/security/ProtectionDomain;)Lnet/bytebuddy/dynamic/DynamicType$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            "Lnet/bytebuddy/ByteBuddy;",
            "Lnet/bytebuddy/dynamic/ClassFileLocator;",
            "Lnet/bytebuddy/dynamic/scaffold/inline/MethodNameTransformer;",
            "Ljava/lang/ClassLoader;",
            "Lnet/bytebuddy/utility/JavaModule;",
            "Ljava/security/ProtectionDomain;",
            ")",
            "Lnet/bytebuddy/dynamic/DynamicType$Builder<",
            "*>;"
        }
    .end annotation

    iget-object p5, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$TypeStrategy$ForBuildEntryPoint;->entryPoint:Lnet/bytebuddy/build/EntryPoint;

    .line 2130
    invoke-interface {p5, p1, p2, p3, p4}, Lnet/bytebuddy/build/EntryPoint;->transform(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/ByteBuddy;Lnet/bytebuddy/dynamic/ClassFileLocator;Lnet/bytebuddy/dynamic/scaffold/inline/MethodNameTransformer;)Lnet/bytebuddy/dynamic/DynamicType$Builder;

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
    iget-object v2, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$TypeStrategy$ForBuildEntryPoint;->entryPoint:Lnet/bytebuddy/build/EntryPoint;

    check-cast p1, Lnet/bytebuddy/agent/builder/AgentBuilder$TypeStrategy$ForBuildEntryPoint;

    iget-object p1, p1, Lnet/bytebuddy/agent/builder/AgentBuilder$TypeStrategy$ForBuildEntryPoint;->entryPoint:Lnet/bytebuddy/build/EntryPoint;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v1

    :cond_3
    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$TypeStrategy$ForBuildEntryPoint;->entryPoint:Lnet/bytebuddy/build/EntryPoint;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    return v1
.end method
