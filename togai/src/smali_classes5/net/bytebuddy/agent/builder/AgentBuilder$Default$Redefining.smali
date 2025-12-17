.class public Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Redefining;
.super Lnet/bytebuddy/agent/builder/AgentBuilder$Default;
.source "AgentBuilder.java"

# interfaces
.implements Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionListenable$WithoutBatchStrategy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/agent/builder/AgentBuilder$Default;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "Redefining"
.end annotation


# direct methods
.method protected constructor <init>(Lnet/bytebuddy/ByteBuddy;Lnet/bytebuddy/agent/builder/AgentBuilder$Listener;Lnet/bytebuddy/agent/builder/AgentBuilder$CircularityLock;Lnet/bytebuddy/agent/builder/AgentBuilder$PoolStrategy;Lnet/bytebuddy/agent/builder/AgentBuilder$TypeStrategy;Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy;Lnet/bytebuddy/agent/builder/AgentBuilder$Default$NativeMethodStrategy;Lnet/bytebuddy/agent/builder/AgentBuilder$InitializationStrategy;Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy;Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$DiscoveryStrategy;Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$BatchAllocator;Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$Listener;Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$ResubmissionStrategy;Lnet/bytebuddy/agent/builder/AgentBuilder$Default$BootstrapInjectionStrategy;Lnet/bytebuddy/agent/builder/AgentBuilder$LambdaInstrumentationStrategy;Lnet/bytebuddy/agent/builder/AgentBuilder$DescriptionStrategy;Lnet/bytebuddy/agent/builder/AgentBuilder$FallbackStrategy;Lnet/bytebuddy/agent/builder/AgentBuilder$ClassFileBufferStrategy;Lnet/bytebuddy/agent/builder/AgentBuilder$InstallationListener;Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher;Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation;)V
    .locals 0

    .line 11371
    invoke-direct/range {p0 .. p21}, Lnet/bytebuddy/agent/builder/AgentBuilder$Default;-><init>(Lnet/bytebuddy/ByteBuddy;Lnet/bytebuddy/agent/builder/AgentBuilder$Listener;Lnet/bytebuddy/agent/builder/AgentBuilder$CircularityLock;Lnet/bytebuddy/agent/builder/AgentBuilder$PoolStrategy;Lnet/bytebuddy/agent/builder/AgentBuilder$TypeStrategy;Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy;Lnet/bytebuddy/agent/builder/AgentBuilder$Default$NativeMethodStrategy;Lnet/bytebuddy/agent/builder/AgentBuilder$InitializationStrategy;Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy;Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$DiscoveryStrategy;Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$BatchAllocator;Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$Listener;Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$ResubmissionStrategy;Lnet/bytebuddy/agent/builder/AgentBuilder$Default$BootstrapInjectionStrategy;Lnet/bytebuddy/agent/builder/AgentBuilder$LambdaInstrumentationStrategy;Lnet/bytebuddy/agent/builder/AgentBuilder$DescriptionStrategy;Lnet/bytebuddy/agent/builder/AgentBuilder$FallbackStrategy;Lnet/bytebuddy/agent/builder/AgentBuilder$ClassFileBufferStrategy;Lnet/bytebuddy/agent/builder/AgentBuilder$InstallationListener;Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher;Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic makeRaw()Ljava/lang/instrument/ClassFileTransformer;
    .locals 1

    .line 11322
    invoke-super {p0}, Lnet/bytebuddy/agent/builder/AgentBuilder$Default;->makeRaw()Lnet/bytebuddy/agent/builder/ResettableClassFileTransformer;

    move-result-object v0

    return-object v0
.end method

.method public varargs redefineOnly([Ljava/lang/Class;)Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionListenable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "*>;)",
            "Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionListenable;"
        }
    .end annotation

    .line 11428
    new-instance v0, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$DiscoveryStrategy$Explicit;

    invoke-direct {v0, p1}, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$DiscoveryStrategy$Explicit;-><init>([Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Redefining;->with(Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$DiscoveryStrategy;)Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionListenable;

    move-result-object p1

    return-object p1
.end method

.method public with(Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$BatchAllocator;)Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionListenable$WithImplicitDiscoveryStrategy;
    .locals 24

    move-object/from16 v0, p0

    .line 11398
    iget-object v1, v0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Redefining;->redefinitionStrategy:Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy;

    invoke-virtual {v1}, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 11401
    new-instance v1, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Redefining;

    move-object v2, v1

    iget-object v3, v0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Redefining;->byteBuddy:Lnet/bytebuddy/ByteBuddy;

    iget-object v4, v0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Redefining;->listener:Lnet/bytebuddy/agent/builder/AgentBuilder$Listener;

    iget-object v5, v0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Redefining;->circularityLock:Lnet/bytebuddy/agent/builder/AgentBuilder$CircularityLock;

    iget-object v6, v0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Redefining;->poolStrategy:Lnet/bytebuddy/agent/builder/AgentBuilder$PoolStrategy;

    iget-object v7, v0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Redefining;->typeStrategy:Lnet/bytebuddy/agent/builder/AgentBuilder$TypeStrategy;

    iget-object v8, v0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Redefining;->locationStrategy:Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy;

    iget-object v9, v0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Redefining;->nativeMethodStrategy:Lnet/bytebuddy/agent/builder/AgentBuilder$Default$NativeMethodStrategy;

    iget-object v10, v0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Redefining;->initializationStrategy:Lnet/bytebuddy/agent/builder/AgentBuilder$InitializationStrategy;

    iget-object v11, v0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Redefining;->redefinitionStrategy:Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy;

    iget-object v12, v0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Redefining;->redefinitionDiscoveryStrategy:Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$DiscoveryStrategy;

    iget-object v14, v0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Redefining;->redefinitionListener:Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$Listener;

    iget-object v15, v0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Redefining;->redefinitionResubmissionStrategy:Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$ResubmissionStrategy;

    iget-object v13, v0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Redefining;->bootstrapInjectionStrategy:Lnet/bytebuddy/agent/builder/AgentBuilder$Default$BootstrapInjectionStrategy;

    move-object/from16 v16, v13

    iget-object v13, v0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Redefining;->lambdaInstrumentationStrategy:Lnet/bytebuddy/agent/builder/AgentBuilder$LambdaInstrumentationStrategy;

    move-object/from16 v17, v13

    iget-object v13, v0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Redefining;->descriptionStrategy:Lnet/bytebuddy/agent/builder/AgentBuilder$DescriptionStrategy;

    move-object/from16 v18, v13

    iget-object v13, v0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Redefining;->fallbackStrategy:Lnet/bytebuddy/agent/builder/AgentBuilder$FallbackStrategy;

    move-object/from16 v19, v13

    iget-object v13, v0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Redefining;->classFileBufferStrategy:Lnet/bytebuddy/agent/builder/AgentBuilder$ClassFileBufferStrategy;

    move-object/from16 v20, v13

    iget-object v13, v0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Redefining;->installationListener:Lnet/bytebuddy/agent/builder/AgentBuilder$InstallationListener;

    move-object/from16 v21, v13

    iget-object v13, v0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Redefining;->ignoredTypeMatcher:Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher;

    move-object/from16 v22, v13

    iget-object v13, v0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Redefining;->transformation:Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation;

    move-object/from16 v23, v13

    move-object/from16 v13, p1

    invoke-direct/range {v2 .. v23}, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Redefining;-><init>(Lnet/bytebuddy/ByteBuddy;Lnet/bytebuddy/agent/builder/AgentBuilder$Listener;Lnet/bytebuddy/agent/builder/AgentBuilder$CircularityLock;Lnet/bytebuddy/agent/builder/AgentBuilder$PoolStrategy;Lnet/bytebuddy/agent/builder/AgentBuilder$TypeStrategy;Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy;Lnet/bytebuddy/agent/builder/AgentBuilder$Default$NativeMethodStrategy;Lnet/bytebuddy/agent/builder/AgentBuilder$InitializationStrategy;Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy;Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$DiscoveryStrategy;Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$BatchAllocator;Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$Listener;Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$ResubmissionStrategy;Lnet/bytebuddy/agent/builder/AgentBuilder$Default$BootstrapInjectionStrategy;Lnet/bytebuddy/agent/builder/AgentBuilder$LambdaInstrumentationStrategy;Lnet/bytebuddy/agent/builder/AgentBuilder$DescriptionStrategy;Lnet/bytebuddy/agent/builder/AgentBuilder$FallbackStrategy;Lnet/bytebuddy/agent/builder/AgentBuilder$ClassFileBufferStrategy;Lnet/bytebuddy/agent/builder/AgentBuilder$InstallationListener;Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher;Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation;)V

    return-object v1

    .line 11399
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Cannot set redefinition batch allocator when redefinition is disabled"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public with(Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$DiscoveryStrategy;)Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionListenable;
    .locals 24

    move-object/from16 v0, p0

    .line 11435
    iget-object v1, v0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Redefining;->redefinitionStrategy:Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy;

    invoke-virtual {v1}, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 11438
    new-instance v1, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Redefining;

    move-object v2, v1

    iget-object v3, v0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Redefining;->byteBuddy:Lnet/bytebuddy/ByteBuddy;

    iget-object v4, v0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Redefining;->listener:Lnet/bytebuddy/agent/builder/AgentBuilder$Listener;

    iget-object v5, v0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Redefining;->circularityLock:Lnet/bytebuddy/agent/builder/AgentBuilder$CircularityLock;

    iget-object v6, v0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Redefining;->poolStrategy:Lnet/bytebuddy/agent/builder/AgentBuilder$PoolStrategy;

    iget-object v7, v0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Redefining;->typeStrategy:Lnet/bytebuddy/agent/builder/AgentBuilder$TypeStrategy;

    iget-object v8, v0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Redefining;->locationStrategy:Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy;

    iget-object v9, v0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Redefining;->nativeMethodStrategy:Lnet/bytebuddy/agent/builder/AgentBuilder$Default$NativeMethodStrategy;

    iget-object v10, v0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Redefining;->initializationStrategy:Lnet/bytebuddy/agent/builder/AgentBuilder$InitializationStrategy;

    iget-object v11, v0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Redefining;->redefinitionStrategy:Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy;

    iget-object v13, v0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Redefining;->redefinitionBatchAllocator:Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$BatchAllocator;

    iget-object v14, v0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Redefining;->redefinitionListener:Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$Listener;

    iget-object v15, v0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Redefining;->redefinitionResubmissionStrategy:Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$ResubmissionStrategy;

    iget-object v12, v0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Redefining;->bootstrapInjectionStrategy:Lnet/bytebuddy/agent/builder/AgentBuilder$Default$BootstrapInjectionStrategy;

    move-object/from16 v16, v12

    iget-object v12, v0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Redefining;->lambdaInstrumentationStrategy:Lnet/bytebuddy/agent/builder/AgentBuilder$LambdaInstrumentationStrategy;

    move-object/from16 v17, v12

    iget-object v12, v0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Redefining;->descriptionStrategy:Lnet/bytebuddy/agent/builder/AgentBuilder$DescriptionStrategy;

    move-object/from16 v18, v12

    iget-object v12, v0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Redefining;->fallbackStrategy:Lnet/bytebuddy/agent/builder/AgentBuilder$FallbackStrategy;

    move-object/from16 v19, v12

    iget-object v12, v0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Redefining;->classFileBufferStrategy:Lnet/bytebuddy/agent/builder/AgentBuilder$ClassFileBufferStrategy;

    move-object/from16 v20, v12

    iget-object v12, v0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Redefining;->installationListener:Lnet/bytebuddy/agent/builder/AgentBuilder$InstallationListener;

    move-object/from16 v21, v12

    iget-object v12, v0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Redefining;->ignoredTypeMatcher:Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher;

    move-object/from16 v22, v12

    iget-object v12, v0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Redefining;->transformation:Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation;

    move-object/from16 v23, v12

    move-object/from16 v12, p1

    invoke-direct/range {v2 .. v23}, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Redefining;-><init>(Lnet/bytebuddy/ByteBuddy;Lnet/bytebuddy/agent/builder/AgentBuilder$Listener;Lnet/bytebuddy/agent/builder/AgentBuilder$CircularityLock;Lnet/bytebuddy/agent/builder/AgentBuilder$PoolStrategy;Lnet/bytebuddy/agent/builder/AgentBuilder$TypeStrategy;Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy;Lnet/bytebuddy/agent/builder/AgentBuilder$Default$NativeMethodStrategy;Lnet/bytebuddy/agent/builder/AgentBuilder$InitializationStrategy;Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy;Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$DiscoveryStrategy;Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$BatchAllocator;Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$Listener;Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$ResubmissionStrategy;Lnet/bytebuddy/agent/builder/AgentBuilder$Default$BootstrapInjectionStrategy;Lnet/bytebuddy/agent/builder/AgentBuilder$LambdaInstrumentationStrategy;Lnet/bytebuddy/agent/builder/AgentBuilder$DescriptionStrategy;Lnet/bytebuddy/agent/builder/AgentBuilder$FallbackStrategy;Lnet/bytebuddy/agent/builder/AgentBuilder$ClassFileBufferStrategy;Lnet/bytebuddy/agent/builder/AgentBuilder$InstallationListener;Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher;Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation;)V

    return-object v1

    .line 11436
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Cannot set redefinition discovery strategy when redefinition is disabled"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public with(Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$Listener;)Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionListenable;
    .locals 26

    move-object/from16 v0, p0

    .line 11465
    iget-object v1, v0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Redefining;->redefinitionStrategy:Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy;

    invoke-virtual {v1}, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 11468
    new-instance v1, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Redefining;

    move-object v2, v1

    iget-object v3, v0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Redefining;->byteBuddy:Lnet/bytebuddy/ByteBuddy;

    iget-object v4, v0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Redefining;->listener:Lnet/bytebuddy/agent/builder/AgentBuilder$Listener;

    iget-object v5, v0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Redefining;->circularityLock:Lnet/bytebuddy/agent/builder/AgentBuilder$CircularityLock;

    iget-object v6, v0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Redefining;->poolStrategy:Lnet/bytebuddy/agent/builder/AgentBuilder$PoolStrategy;

    iget-object v7, v0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Redefining;->typeStrategy:Lnet/bytebuddy/agent/builder/AgentBuilder$TypeStrategy;

    iget-object v8, v0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Redefining;->locationStrategy:Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy;

    iget-object v9, v0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Redefining;->nativeMethodStrategy:Lnet/bytebuddy/agent/builder/AgentBuilder$Default$NativeMethodStrategy;

    iget-object v10, v0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Redefining;->initializationStrategy:Lnet/bytebuddy/agent/builder/AgentBuilder$InitializationStrategy;

    iget-object v11, v0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Redefining;->redefinitionStrategy:Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy;

    iget-object v12, v0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Redefining;->redefinitionDiscoveryStrategy:Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$DiscoveryStrategy;

    iget-object v13, v0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Redefining;->redefinitionBatchAllocator:Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$BatchAllocator;

    new-instance v15, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$Listener$Compound;

    move-object v14, v15

    move-object/from16 v24, v1

    const/4 v1, 0x2

    new-array v1, v1, [Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$Listener;

    const/16 v16, 0x0

    move-object/from16 v25, v2

    iget-object v2, v0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Redefining;->redefinitionListener:Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$Listener;

    aput-object v2, v1, v16

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-direct {v15, v1}, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$Listener$Compound;-><init>([Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$Listener;)V

    iget-object v15, v0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Redefining;->redefinitionResubmissionStrategy:Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$ResubmissionStrategy;

    iget-object v1, v0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Redefining;->bootstrapInjectionStrategy:Lnet/bytebuddy/agent/builder/AgentBuilder$Default$BootstrapInjectionStrategy;

    move-object/from16 v16, v1

    iget-object v1, v0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Redefining;->lambdaInstrumentationStrategy:Lnet/bytebuddy/agent/builder/AgentBuilder$LambdaInstrumentationStrategy;

    move-object/from16 v17, v1

    iget-object v1, v0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Redefining;->descriptionStrategy:Lnet/bytebuddy/agent/builder/AgentBuilder$DescriptionStrategy;

    move-object/from16 v18, v1

    iget-object v1, v0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Redefining;->fallbackStrategy:Lnet/bytebuddy/agent/builder/AgentBuilder$FallbackStrategy;

    move-object/from16 v19, v1

    iget-object v1, v0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Redefining;->classFileBufferStrategy:Lnet/bytebuddy/agent/builder/AgentBuilder$ClassFileBufferStrategy;

    move-object/from16 v20, v1

    iget-object v1, v0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Redefining;->installationListener:Lnet/bytebuddy/agent/builder/AgentBuilder$InstallationListener;

    move-object/from16 v21, v1

    iget-object v1, v0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Redefining;->ignoredTypeMatcher:Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher;

    move-object/from16 v22, v1

    iget-object v1, v0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Redefining;->transformation:Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation;

    move-object/from16 v23, v1

    move-object/from16 v2, v25

    invoke-direct/range {v2 .. v23}, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Redefining;-><init>(Lnet/bytebuddy/ByteBuddy;Lnet/bytebuddy/agent/builder/AgentBuilder$Listener;Lnet/bytebuddy/agent/builder/AgentBuilder$CircularityLock;Lnet/bytebuddy/agent/builder/AgentBuilder$PoolStrategy;Lnet/bytebuddy/agent/builder/AgentBuilder$TypeStrategy;Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy;Lnet/bytebuddy/agent/builder/AgentBuilder$Default$NativeMethodStrategy;Lnet/bytebuddy/agent/builder/AgentBuilder$InitializationStrategy;Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy;Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$DiscoveryStrategy;Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$BatchAllocator;Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$Listener;Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$ResubmissionStrategy;Lnet/bytebuddy/agent/builder/AgentBuilder$Default$BootstrapInjectionStrategy;Lnet/bytebuddy/agent/builder/AgentBuilder$LambdaInstrumentationStrategy;Lnet/bytebuddy/agent/builder/AgentBuilder$DescriptionStrategy;Lnet/bytebuddy/agent/builder/AgentBuilder$FallbackStrategy;Lnet/bytebuddy/agent/builder/AgentBuilder$ClassFileBufferStrategy;Lnet/bytebuddy/agent/builder/AgentBuilder$InstallationListener;Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher;Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation;)V

    return-object v24

    .line 11466
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Cannot set redefinition listener when redefinition is disabled"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public withResubmission(Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$ResubmissionScheduler;)Lnet/bytebuddy/agent/builder/AgentBuilder;
    .locals 1

    .line 11495
    invoke-static {}, Lnet/bytebuddy/matcher/ElementMatchers;->any()Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Redefining;->withResubmission(Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$ResubmissionScheduler;Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/agent/builder/AgentBuilder;

    move-result-object p1

    return-object p1
.end method

.method public withResubmission(Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$ResubmissionScheduler;Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/agent/builder/AgentBuilder;
    .locals 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$ResubmissionScheduler;",
            "Lnet/bytebuddy/matcher/ElementMatcher<",
            "-",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lnet/bytebuddy/agent/builder/AgentBuilder;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 11502
    iget-object v1, v0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Redefining;->redefinitionStrategy:Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy;

    invoke-virtual {v1}, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 11505
    new-instance v1, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Redefining;

    move-object v2, v1

    iget-object v3, v0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Redefining;->byteBuddy:Lnet/bytebuddy/ByteBuddy;

    iget-object v4, v0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Redefining;->listener:Lnet/bytebuddy/agent/builder/AgentBuilder$Listener;

    iget-object v5, v0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Redefining;->circularityLock:Lnet/bytebuddy/agent/builder/AgentBuilder$CircularityLock;

    iget-object v6, v0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Redefining;->poolStrategy:Lnet/bytebuddy/agent/builder/AgentBuilder$PoolStrategy;

    iget-object v7, v0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Redefining;->typeStrategy:Lnet/bytebuddy/agent/builder/AgentBuilder$TypeStrategy;

    iget-object v8, v0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Redefining;->locationStrategy:Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy;

    iget-object v9, v0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Redefining;->nativeMethodStrategy:Lnet/bytebuddy/agent/builder/AgentBuilder$Default$NativeMethodStrategy;

    iget-object v10, v0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Redefining;->initializationStrategy:Lnet/bytebuddy/agent/builder/AgentBuilder$InitializationStrategy;

    iget-object v11, v0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Redefining;->redefinitionStrategy:Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy;

    iget-object v12, v0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Redefining;->redefinitionDiscoveryStrategy:Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$DiscoveryStrategy;

    iget-object v13, v0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Redefining;->redefinitionBatchAllocator:Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$BatchAllocator;

    iget-object v14, v0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Redefining;->redefinitionListener:Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$Listener;

    new-instance v15, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$ResubmissionStrategy$Enabled;

    move-object/from16 v16, v15

    move-object/from16 v24, v1

    move-object/from16 v25, v2

    move-object/from16 v26, v3

    move-object/from16 v3, v16

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v3, v1, v2}, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$ResubmissionStrategy$Enabled;-><init>(Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$ResubmissionScheduler;Lnet/bytebuddy/matcher/ElementMatcher;)V

    iget-object v1, v0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Redefining;->bootstrapInjectionStrategy:Lnet/bytebuddy/agent/builder/AgentBuilder$Default$BootstrapInjectionStrategy;

    move-object/from16 v16, v1

    iget-object v1, v0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Redefining;->lambdaInstrumentationStrategy:Lnet/bytebuddy/agent/builder/AgentBuilder$LambdaInstrumentationStrategy;

    move-object/from16 v17, v1

    iget-object v1, v0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Redefining;->descriptionStrategy:Lnet/bytebuddy/agent/builder/AgentBuilder$DescriptionStrategy;

    move-object/from16 v18, v1

    iget-object v1, v0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Redefining;->fallbackStrategy:Lnet/bytebuddy/agent/builder/AgentBuilder$FallbackStrategy;

    move-object/from16 v19, v1

    iget-object v1, v0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Redefining;->classFileBufferStrategy:Lnet/bytebuddy/agent/builder/AgentBuilder$ClassFileBufferStrategy;

    move-object/from16 v20, v1

    iget-object v1, v0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Redefining;->installationListener:Lnet/bytebuddy/agent/builder/AgentBuilder$InstallationListener;

    move-object/from16 v21, v1

    iget-object v1, v0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Redefining;->ignoredTypeMatcher:Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher;

    move-object/from16 v22, v1

    iget-object v1, v0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Redefining;->transformation:Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation;

    move-object/from16 v23, v1

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-direct/range {v2 .. v23}, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Redefining;-><init>(Lnet/bytebuddy/ByteBuddy;Lnet/bytebuddy/agent/builder/AgentBuilder$Listener;Lnet/bytebuddy/agent/builder/AgentBuilder$CircularityLock;Lnet/bytebuddy/agent/builder/AgentBuilder$PoolStrategy;Lnet/bytebuddy/agent/builder/AgentBuilder$TypeStrategy;Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy;Lnet/bytebuddy/agent/builder/AgentBuilder$Default$NativeMethodStrategy;Lnet/bytebuddy/agent/builder/AgentBuilder$InitializationStrategy;Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy;Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$DiscoveryStrategy;Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$BatchAllocator;Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$Listener;Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$ResubmissionStrategy;Lnet/bytebuddy/agent/builder/AgentBuilder$Default$BootstrapInjectionStrategy;Lnet/bytebuddy/agent/builder/AgentBuilder$LambdaInstrumentationStrategy;Lnet/bytebuddy/agent/builder/AgentBuilder$DescriptionStrategy;Lnet/bytebuddy/agent/builder/AgentBuilder$FallbackStrategy;Lnet/bytebuddy/agent/builder/AgentBuilder$ClassFileBufferStrategy;Lnet/bytebuddy/agent/builder/AgentBuilder$InstallationListener;Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher;Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation;)V

    return-object v24

    .line 11503
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Cannot enable redefinition resubmission when redefinition is disabled"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
