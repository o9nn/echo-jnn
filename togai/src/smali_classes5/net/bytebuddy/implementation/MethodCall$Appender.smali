.class public Lnet/bytebuddy/implementation/MethodCall$Appender;
.super Ljava/lang/Object;
.source "MethodCall.java"

# interfaces
.implements Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/MethodCall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "Appender"
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
    includeSyntheticFields = true
.end annotation


# instance fields
.field private final argumentProviders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/bytebuddy/implementation/MethodCall$ArgumentLoader$ArgumentProvider;",
            ">;"
        }
    .end annotation
.end field

.field private final implementationTarget:Lnet/bytebuddy/implementation/Implementation$Target;

.field private final methodInvoker:Lnet/bytebuddy/implementation/MethodCall$MethodInvoker;

.field private final methodLocator:Lnet/bytebuddy/implementation/MethodCall$MethodLocator;

.field private final targetHandler:Lnet/bytebuddy/implementation/MethodCall$TargetHandler;

.field private final terminationHandler:Lnet/bytebuddy/implementation/MethodCall$TerminationHandler;

.field final synthetic this$0:Lnet/bytebuddy/implementation/MethodCall;


# direct methods
.method protected constructor <init>(Lnet/bytebuddy/implementation/MethodCall;Lnet/bytebuddy/implementation/Implementation$Target;Lnet/bytebuddy/implementation/MethodCall$TerminationHandler;)V
    .locals 3

    iput-object p1, p0, Lnet/bytebuddy/implementation/MethodCall$Appender;->this$0:Lnet/bytebuddy/implementation/MethodCall;

    .line 3485
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lnet/bytebuddy/implementation/MethodCall$Appender;->implementationTarget:Lnet/bytebuddy/implementation/Implementation$Target;

    .line 3487
    iget-object v0, p1, Lnet/bytebuddy/implementation/MethodCall;->methodLocator:Lnet/bytebuddy/implementation/MethodCall$MethodLocator$Factory;

    invoke-interface {p2}, Lnet/bytebuddy/implementation/Implementation$Target;->getInstrumentedType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v1

    invoke-interface {v0, v1}, Lnet/bytebuddy/implementation/MethodCall$MethodLocator$Factory;->make(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/implementation/MethodCall$MethodLocator;

    move-result-object v0

    iput-object v0, p0, Lnet/bytebuddy/implementation/MethodCall$Appender;->methodLocator:Lnet/bytebuddy/implementation/MethodCall$MethodLocator;

    .line 3488
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Lnet/bytebuddy/implementation/MethodCall;->argumentLoaders:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lnet/bytebuddy/implementation/MethodCall$Appender;->argumentProviders:Ljava/util/List;

    .line 3489
    iget-object v0, p1, Lnet/bytebuddy/implementation/MethodCall;->argumentLoaders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/bytebuddy/implementation/MethodCall$ArgumentLoader$Factory;

    iget-object v2, p0, Lnet/bytebuddy/implementation/MethodCall$Appender;->argumentProviders:Ljava/util/List;

    .line 3490
    invoke-interface {v1, p2}, Lnet/bytebuddy/implementation/MethodCall$ArgumentLoader$Factory;->make(Lnet/bytebuddy/implementation/Implementation$Target;)Lnet/bytebuddy/implementation/MethodCall$ArgumentLoader$ArgumentProvider;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3492
    :cond_0
    iget-object v0, p1, Lnet/bytebuddy/implementation/MethodCall;->methodInvoker:Lnet/bytebuddy/implementation/MethodCall$MethodInvoker$Factory;

    invoke-interface {p2}, Lnet/bytebuddy/implementation/Implementation$Target;->getInstrumentedType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v1

    invoke-interface {v0, v1}, Lnet/bytebuddy/implementation/MethodCall$MethodInvoker$Factory;->make(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/implementation/MethodCall$MethodInvoker;

    move-result-object v0

    iput-object v0, p0, Lnet/bytebuddy/implementation/MethodCall$Appender;->methodInvoker:Lnet/bytebuddy/implementation/MethodCall$MethodInvoker;

    .line 3493
    iget-object p1, p1, Lnet/bytebuddy/implementation/MethodCall;->targetHandler:Lnet/bytebuddy/implementation/MethodCall$TargetHandler$Factory;

    invoke-interface {p1, p2}, Lnet/bytebuddy/implementation/MethodCall$TargetHandler$Factory;->make(Lnet/bytebuddy/implementation/Implementation$Target;)Lnet/bytebuddy/implementation/MethodCall$TargetHandler;

    move-result-object p1

    iput-object p1, p0, Lnet/bytebuddy/implementation/MethodCall$Appender;->targetHandler:Lnet/bytebuddy/implementation/MethodCall$TargetHandler;

    iput-object p3, p0, Lnet/bytebuddy/implementation/MethodCall$Appender;->terminationHandler:Lnet/bytebuddy/implementation/MethodCall$TerminationHandler;

    return-void
.end method

.method static synthetic access$000(Lnet/bytebuddy/implementation/MethodCall$Appender;)Lnet/bytebuddy/implementation/MethodCall$TargetHandler;
    .locals 0

    .line 3447
    iget-object p0, p0, Lnet/bytebuddy/implementation/MethodCall$Appender;->targetHandler:Lnet/bytebuddy/implementation/MethodCall$TargetHandler;

    return-object p0
.end method


# virtual methods
.method public apply(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;Lnet/bytebuddy/description/method/MethodDescription;)Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender$Size;
    .locals 6

    iget-object v0, p0, Lnet/bytebuddy/implementation/MethodCall$Appender;->targetHandler:Lnet/bytebuddy/implementation/MethodCall$TargetHandler;

    .line 3501
    invoke-interface {v0, p3}, Lnet/bytebuddy/implementation/MethodCall$TargetHandler;->resolve(Lnet/bytebuddy/description/method/MethodDescription;)Lnet/bytebuddy/implementation/MethodCall$TargetHandler$Resolved;

    move-result-object v0

    .line 3502
    new-instance v1, Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender$Size;

    new-instance v2, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Compound;

    const/4 v3, 0x2

    new-array v3, v3, [Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    iget-object v4, p0, Lnet/bytebuddy/implementation/MethodCall$Appender;->terminationHandler:Lnet/bytebuddy/implementation/MethodCall$TerminationHandler;

    invoke-interface {v4}, Lnet/bytebuddy/implementation/MethodCall$TerminationHandler;->prepare()Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 3503
    invoke-virtual {p0, p3, v0}, Lnet/bytebuddy/implementation/MethodCall$Appender;->toInvokedMethod(Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/implementation/MethodCall$TargetHandler$Resolved;)Lnet/bytebuddy/description/method/MethodDescription;

    move-result-object v4

    .line 3502
    invoke-virtual {p0, p3, v4, v0}, Lnet/bytebuddy/implementation/MethodCall$Appender;->toStackManipulation(Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/implementation/MethodCall$TargetHandler$Resolved;)Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object v0

    const/4 v4, 0x1

    aput-object v0, v3, v4

    invoke-direct {v2, v3}, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Compound;-><init>([Lnet/bytebuddy/implementation/bytecode/StackManipulation;)V

    .line 3504
    invoke-virtual {v2, p1, p2}, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Compound;->apply(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;)Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;

    move-result-object p1

    invoke-virtual {p1}, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;->getMaximalSize()I

    move-result p1

    invoke-interface {p3}, Lnet/bytebuddy/description/method/MethodDescription;->getStackSize()I

    move-result p2

    invoke-direct {v1, p1, p2}, Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender$Size;-><init>(II)V

    return-object v1
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
    iget-object v2, p0, Lnet/bytebuddy/implementation/MethodCall$Appender;->implementationTarget:Lnet/bytebuddy/implementation/Implementation$Target;

    check-cast p1, Lnet/bytebuddy/implementation/MethodCall$Appender;

    iget-object v3, p1, Lnet/bytebuddy/implementation/MethodCall$Appender;->implementationTarget:Lnet/bytebuddy/implementation/Implementation$Target;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    :cond_3
    iget-object v2, p0, Lnet/bytebuddy/implementation/MethodCall$Appender;->methodLocator:Lnet/bytebuddy/implementation/MethodCall$MethodLocator;

    iget-object v3, p1, Lnet/bytebuddy/implementation/MethodCall$Appender;->methodLocator:Lnet/bytebuddy/implementation/MethodCall$MethodLocator;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    :cond_4
    iget-object v2, p0, Lnet/bytebuddy/implementation/MethodCall$Appender;->argumentProviders:Ljava/util/List;

    iget-object v3, p1, Lnet/bytebuddy/implementation/MethodCall$Appender;->argumentProviders:Ljava/util/List;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    return v1

    :cond_5
    iget-object v2, p0, Lnet/bytebuddy/implementation/MethodCall$Appender;->methodInvoker:Lnet/bytebuddy/implementation/MethodCall$MethodInvoker;

    iget-object v3, p1, Lnet/bytebuddy/implementation/MethodCall$Appender;->methodInvoker:Lnet/bytebuddy/implementation/MethodCall$MethodInvoker;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    :cond_6
    iget-object v2, p0, Lnet/bytebuddy/implementation/MethodCall$Appender;->targetHandler:Lnet/bytebuddy/implementation/MethodCall$TargetHandler;

    iget-object v3, p1, Lnet/bytebuddy/implementation/MethodCall$Appender;->targetHandler:Lnet/bytebuddy/implementation/MethodCall$TargetHandler;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    return v1

    :cond_7
    iget-object v2, p0, Lnet/bytebuddy/implementation/MethodCall$Appender;->terminationHandler:Lnet/bytebuddy/implementation/MethodCall$TerminationHandler;

    iget-object v3, p1, Lnet/bytebuddy/implementation/MethodCall$Appender;->terminationHandler:Lnet/bytebuddy/implementation/MethodCall$TerminationHandler;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    return v1

    :cond_8
    iget-object v2, p0, Lnet/bytebuddy/implementation/MethodCall$Appender;->this$0:Lnet/bytebuddy/implementation/MethodCall;

    iget-object p1, p1, Lnet/bytebuddy/implementation/MethodCall$Appender;->this$0:Lnet/bytebuddy/implementation/MethodCall;

    invoke-virtual {v2, p1}, Lnet/bytebuddy/implementation/MethodCall;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    return v1

    :cond_9
    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/implementation/MethodCall$Appender;->implementationTarget:Lnet/bytebuddy/implementation/Implementation$Target;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lnet/bytebuddy/implementation/MethodCall$Appender;->methodLocator:Lnet/bytebuddy/implementation/MethodCall$MethodLocator;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lnet/bytebuddy/implementation/MethodCall$Appender;->argumentProviders:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lnet/bytebuddy/implementation/MethodCall$Appender;->methodInvoker:Lnet/bytebuddy/implementation/MethodCall$MethodInvoker;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lnet/bytebuddy/implementation/MethodCall$Appender;->targetHandler:Lnet/bytebuddy/implementation/MethodCall$TargetHandler;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lnet/bytebuddy/implementation/MethodCall$Appender;->terminationHandler:Lnet/bytebuddy/implementation/MethodCall$TerminationHandler;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lnet/bytebuddy/implementation/MethodCall$Appender;->this$0:Lnet/bytebuddy/implementation/MethodCall;

    invoke-virtual {v0}, Lnet/bytebuddy/implementation/MethodCall;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method protected toInvokedMethod(Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/implementation/MethodCall$TargetHandler$Resolved;)Lnet/bytebuddy/description/method/MethodDescription;
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/implementation/MethodCall$Appender;->methodLocator:Lnet/bytebuddy/implementation/MethodCall$MethodLocator;

    .line 3515
    invoke-interface {p2}, Lnet/bytebuddy/implementation/MethodCall$TargetHandler$Resolved;->getTypeDescription()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object p2

    invoke-interface {v0, p2, p1}, Lnet/bytebuddy/implementation/MethodCall$MethodLocator;->resolve(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/method/MethodDescription;)Lnet/bytebuddy/description/method/MethodDescription;

    move-result-object p1

    return-object p1
.end method

.method protected toStackManipulation(Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/implementation/MethodCall$TargetHandler$Resolved;)Lnet/bytebuddy/implementation/bytecode/StackManipulation;
    .locals 7

    .line 3527
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lnet/bytebuddy/implementation/MethodCall$Appender;->argumentProviders:Ljava/util/List;

    .line 3528
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/bytebuddy/implementation/MethodCall$ArgumentLoader$ArgumentProvider;

    .line 3529
    invoke-interface {v2, p1, p2}, Lnet/bytebuddy/implementation/MethodCall$ArgumentLoader$ArgumentProvider;->resolve(Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/description/method/MethodDescription;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 3531
    :cond_0
    invoke-interface {p2}, Lnet/bytebuddy/description/method/MethodDescription;->getParameters()Lnet/bytebuddy/description/method/ParameterList;

    move-result-object v1

    .line 3532
    invoke-interface {v1}, Lnet/bytebuddy/description/method/ParameterList;->size()I

    move-result v2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ne v2, v3, :cond_2

    .line 3535
    invoke-interface {v1}, Lnet/bytebuddy/description/method/ParameterList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 3536
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 3537
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/bytebuddy/implementation/MethodCall$ArgumentLoader;

    .line 3538
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnet/bytebuddy/description/method/ParameterDescription;

    iget-object v5, p0, Lnet/bytebuddy/implementation/MethodCall$Appender;->this$0:Lnet/bytebuddy/implementation/MethodCall;

    iget-object v5, v5, Lnet/bytebuddy/implementation/MethodCall;->assigner:Lnet/bytebuddy/implementation/bytecode/assign/Assigner;

    iget-object v6, p0, Lnet/bytebuddy/implementation/MethodCall$Appender;->this$0:Lnet/bytebuddy/implementation/MethodCall;

    iget-object v6, v6, Lnet/bytebuddy/implementation/MethodCall;->typing:Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;

    invoke-interface {v3, v4, v5, v6}, Lnet/bytebuddy/implementation/MethodCall$ArgumentLoader;->toStackManipulation(Lnet/bytebuddy/description/method/ParameterDescription;Lnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;)Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 3540
    :cond_1
    new-instance v0, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Compound;

    const/4 v1, 0x4

    new-array v1, v1, [Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    iget-object v3, p0, Lnet/bytebuddy/implementation/MethodCall$Appender;->this$0:Lnet/bytebuddy/implementation/MethodCall;

    iget-object v3, v3, Lnet/bytebuddy/implementation/MethodCall;->assigner:Lnet/bytebuddy/implementation/bytecode/assign/Assigner;

    iget-object v4, p0, Lnet/bytebuddy/implementation/MethodCall$Appender;->this$0:Lnet/bytebuddy/implementation/MethodCall;

    iget-object v4, v4, Lnet/bytebuddy/implementation/MethodCall;->typing:Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;

    .line 3541
    invoke-interface {p3, p2, v3, v4}, Lnet/bytebuddy/implementation/MethodCall$TargetHandler$Resolved;->toStackManipulation(Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;)Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object p3

    const/4 v3, 0x0

    aput-object p3, v1, v3

    new-instance p3, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Compound;

    invoke-direct {p3, v2}, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Compound;-><init>(Ljava/util/List;)V

    const/4 v2, 0x1

    aput-object p3, v1, v2

    iget-object p3, p0, Lnet/bytebuddy/implementation/MethodCall$Appender;->methodInvoker:Lnet/bytebuddy/implementation/MethodCall$MethodInvoker;

    iget-object v2, p0, Lnet/bytebuddy/implementation/MethodCall$Appender;->implementationTarget:Lnet/bytebuddy/implementation/Implementation$Target;

    .line 3543
    invoke-interface {p3, p2, v2}, Lnet/bytebuddy/implementation/MethodCall$MethodInvoker;->toStackManipulation(Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/implementation/Implementation$Target;)Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object p3

    const/4 v2, 0x2

    aput-object p3, v1, v2

    iget-object p3, p0, Lnet/bytebuddy/implementation/MethodCall$Appender;->terminationHandler:Lnet/bytebuddy/implementation/MethodCall$TerminationHandler;

    iget-object v2, p0, Lnet/bytebuddy/implementation/MethodCall$Appender;->this$0:Lnet/bytebuddy/implementation/MethodCall;

    iget-object v2, v2, Lnet/bytebuddy/implementation/MethodCall;->assigner:Lnet/bytebuddy/implementation/bytecode/assign/Assigner;

    iget-object v3, p0, Lnet/bytebuddy/implementation/MethodCall$Appender;->this$0:Lnet/bytebuddy/implementation/MethodCall;

    iget-object v3, v3, Lnet/bytebuddy/implementation/MethodCall;->typing:Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;

    .line 3544
    invoke-interface {p3, p2, p1, v2, v3}, Lnet/bytebuddy/implementation/MethodCall$TerminationHandler;->toStackManipulation(Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;)Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object p1

    const/4 p2, 0x3

    aput-object p1, v1, p2

    invoke-direct {v0, v1}, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Compound;-><init>([Lnet/bytebuddy/implementation/bytecode/StackManipulation;)V

    return-object v0

    .line 3533
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, " does not accept "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, " arguments"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
