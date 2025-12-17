.class public Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$ResubmissionStrategy$Enabled$ResubmissionListener;
.super Lnet/bytebuddy/agent/builder/AgentBuilder$Listener$Adapter;
.source "AgentBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$ResubmissionStrategy$Enabled;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "ResubmissionListener"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$ResubmissionStrategy$Enabled$ResubmissionListener$ConcurrentHashSet;
    }
.end annotation


# instance fields
.field private final matcher:Lnet/bytebuddy/matcher/ElementMatcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/bytebuddy/matcher/ElementMatcher<",
            "-",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field private final types:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$ResubmissionStrategy$Enabled$StorageKey;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lnet/bytebuddy/matcher/ElementMatcher;Ljava/util/concurrent/ConcurrentMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/matcher/ElementMatcher<",
            "-",
            "Ljava/lang/Throwable;",
            ">;",
            "Ljava/util/concurrent/ConcurrentMap<",
            "Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$ResubmissionStrategy$Enabled$StorageKey;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 6186
    invoke-direct {p0}, Lnet/bytebuddy/agent/builder/AgentBuilder$Listener$Adapter;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$ResubmissionStrategy$Enabled$ResubmissionListener;->matcher:Lnet/bytebuddy/matcher/ElementMatcher;

    iput-object p2, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$ResubmissionStrategy$Enabled$ResubmissionListener;->types:Ljava/util/concurrent/ConcurrentMap;

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;Ljava/lang/ClassLoader;Lnet/bytebuddy/utility/JavaModule;ZLjava/lang/Throwable;)V
    .locals 0

    if-nez p4, :cond_1

    iget-object p3, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$ResubmissionStrategy$Enabled$ResubmissionListener;->matcher:Lnet/bytebuddy/matcher/ElementMatcher;

    .line 6196
    invoke-interface {p3, p5}, Lnet/bytebuddy/matcher/ElementMatcher;->matches(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    iget-object p3, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$ResubmissionStrategy$Enabled$ResubmissionListener;->types:Ljava/util/concurrent/ConcurrentMap;

    .line 6197
    new-instance p4, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$ResubmissionStrategy$Enabled$LookupKey;

    invoke-direct {p4, p2}, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$ResubmissionStrategy$Enabled$LookupKey;-><init>(Ljava/lang/ClassLoader;)V

    invoke-interface {p3, p4}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Set;

    if-nez p3, :cond_0

    .line 6199
    new-instance p3, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$ResubmissionStrategy$Enabled$ResubmissionListener$ConcurrentHashSet;

    invoke-direct {p3}, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$ResubmissionStrategy$Enabled$ResubmissionListener$ConcurrentHashSet;-><init>()V

    iget-object p4, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$ResubmissionStrategy$Enabled$ResubmissionListener;->types:Ljava/util/concurrent/ConcurrentMap;

    .line 6200
    new-instance p5, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$ResubmissionStrategy$Enabled$StorageKey;

    invoke-direct {p5, p2}, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$ResubmissionStrategy$Enabled$StorageKey;-><init>(Ljava/lang/ClassLoader;)V

    invoke-interface {p4, p5, p3}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Set;

    if-eqz p2, :cond_0

    move-object p3, p2

    .line 6205
    :cond_0
    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method
