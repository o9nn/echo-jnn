.class public abstract Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Delegator;
.super Lnet/bytebuddy/agent/builder/AgentBuilder$Matchable$AbstractBase;
.source "AgentBuilder.java"

# interfaces
.implements Lnet/bytebuddy/agent/builder/AgentBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/agent/builder/AgentBuilder$Default;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x404
    name = "Delegator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lnet/bytebuddy/agent/builder/AgentBuilder$Matchable<",
        "TT;>;>",
        "Lnet/bytebuddy/agent/builder/AgentBuilder$Matchable$AbstractBase<",
        "TT;>;",
        "Lnet/bytebuddy/agent/builder/AgentBuilder;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lnet/bytebuddy/agent/builder/AgentBuilder$Default;


# direct methods
.method protected constructor <init>(Lnet/bytebuddy/agent/builder/AgentBuilder$Default;)V
    .locals 0

    iput-object p1, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Delegator;->this$0:Lnet/bytebuddy/agent/builder/AgentBuilder$Default;

    .line 10978
    invoke-direct {p0}, Lnet/bytebuddy/agent/builder/AgentBuilder$Matchable$AbstractBase;-><init>()V

    return-void
.end method


# virtual methods
.method public assureReadEdgeFromAndTo(Ljava/lang/instrument/Instrumentation;Ljava/util/Collection;)Lnet/bytebuddy/agent/builder/AgentBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/instrument/Instrumentation;",
            "Ljava/util/Collection<",
            "+",
            "Lnet/bytebuddy/utility/JavaModule;",
            ">;)",
            "Lnet/bytebuddy/agent/builder/AgentBuilder;"
        }
    .end annotation

    .line 11159
    invoke-virtual {p0}, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Delegator;->materialize()Lnet/bytebuddy/agent/builder/AgentBuilder;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lnet/bytebuddy/agent/builder/AgentBuilder;->assureReadEdgeFromAndTo(Ljava/lang/instrument/Instrumentation;Ljava/util/Collection;)Lnet/bytebuddy/agent/builder/AgentBuilder;

    move-result-object p1

    return-object p1
.end method

