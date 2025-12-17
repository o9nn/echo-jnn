.class public Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$ResubmissionStrategy$Enabled;
.super Ljava/lang/Object;
.source "AgentBuilder.java"

# interfaces
.implements Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$ResubmissionStrategy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$ResubmissionStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Enabled"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$ResubmissionStrategy$Enabled$StorageKey;,
        Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$ResubmissionStrategy$Enabled$LookupKey;,
        Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$ResubmissionStrategy$Enabled$ResubmissionInstallationListener;,
        Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$ResubmissionStrategy$Enabled$ResubmissionListener;
    }
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
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

.field private final resubmissionScheduler:Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$ResubmissionScheduler;


# direct methods
.method protected constructor <init>(Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$ResubmissionScheduler;Lnet/bytebuddy/matcher/ElementMatcher;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$ResubmissionScheduler;",
            "Lnet/bytebuddy/matcher/ElementMatcher<",
            "-",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .line 6132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$ResubmissionStrategy$Enabled;->resubmissionScheduler:Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$ResubmissionScheduler;

    iput-object p2, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$ResubmissionStrategy$Enabled;->matcher:Lnet/bytebuddy/matcher/ElementMatcher;

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/instrument/Instrumentation;Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy;Lnet/bytebuddy/agent/builder/AgentBuilder$Listener;Lnet/bytebuddy/agent/builder/AgentBuilder$InstallationListener;Lnet/bytebuddy/agent/builder/AgentBuilder$CircularityLock;Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher;Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy;Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$BatchAllocator;Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$Listener;)Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$ResubmissionStrategy$Installation;
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v5, p3

    move-object/from16 v12, p4

    .line 6149
    invoke-virtual/range {p7 .. p7}, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$ResubmissionStrategy$Enabled;->resubmissionScheduler:Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$ResubmissionScheduler;

    invoke-interface {v1}, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$ResubmissionScheduler;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6150
    new-instance v11, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v11}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 6151
    new-instance v13, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$ResubmissionStrategy$Installation;

    new-instance v14, Lnet/bytebuddy/agent/builder/AgentBuilder$Listener$Compound;

    const/4 v1, 0x2

    new-array v2, v1, [Lnet/bytebuddy/agent/builder/AgentBuilder$Listener;

    new-instance v3, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$ResubmissionStrategy$Enabled$ResubmissionListener;

    iget-object v4, v0, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$ResubmissionStrategy$Enabled;->matcher:Lnet/bytebuddy/matcher/ElementMatcher;

    invoke-direct {v3, v4, v11}, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$ResubmissionStrategy$Enabled$ResubmissionListener;-><init>(Lnet/bytebuddy/matcher/ElementMatcher;Ljava/util/concurrent/ConcurrentMap;)V

    const/4 v15, 0x0

    aput-object v3, v2, v15

    const/16 v16, 0x1

    aput-object v5, v2, v16

    invoke-direct {v14, v2}, Lnet/bytebuddy/agent/builder/AgentBuilder$Listener$Compound;-><init>([Lnet/bytebuddy/agent/builder/AgentBuilder$Listener;)V

    new-instance v10, Lnet/bytebuddy/agent/builder/AgentBuilder$InstallationListener$Compound;

    new-array v9, v1, [Lnet/bytebuddy/agent/builder/AgentBuilder$InstallationListener;

    new-instance v17, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$ResubmissionStrategy$Enabled$ResubmissionInstallationListener;

    iget-object v2, v0, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$ResubmissionStrategy$Enabled;->resubmissionScheduler:Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$ResubmissionScheduler;

    move-object/from16 v1, v17

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object v0, v9

    move-object/from16 v9, p8

    move-object/from16 v18, v10

    move-object/from16 v10, p9

    invoke-direct/range {v1 .. v11}, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$ResubmissionStrategy$Enabled$ResubmissionInstallationListener;-><init>(Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$ResubmissionScheduler;Ljava/lang/instrument/Instrumentation;Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy;Lnet/bytebuddy/agent/builder/AgentBuilder$Listener;Lnet/bytebuddy/agent/builder/AgentBuilder$CircularityLock;Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher;Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy;Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$BatchAllocator;Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$Listener;Ljava/util/concurrent/ConcurrentMap;)V

    aput-object v17, v0, v15

    aput-object v12, v0, v16

    move-object/from16 v1, v18

    invoke-direct {v1, v0}, Lnet/bytebuddy/agent/builder/AgentBuilder$InstallationListener$Compound;-><init>([Lnet/bytebuddy/agent/builder/AgentBuilder$InstallationListener;)V

    invoke-direct {v13, v14, v1}, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$ResubmissionStrategy$Installation;-><init>(Lnet/bytebuddy/agent/builder/AgentBuilder$Listener;Lnet/bytebuddy/agent/builder/AgentBuilder$InstallationListener;)V

    return-object v13

    .line 6163
    :cond_0
    new-instance v0, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$ResubmissionStrategy$Installation;

    invoke-direct {v0, v5, v12}, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$ResubmissionStrategy$Installation;-><init>(Lnet/bytebuddy/agent/builder/AgentBuilder$Listener;Lnet/bytebuddy/agent/builder/AgentBuilder$InstallationListener;)V

    return-object v0
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
    iget-object v2, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$ResubmissionStrategy$Enabled;->resubmissionScheduler:Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$ResubmissionScheduler;

    check-cast p1, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$ResubmissionStrategy$Enabled;

    iget-object v3, p1, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$ResubmissionStrategy$Enabled;->resubmissionScheduler:Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$ResubmissionScheduler;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    :cond_3
    iget-object v2, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$ResubmissionStrategy$Enabled;->matcher:Lnet/bytebuddy/matcher/ElementMatcher;

    iget-object p1, p1, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$ResubmissionStrategy$Enabled;->matcher:Lnet/bytebuddy/matcher/ElementMatcher;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v1

    :cond_4
    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$ResubmissionStrategy$Enabled;->resubmissionScheduler:Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$ResubmissionScheduler;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$ResubmissionStrategy$Enabled;->matcher:Lnet/bytebuddy/matcher/ElementMatcher;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method
