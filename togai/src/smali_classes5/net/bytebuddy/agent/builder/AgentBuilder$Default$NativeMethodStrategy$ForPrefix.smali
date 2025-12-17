.class public Lnet/bytebuddy/agent/builder/AgentBuilder$Default$NativeMethodStrategy$ForPrefix;
.super Ljava/lang/Object;
.source "AgentBuilder.java"

# interfaces
.implements Lnet/bytebuddy/agent/builder/AgentBuilder$Default$NativeMethodStrategy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/agent/builder/AgentBuilder$Default$NativeMethodStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ForPrefix"
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# instance fields
.field private final prefix:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 9650
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$NativeMethodStrategy$ForPrefix;->prefix:Ljava/lang/String;

    return-void
.end method

.method protected static of(Ljava/lang/String;)Lnet/bytebuddy/agent/builder/AgentBuilder$Default$NativeMethodStrategy;
    .locals 1

    .line 9661
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 9664
    new-instance v0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$NativeMethodStrategy$ForPrefix;

    invoke-direct {v0, p0}, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$NativeMethodStrategy$ForPrefix;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 9662
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "A method name prefix must not be the empty string"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
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
    iget-object v2, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$NativeMethodStrategy$ForPrefix;->prefix:Ljava/lang/String;

    check-cast p1, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$NativeMethodStrategy$ForPrefix;

    iget-object p1, p1, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$NativeMethodStrategy$ForPrefix;->prefix:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v1

    :cond_3
    return v0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$NativeMethodStrategy$ForPrefix;->prefix:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$NativeMethodStrategy$ForPrefix;->prefix:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    return v1
.end method

.method public isEnabled(Ljava/lang/instrument/Instrumentation;)Z
    .locals 3

    .line 9678
    invoke-static {}, Lnet/bytebuddy/agent/builder/AgentBuilder$Default;->access$1200()Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Dispatcher;

    move-result-object v0

    invoke-interface {v0, p1}, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Dispatcher;->isNativeMethodPrefixSupported(Ljava/lang/instrument/Instrumentation;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 9679
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "A prefix for native methods is not supported: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public resolve()Lnet/bytebuddy/dynamic/scaffold/inline/MethodNameTransformer;
    .locals 2

    .line 9671
    new-instance v0, Lnet/bytebuddy/dynamic/scaffold/inline/MethodNameTransformer$Prefixing;

    iget-object v1, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$NativeMethodStrategy$ForPrefix;->prefix:Ljava/lang/String;

    invoke-direct {v0, v1}, Lnet/bytebuddy/dynamic/scaffold/inline/MethodNameTransformer$Prefixing;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