.method public varargs assureReadEdgeFromAndTo(Ljava/lang/instrument/Instrumentation;[Ljava/lang/Class;)Lnet/bytebuddy/agent/builder/AgentBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/instrument/Instrumentation;",
            "[",
            "Ljava/lang/Class<",
            "*>;)",
            "Lnet/bytebuddy/agent/builder/AgentBuilder;"
        }
    .end annotation

    .line 11145
    invoke-virtual {p0}, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Delegator;->materialize()Lnet/bytebuddy/agent/builder/AgentBuilder;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lnet/bytebuddy/agent/builder/AgentBuilder;->assureReadEdgeFromAndTo(Ljava/lang/instrument/Instrumentation;[Ljava/lang/Class;)Lnet/bytebuddy/agent/builder/AgentBuilder;

    move-result-object p1

    return-object p1
.end method

.method public varargs assureReadEdgeFromAndTo(Ljava/lang/instrument/Instrumentation;[Lnet/bytebuddy/utility/JavaModule;)Lnet/bytebuddy/agent/builder/AgentBuilder;
    .locals 1

    .line 11152
    invoke-virtual {p0}, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Delegator;->materialize()Lnet/bytebuddy/agent/builder/AgentBuilder;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lnet/bytebuddy/agent/builder/AgentBuilder;->assureReadEdgeFromAndTo(Ljava/lang/instrument/Instrumentation;[Lnet/bytebuddy/utility/JavaModule;)Lnet/bytebuddy/agent/builder/AgentBuilder;

    move-result-object p1

    return-object p1
.end method

.method public assureReadEdgeTo(Ljava/lang/instrument/Instrumentation;Ljava/util/Collection;)Lnet/bytebuddy/agent/builder/AgentBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/instrument/Instrumentation;",
            "Ljava/util/Collection<",
            "+",
            "Lnet/bytebuddy/utility/JavaModule;",
            ">;)",
            "Lnet/bytebuddy/agent/builder/AgentBuilder;"
        }
    .end annotation

    .line 11138
    invoke-virtual {p0}, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Delegator;->materialize()Lnet/bytebuddy/agent/builder/AgentBuilder;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lnet/bytebuddy/agent/builder/AgentBuilder;->assureReadEdgeTo(Ljava/lang/instrument/Instrumentation;Ljava/util/Collection;)Lnet/bytebuddy/agent/builder/AgentBuilder;

    move-result-object p1

    return-object p1
.end method

.method public varargs assureReadEdgeTo(Ljava/lang/instrument/Instrumentation;[Ljava/lang/Class;)Lnet/bytebuddy/agent/builder/AgentBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/instrument/Instrumentation;",
            "[",
            "Ljava/lang/Class<",
            "*>;)",
            "Lnet/bytebuddy/agent/builder/AgentBuilder;"
        }
    .end annotation

    .line 11124
    invoke-virtual {p0}, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Delegator;->materialize()Lnet/bytebuddy/agent/builder/AgentBuilder;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lnet/bytebuddy/agent/builder/AgentBuilder;->assureReadEdgeTo(Ljava/lang/instrument/Instrumentation;[Ljava/lang/Class;)Lnet/bytebuddy/agent/builder/AgentBuilder;

    move-result-object p1

    return-object p1
.end method

.method public varargs assureReadEdgeTo(Ljava/lang/instrument/Instrumentation;[Lnet/bytebuddy/utility/JavaModule;)Lnet/bytebuddy/agent/builder/AgentBuilder;
    .locals 1

    .line 11131
    invoke-virtual {p0}, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Delegator;->materialize()Lnet/bytebuddy/agent/builder/AgentBuilder;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lnet/bytebuddy/agent/builder/AgentBuilder;->assureReadEdgeTo(Ljava/lang/instrument/Instrumentation;[Lnet/bytebuddy/utility/JavaModule;)Lnet/bytebuddy/agent/builder/AgentBuilder;

    move-result-object p1

    return-object p1
.end method

.method public disableBootstrapInjection()Lnet/bytebuddy/agent/builder/AgentBuilder;
    .locals 1

    .line 11096
    invoke-virtual {p0}, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Delegator;->materialize()Lnet/bytebuddy/agent/builder/AgentBuilder;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/agent/builder/AgentBuilder;->disableBootstrapInjection()Lnet/bytebuddy/agent/builder/AgentBuilder;

    move-result-object v0

    return-object v0
.end method

.method public disableClassFormatChanges()Lnet/bytebuddy/agent/builder/AgentBuilder;
    .locals 1

    .line 11117
    invoke-virtual {p0}, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Delegator;->materialize()Lnet/bytebuddy/agent/builder/AgentBuilder;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/agent/builder/AgentBuilder;->disableClassFormatChanges()Lnet/bytebuddy/agent/builder/AgentBuilder;

    move-result-object v0

    return-object v0
.end method

.method public disableNativeMethodPrefix()Lnet/bytebuddy/agent/builder/AgentBuilder;
    .locals 1

    .line 11110
    invoke-virtual {p0}, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Delegator;->materialize()Lnet/bytebuddy/agent/builder/AgentBuilder;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/agent/builder/AgentBuilder;->disableNativeMethodPrefix()Lnet/bytebuddy/agent/builder/AgentBuilder;

    move-result-object v0

    return-object v0
.end method

.method public enableBootstrapInjection(Ljava/lang/instrument/Instrumentation;Ljava/io/File;)Lnet/bytebuddy/agent/builder/AgentBuilder;
    .locals 1

    .line 11082
    invoke-virtual {p0}, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Delegator;->materialize()Lnet/bytebuddy/agent/builder/AgentBuilder;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lnet/bytebuddy/agent/builder/AgentBuilder;->enableBootstrapInjection(Ljava/lang/instrument/Instrumentation;Ljava/io/File;)Lnet/bytebuddy/agent/builder/AgentBuilder;

    move-result-object p1

    return-object p1
.end method

.method public enableNativeMethodPrefix(Ljava/lang/String;)Lnet/bytebuddy/agent/builder/AgentBuilder;
    .locals 1

    .line 11103
    invoke-virtual {p0}, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Delegator;->materialize()Lnet/bytebuddy/agent/builder/AgentBuilder;

    move-result-object v0

    invoke-interface {v0, p1}, Lnet/bytebuddy/agent/builder/AgentBuilder;->enableNativeMethodPrefix(Ljava/lang/String;)Lnet/bytebuddy/agent/builder/AgentBuilder;

    move-result-object p1

    return-object p1
.end method

.method public enableUnsafeBootstrapInjection()Lnet/bytebuddy/agent/builder/AgentBuilder;
    .locals 1

    .line 11089
    invoke-virtual {p0}, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Delegator;->materialize()Lnet/bytebuddy/agent/builder/AgentBuilder;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/agent/builder/AgentBuilder;->enableUnsafeBootstrapInjection()Lnet/bytebuddy/agent/builder/AgentBuilder;

    move-result-object v0

    return-object v0
.end method

.method public ignore(Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher;)Lnet/bytebuddy/agent/builder/AgentBuilder$Ignored;
    .locals 1

    .line 11220
    invoke-virtual {p0}, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Delegator;->materialize()Lnet/bytebuddy/agent/builder/AgentBuilder;

    move-result-object v0

    invoke-interface {v0, p1}, Lnet/bytebuddy/agent/builder/AgentBuilder;->ignore(Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher;)Lnet/bytebuddy/agent/builder/AgentBuilder$Ignored;

    move-result-object p1

    return-object p1
.end method

.method public ignore(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/agent/builder/AgentBuilder$Ignored;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/matcher/ElementMatcher<",
            "-",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            ">;)",
            "Lnet/bytebuddy/agent/builder/AgentBuilder$Ignored;"
        }
    .end annotation

    .line 11197
    invoke-virtual {p0}, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Delegator;->materialize()Lnet/bytebuddy/agent/builder/AgentBuilder;

    move-result-object v0

    invoke-interface {v0, p1}, Lnet/bytebuddy/agent/builder/AgentBuilder;->ignore(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/agent/builder/AgentBuilder$Ignored;

    move-result-object p1

    return-object p1
.end method

.method public ignore(Lnet/bytebuddy/matcher/ElementMatcher;Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/agent/builder/AgentBuilder$Ignored;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/matcher/ElementMatcher<",
            "-",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            ">;",
            "Lnet/bytebuddy/matcher/ElementMatcher<",
            "-",
            "Ljava/lang/ClassLoader;",
            ">;)",
            "Lnet/bytebuddy/agent/builder/AgentBuilder$Ignored;"
        }
    .end annotation

    .line 11204
    invoke-virtual {p0}, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Delegator;->materialize()Lnet/bytebuddy/agent/builder/AgentBuilder;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lnet/bytebuddy/agent/builder/AgentBuilder;->ignore(Lnet/bytebuddy/matcher/ElementMatcher;Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/agent/builder/AgentBuilder$Ignored;

    move-result-object p1

    return-object p1
.end method

.method public ignore(Lnet/bytebuddy/matcher/ElementMatcher;Lnet/bytebuddy/matcher/ElementMatcher;Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/agent/builder/AgentBuilder$Ignored;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/matcher/ElementMatcher<",
            "-",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            ">;",
            "Lnet/bytebuddy/matcher/ElementMatcher<",
            "-",
            "Ljava/lang/ClassLoader;",
            ">;",
            "Lnet/bytebuddy/matcher/ElementMatcher<",
            "-",
            "Lnet/bytebuddy/utility/JavaModule;",
            ">;)",
            "Lnet/bytebuddy/agent/builder/AgentBuilder$Ignored;"
        }
    .end annotation

    .line 11213
    invoke-virtual {p0}, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Delegator;->materialize()Lnet/bytebuddy/agent/builder/AgentBuilder;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lnet/bytebuddy/agent/builder/AgentBuilder;->ignore(Lnet/bytebuddy/matcher/ElementMatcher;Lnet/bytebuddy/matcher/ElementMatcher;Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/agent/builder/AgentBuilder$Ignored;

    move-result-object p1

    return-object p1
.end method

.method public installOn(Ljava/lang/instrument/Instrumentation;)Lnet/bytebuddy/agent/builder/ResettableClassFileTransformer;
    .locals 1

    .line 11234
    invoke-virtual {p0}, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Delegator;->materialize()Lnet/bytebuddy/agent/builder/AgentBuilder;

    move-result-object v0

    invoke-interface {v0, p1}, Lnet/bytebuddy/agent/builder/AgentBuilder;->installOn(Ljava/lang/instrument/Instrumentation;)Lnet/bytebuddy/agent/builder/ResettableClassFileTransformer;

    move-result-object p1

    return-object p1
.end method

.method public installOn(Ljava/lang/instrument/Instrumentation;Lnet/bytebuddy/agent/builder/AgentBuilder$TransformerDecorator;)Lnet/bytebuddy/agent/builder/ResettableClassFileTransformer;
    .locals 1

    .line 11241
    invoke-virtual {p0}, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Delegator;->materialize()Lnet/bytebuddy/agent/builder/AgentBuilder;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lnet/bytebuddy/agent/builder/AgentBuilder;->installOn(Ljava/lang/instrument/Instrumentation;Lnet/bytebuddy/agent/builder/AgentBuilder$TransformerDecorator;)Lnet/bytebuddy/agent/builder/ResettableClassFileTransformer;

    move-result-object p1

    return-object p1
.end method

.method public installOnByteBuddyAgent()Lnet/bytebuddy/agent/builder/ResettableClassFileTransformer;
    .locals 1

    .line 11248
    invoke-virtual {p0}, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Delegator;->materialize()Lnet/bytebuddy/agent/builder/AgentBuilder;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/agent/builder/AgentBuilder;->installOnByteBuddyAgent()Lnet/bytebuddy/agent/builder/ResettableClassFileTransformer;

    move-result-object v0

    return-object v0
.end method

.method public installOnByteBuddyAgent(Lnet/bytebuddy/agent/builder/AgentBuilder$TransformerDecorator;)Lnet/bytebuddy/agent/builder/ResettableClassFileTransformer;
    .locals 1

    .line 11255
    invoke-virtual {p0}, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Delegator;->materialize()Lnet/bytebuddy/agent/builder/AgentBuilder;

    move-result-object v0

    invoke-interface {v0, p1}, Lnet/bytebuddy/agent/builder/AgentBuilder;->installOnByteBuddyAgent(Lnet/bytebuddy/agent/builder/AgentBuilder$TransformerDecorator;)Lnet/bytebuddy/agent/builder/ResettableClassFileTransformer;

    move-result-object p1

    return-object p1
.end method

.method public makeRaw()Ljava/lang/instrument/ClassFileTransformer;
    .locals 1

    .line 11227
    invoke-virtual {p0}, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Delegator;->materialize()Lnet/bytebuddy/agent/builder/AgentBuilder;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/agent/builder/AgentBuilder;->makeRaw()Ljava/lang/instrument/ClassFileTransformer;

    move-result-object v0

    return-object v0
.end method

.method protected abstract materialize()Lnet/bytebuddy/agent/builder/AgentBuilder;
.end method

.method public type(Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher;)Lnet/bytebuddy/agent/builder/AgentBuilder$Identified$Narrowable;
    .locals 1

    .line 11190
    invoke-virtual {p0}, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Delegator;->materialize()Lnet/bytebuddy/agent/builder/AgentBuilder;

    move-result-object v0

    invoke-interface {v0, p1}, Lnet/bytebuddy/agent/builder/AgentBuilder;->type(Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher;)Lnet/bytebuddy/agent/builder/AgentBuilder$Identified$Narrowable;

    move-result-object p1

    return-object p1
.end method

.method public type(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/agent/builder/AgentBuilder$Identified$Narrowable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/matcher/ElementMatcher<",
            "-",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            ">;)",
            "Lnet/bytebuddy/agent/builder/AgentBuilder$Identified$Narrowable;"
        }
    .end annotation

    .line 11166
    invoke-virtual {p0}, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Delegator;->materialize()Lnet/bytebuddy/agent/builder/AgentBuilder;

    move-result-object v0

    invoke-interface {v0, p1}, Lnet/bytebuddy/agent/builder/AgentBuilder;->type(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/agent/builder/AgentBuilder$Identified$Narrowable;

    move-result-object p1

    return-object p1
.end method

.method public type(Lnet/bytebuddy/matcher/ElementMatcher;Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/agent/builder/AgentBuilder$Identified$Narrowable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/matcher/ElementMatcher<",
            "-",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            ">;",
            "Lnet/bytebuddy/matcher/ElementMatcher<",
            "-",
            "Ljava/lang/ClassLoader;",
            ">;)",
            "Lnet/bytebuddy/agent/builder/AgentBuilder$Identified$Narrowable;"
        }
    .end annotation

    .line 11173
    invoke-virtual {p0}, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Delegator;->materialize()Lnet/bytebuddy/agent/builder/AgentBuilder;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lnet/bytebuddy/agent/builder/AgentBuilder;->type(Lnet/bytebuddy/matcher/ElementMatcher;Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/agent/builder/AgentBuilder$Identified$Narrowable;

    move-result-object p1

    return-object p1
.end method

.method public type(Lnet/bytebuddy/matcher/ElementMatcher;Lnet/bytebuddy/matcher/ElementMatcher;Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/agent/builder/AgentBuilder$Identified$Narrowable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/matcher/ElementMatcher<",
            "-",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            ">;",
            "Lnet/bytebuddy/matcher/ElementMatcher<",
            "-",
            "Ljava/lang/ClassLoader;",
            ">;",
            "Lnet/bytebuddy/matcher/ElementMatcher<",
            "-",
            "Lnet/bytebuddy/utility/JavaModule;",
            ">;)",
            "Lnet/bytebuddy/agent/builder/AgentBuilder$Identified$Narrowable;"
        }
    .end annotation

    .line 11182
    invoke-virtual {p0}, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Delegator;->materialize()Lnet/bytebuddy/agent/builder/AgentBuilder;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lnet/bytebuddy/agent/builder/AgentBuilder;->type(Lnet/bytebuddy/matcher/ElementMatcher;Lnet/bytebuddy/matcher/ElementMatcher;Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/agent/builder/AgentBuilder$Identified$Narrowable;

    move-result-object p1

    return-object p1
.end method

.method public with(Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy;)Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionListenable$WithoutBatchStrategy;
    .locals 1

    .line 11040
    invoke-virtual {p0}, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Delegator;->materialize()Lnet/bytebuddy/agent/builder/AgentBuilder;

    move-result-object v0

    invoke-interface {v0, p1}, Lnet/bytebuddy/agent/builder/AgentBuilder;->with(Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy;)Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionListenable$WithoutBatchStrategy;

    move-result-object p1

    return-object p1
.end method

.method public with(Lnet/bytebuddy/ByteBuddy;)Lnet/bytebuddy/agent/builder/AgentBuilder;
    .locals 1

    .line 10991
    invoke-virtual {p0}, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Delegator;->materialize()Lnet/bytebuddy/agent/builder/AgentBuilder;

    move-result-object v0

    invoke-interface {v0, p1}, Lnet/bytebuddy/agent/builder/AgentBuilder;->with(Lnet/bytebuddy/ByteBuddy;)Lnet/bytebuddy/agent/builder/AgentBuilder;

    move-result-object p1

    return-object p1
.end method

.method public with(Lnet/bytebuddy/agent/builder/AgentBuilder$CircularityLock;)Lnet/bytebuddy/agent/builder/AgentBuilder;
    .locals 1

    .line 11005
    invoke-virtual {p0}, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Delegator;->materialize()Lnet/bytebuddy/agent/builder/AgentBuilder;

    move-result-object v0

    invoke-interface {v0, p1}, Lnet/bytebuddy/agent/builder/AgentBuilder;->with(Lnet/bytebuddy/agent/builder/AgentBuilder$CircularityLock;)Lnet/bytebuddy/agent/builder/AgentBuilder;

    move-result-object p1

    return-object p1
.end method

.method public with(Lnet/bytebuddy/agent/builder/AgentBuilder$ClassFileBufferStrategy;)Lnet/bytebuddy/agent/builder/AgentBuilder;
    .locals 1

    .line 11068
    invoke-virtual {p0}, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Delegator;->materialize()Lnet/bytebuddy/agent/builder/AgentBuilder;

    move-result-object v0

    invoke-interface {v0, p1}, Lnet/bytebuddy/agent/builder/AgentBuilder;->with(Lnet/bytebuddy/agent/builder/AgentBuilder$ClassFileBufferStrategy;)Lnet/bytebuddy/agent/builder/AgentBuilder;

    move-result-object p1

    return-object p1
.end method

.method public with(Lnet/bytebuddy/agent/builder/AgentBuilder$DescriptionStrategy;)Lnet/bytebuddy/agent/builder/AgentBuilder;
    .locals 1

    .line 11054
    invoke-virtual {p0}, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Delegator;->materialize()Lnet/bytebuddy/agent/builder/AgentBuilder;

    move-result-object v0

    invoke-interface {v0, p1}, Lnet/bytebuddy/agent/builder/AgentBuilder;->with(Lnet/bytebuddy/agent/builder/AgentBuilder$DescriptionStrategy;)Lnet/bytebuddy/agent/builder/AgentBuilder;

    move-result-object p1

    return-object p1
.end method

.method public with(Lnet/bytebuddy/agent/builder/AgentBuilder$FallbackStrategy;)Lnet/bytebuddy/agent/builder/AgentBuilder;
    .locals 1

    .line 11061
    invoke-virtual {p0}, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Delegator;->materialize()Lnet/bytebuddy/agent/builder/AgentBuilder;

    move-result-object v0

    invoke-interface {v0, p1}, Lnet/bytebuddy/agent/builder/AgentBuilder;->with(Lnet/bytebuddy/agent/builder/AgentBuilder$FallbackStrategy;)Lnet/bytebuddy/agent/builder/AgentBuilder;

    move-result-object p1

    return-object p1
.end method

.method public with(Lnet/bytebuddy/agent/builder/AgentBuilder$InitializationStrategy;)Lnet/bytebuddy/agent/builder/AgentBuilder;
    .locals 1

    .line 11033
    invoke-virtual {p0}, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Delegator;->materialize()Lnet/bytebuddy/agent/builder/AgentBuilder;

    move-result-object v0

    invoke-interface {v0, p1}, Lnet/bytebuddy/agent/builder/AgentBuilder;->with(Lnet/bytebuddy/agent/builder/AgentBuilder$InitializationStrategy;)Lnet/bytebuddy/agent/builder/AgentBuilder;

    move-result-object p1

    return-object p1
.end method

.method public with(Lnet/bytebuddy/agent/builder/AgentBuilder$InstallationListener;)Lnet/bytebuddy/agent/builder/AgentBuilder;
    .locals 1

    .line 11075
    invoke-virtual {p0}, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Delegator;->materialize()Lnet/bytebuddy/agent/builder/AgentBuilder;

    move-result-object v0

    invoke-interface {v0, p1}, Lnet/bytebuddy/agent/builder/AgentBuilder;->with(Lnet/bytebuddy/agent/builder/AgentBuilder$InstallationListener;)Lnet/bytebuddy/agent/builder/AgentBuilder;

    move-result-object p1

    return-object p1
.end method

.method public with(Lnet/bytebuddy/agent/builder/AgentBuilder$LambdaInstrumentationStrategy;)Lnet/bytebuddy/agent/builder/AgentBuilder;
    .locals 1

    .line 11047
    invoke-virtual {p0}, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Delegator;->materialize()Lnet/bytebuddy/agent/builder/AgentBuilder;

    move-result-object v0

    invoke-interface {v0, p1}, Lnet/bytebuddy/agent/builder/AgentBuilder;->with(Lnet/bytebuddy/agent/builder/AgentBuilder$LambdaInstrumentationStrategy;)Lnet/bytebuddy/agent/builder/AgentBuilder;

    move-result-object p1

    return-object p1
.end method

.method public with(Lnet/bytebuddy/agent/builder/AgentBuilder$Listener;)Lnet/bytebuddy/agent/builder/AgentBuilder;
    .locals 1

    .line 10998
    invoke-virtual {p0}, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Delegator;->materialize()Lnet/bytebuddy/agent/builder/AgentBuilder;

    move-result-object v0

    invoke-interface {v0, p1}, Lnet/bytebuddy/agent/builder/AgentBuilder;->with(Lnet/bytebuddy/agent/builder/AgentBuilder$Listener;)Lnet/bytebuddy/agent/builder/AgentBuilder;

    move-result-object p1

    return-object p1
.end method

.method public with(Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy;)Lnet/bytebuddy/agent/builder/AgentBuilder;
    .locals 1

    .line 11026
    invoke-virtual {p0}, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Delegator;->materialize()Lnet/bytebuddy/agent/builder/AgentBuilder;

    move-result-object v0

    invoke-interface {v0, p1}, Lnet/bytebuddy/agent/builder/AgentBuilder;->with(Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy;)Lnet/bytebuddy/agent/builder/AgentBuilder;

    move-result-object p1

    return-object p1
.end method

.method public with(Lnet/bytebuddy/agent/builder/AgentBuilder$PoolStrategy;)Lnet/bytebuddy/agent/builder/AgentBuilder;
    .locals 1

    .line 11019
    invoke-virtual {p0}, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Delegator;->materialize()Lnet/bytebuddy/agent/builder/AgentBuilder;

    move-result-object v0

    invoke-interface {v0, p1}, Lnet/bytebuddy/agent/builder/AgentBuilder;->with(Lnet/bytebuddy/agent/builder/AgentBuilder$PoolStrategy;)Lnet/bytebuddy/agent/builder/AgentBuilder;

    move-result-object p1

    return-object p1
.end method

.method public with(Lnet/bytebuddy/agent/builder/AgentBuilder$TypeStrategy;)Lnet/bytebuddy/agent/builder/AgentBuilder;
    .locals 1

    .line 11012
    invoke-virtual {p0}, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Delegator;->materialize()Lnet/bytebuddy/agent/builder/AgentBuilder;

    move-result-object v0

    invoke-interface {v0, p1}, Lnet/bytebuddy/agent/builder/AgentBuilder;->with(Lnet/bytebuddy/agent/builder/AgentBuilder$TypeStrategy;)Lnet/bytebuddy/agent/builder/AgentBuilder;

    move-result-object p1

    return-object p1
.end method
