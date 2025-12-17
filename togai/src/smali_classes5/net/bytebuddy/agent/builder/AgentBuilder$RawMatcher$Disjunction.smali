.class public Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher$Disjunction;
.super Ljava/lang/Object;
.source "AgentBuilder.java"

# interfaces
.implements Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Disjunction"
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# instance fields
.field private final left:Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher;

.field private final right:Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher;


# direct methods
.method protected constructor <init>(Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher;Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher;)V
    .locals 0

    .line 1170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher$Disjunction;->left:Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher;

    iput-object p2, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher$Disjunction;->right:Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher;

    return-void
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
    iget-object v2, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher$Disjunction;->left:Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher;

    check-cast p1, Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher$Disjunction;

    iget-object v3, p1, Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher$Disjunction;->left:Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    :cond_3
    iget-object v2, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher$Disjunction;->right:Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher;

    iget-object p1, p1, Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher$Disjunction;->right:Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v1

    :cond_4
    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher$Disjunction;->left:Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher$Disjunction;->right:Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public matches(Lnet/bytebuddy/description/type/TypeDescription;Ljava/lang/ClassLoader;Lnet/bytebuddy/utility/JavaModule;Ljava/lang/Class;Ljava/security/ProtectionDomain;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            "Ljava/lang/ClassLoader;",
            "Lnet/bytebuddy/utility/JavaModule;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/security/ProtectionDomain;",
            ")Z"
        }
    .end annotation

    iget-object v0, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher$Disjunction;->left:Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 1183
    invoke-interface/range {v0 .. v5}, Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher;->matches(Lnet/bytebuddy/description/type/TypeDescription;Ljava/lang/ClassLoader;Lnet/bytebuddy/utility/JavaModule;Ljava/lang/Class;Ljava/security/ProtectionDomain;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v1, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher$Disjunction;->right:Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    .line 1184
    invoke-interface/range {v1 .. v6}, Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher;->matches(Lnet/bytebuddy/description/type/TypeDescription;Ljava/lang/ClassLoader;Lnet/bytebuddy/utility/JavaModule;Ljava/lang/Class;Ljava/security/ProtectionDomain;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method
