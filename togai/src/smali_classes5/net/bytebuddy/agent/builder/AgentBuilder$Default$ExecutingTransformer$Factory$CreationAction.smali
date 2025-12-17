.class public final enum Lnet/bytebuddy/agent/builder/AgentBuilder$Default$ExecutingTransformer$Factory$CreationAction;
.super Ljava/lang/Enum;
.source "AgentBuilder.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/agent/builder/AgentBuilder$Default$ExecutingTransformer$Factory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CreationAction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/agent/builder/AgentBuilder$Default$ExecutingTransformer$Factory$CreationAction;",
        ">;",
        "Ljava/security/PrivilegedAction<",
        "Lnet/bytebuddy/agent/builder/AgentBuilder$Default$ExecutingTransformer$Factory;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/agent/builder/AgentBuilder$Default$ExecutingTransformer$Factory$CreationAction;

.field public static final enum INSTANCE:Lnet/bytebuddy/agent/builder/AgentBuilder$Default$ExecutingTransformer$Factory$CreationAction;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 10669
    new-instance v0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$ExecutingTransformer$Factory$CreationAction;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$ExecutingTransformer$Factory$CreationAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$ExecutingTransformer$Factory$CreationAction;->INSTANCE:Lnet/bytebuddy/agent/builder/AgentBuilder$Default$ExecutingTransformer$Factory$CreationAction;

    filled-new-array {v0}, [Lnet/bytebuddy/agent/builder/AgentBuilder$Default$ExecutingTransformer$Factory$CreationAction;

    move-result-object v0

    sput-object v0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$ExecutingTransformer$Factory$CreationAction;->$VALUES:[Lnet/bytebuddy/agent/builder/AgentBuilder$Default$ExecutingTransformer$Factory$CreationAction;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 10664
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/agent/builder/AgentBuilder$Default$ExecutingTransformer$Factory$CreationAction;
    .locals 1

    const-class v0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$ExecutingTransformer$Factory$CreationAction;

    .line 10664
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$ExecutingTransformer$Factory$CreationAction;

    return-object p0
.end method

.method public static values()[Lnet/bytebuddy/agent/builder/AgentBuilder$Default$ExecutingTransformer$Factory$CreationAction;
    .locals 1

    sget-object v0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$ExecutingTransformer$Factory$CreationAction;->$VALUES:[Lnet/bytebuddy/agent/builder/AgentBuilder$Default$ExecutingTransformer$Factory$CreationAction;

    .line 10664
    invoke-virtual {v0}, [Lnet/bytebuddy/agent/builder/AgentBuilder$Default$ExecutingTransformer$Factory$CreationAction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/agent/builder/AgentBuilder$Default$ExecutingTransformer$Factory$CreationAction;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1

    .line 10664
    invoke-virtual {p0}, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$ExecutingTransformer$Factory$CreationAction;->run()Lnet/bytebuddy/agent/builder/AgentBuilder$Default$ExecutingTransformer$Factory;

    move-result-object v0

    return-object v0
.end method

.method public run()Lnet/bytebuddy/agent/builder/AgentBuilder$Default$ExecutingTransformer$Factory;
    .locals 13

    const-string v0, "transform"

    .line 10677
    :try_start_0
    new-instance v1, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$ExecutingTransformer$Factory$ForJava9CapableVm;

    new-instance v2, Lnet/bytebuddy/ByteBuddy;

    invoke-direct {v2}, Lnet/bytebuddy/ByteBuddy;-><init>()V

    sget-object v3, Lnet/bytebuddy/dynamic/scaffold/TypeValidation;->DISABLED:Lnet/bytebuddy/dynamic/scaffold/TypeValidation;

    .line 10678
    invoke-virtual {v2, v3}, Lnet/bytebuddy/ByteBuddy;->with(Lnet/bytebuddy/dynamic/scaffold/TypeValidation;)Lnet/bytebuddy/ByteBuddy;

    move-result-object v2

    const-class v3, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$ExecutingTransformer;

    .line 10679
    invoke-virtual {v2, v3}, Lnet/bytebuddy/ByteBuddy;->subclass(Ljava/lang/Class;)Lnet/bytebuddy/dynamic/DynamicType$Builder;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-class v4, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$ExecutingTransformer;

    .line 10680
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "$ByteBuddy$ModuleSupport"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lnet/bytebuddy/dynamic/DynamicType$Builder;->name(Ljava/lang/String;)Lnet/bytebuddy/dynamic/DynamicType$Builder;

    move-result-object v2

    .line 10681
    invoke-static {v0}, Lnet/bytebuddy/matcher/ElementMatchers;->named(Ljava/lang/String;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v3

    sget-object v4, Lnet/bytebuddy/utility/JavaType;->MODULE:Lnet/bytebuddy/utility/JavaType;

    invoke-virtual {v4}, Lnet/bytebuddy/utility/JavaType;->load()Ljava/lang/Class;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v5, v4}, Lnet/bytebuddy/matcher/ElementMatchers;->takesArgument(ILjava/lang/Class;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v4

    invoke-interface {v3, v4}, Lnet/bytebuddy/matcher/ElementMatcher$Junction;->and(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v3

    invoke-interface {v2, v3}, Lnet/bytebuddy/dynamic/DynamicType$Builder;->method(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ImplementationDefinition;

    move-result-object v2

    const-class v3, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$ExecutingTransformer;

    const/4 v4, 0x6

    new-array v6, v4, [Ljava/lang/Class;

    const-class v7, Ljava/lang/Object;

    aput-object v7, v6, v5

    const-class v7, Ljava/lang/ClassLoader;

    const/4 v8, 0x1

    aput-object v7, v6, v8

    const-class v7, Ljava/lang/String;

    const/4 v9, 0x2

    aput-object v7, v6, v9

    const-class v7, Ljava/lang/Class;

    const/4 v10, 0x3

    aput-object v7, v6, v10

    const-class v7, Ljava/security/ProtectionDomain;

    const/4 v11, 0x4

    aput-object v7, v6, v11

    const-class v7, [B

    const/4 v12, 0x5

    aput-object v7, v6, v12

    .line 10682
    invoke-virtual {v3, v0, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-static {v0}, Lnet/bytebuddy/implementation/MethodCall;->invoke(Ljava/lang/reflect/Method;)Lnet/bytebuddy/implementation/MethodCall$WithoutSpecifiedTarget;

    move-result-object v0

    .line 10688
    invoke-virtual {v0}, Lnet/bytebuddy/implementation/MethodCall$WithoutSpecifiedTarget;->onSuper()Lnet/bytebuddy/implementation/MethodCall;

    move-result-object v0

    invoke-virtual {v0}, Lnet/bytebuddy/implementation/MethodCall;->withAllArguments()Lnet/bytebuddy/implementation/MethodCall;

    move-result-object v0

    .line 10682
    invoke-interface {v2, v0}, Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ImplementationDefinition;->intercept(Lnet/bytebuddy/implementation/Implementation;)Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ReceiverTypeDefinition;

    move-result-object v0

    .line 10689
    invoke-interface {v0}, Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ReceiverTypeDefinition;->make()Lnet/bytebuddy/dynamic/DynamicType$Unloaded;

    move-result-object v0

    const-class v2, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$ExecutingTransformer;

    .line 10690
    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    sget-object v3, Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$Default;->WRAPPER_PERSISTENT:Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$Default;

    const-class v6, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$ExecutingTransformer;

    .line 10691
    invoke-virtual {v6}, Ljava/lang/Class;->getProtectionDomain()Ljava/security/ProtectionDomain;

    move-result-object v6

    invoke-virtual {v3, v6}, Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$Default;->with(Ljava/security/ProtectionDomain;)Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$Configurable;

    move-result-object v3

    .line 10690
    invoke-interface {v0, v2, v3}, Lnet/bytebuddy/dynamic/DynamicType$Unloaded;->load(Ljava/lang/ClassLoader;Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy;)Lnet/bytebuddy/dynamic/DynamicType$Loaded;

    move-result-object v0

    .line 10692
    invoke-interface {v0}, Lnet/bytebuddy/dynamic/DynamicType$Loaded;->getLoaded()Ljava/lang/Class;

    move-result-object v0

    const/16 v2, 0x10

    new-array v2, v2, [Ljava/lang/Class;

    const-class v3, Lnet/bytebuddy/ByteBuddy;

    aput-object v3, v2, v5

    const-class v3, Lnet/bytebuddy/agent/builder/AgentBuilder$Listener;

    aput-object v3, v2, v8

    const-class v3, Lnet/bytebuddy/agent/builder/AgentBuilder$PoolStrategy;

    aput-object v3, v2, v9

    const-class v3, Lnet/bytebuddy/agent/builder/AgentBuilder$TypeStrategy;

    aput-object v3, v2, v10

    const-class v3, Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy;

    aput-object v3, v2, v11

    const-class v3, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$NativeMethodStrategy;

    aput-object v3, v2, v12

    const-class v3, Lnet/bytebuddy/agent/builder/AgentBuilder$InitializationStrategy;

    aput-object v3, v2, v4

    const-class v3, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$BootstrapInjectionStrategy;

    const/4 v4, 0x7

    aput-object v3, v2, v4

    const-class v3, Lnet/bytebuddy/agent/builder/AgentBuilder$LambdaInstrumentationStrategy;

    const/16 v4, 0x8

    aput-object v3, v2, v4

    const-class v3, Lnet/bytebuddy/agent/builder/AgentBuilder$DescriptionStrategy;

    const/16 v4, 0x9

    aput-object v3, v2, v4

    const-class v3, Lnet/bytebuddy/agent/builder/AgentBuilder$FallbackStrategy;

    const/16 v4, 0xa

    aput-object v3, v2, v4

    const-class v3, Lnet/bytebuddy/agent/builder/AgentBuilder$ClassFileBufferStrategy;

    const/16 v4, 0xb

    aput-object v3, v2, v4

    const-class v3, Lnet/bytebuddy/agent/builder/AgentBuilder$InstallationListener;

    const/16 v4, 0xc

    aput-object v3, v2, v4

    const-class v3, Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher;

    const/16 v4, 0xd

    aput-object v3, v2, v4

    const-class v3, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation;

    const/16 v4, 0xe

    aput-object v3, v2, v4

    const-class v3, Lnet/bytebuddy/agent/builder/AgentBuilder$CircularityLock;

    const/16 v4, 0xf

    aput-object v3, v2, v4

    .line 10693
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    invoke-direct {v1, v0}, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$ExecutingTransformer$Factory$ForJava9CapableVm;-><init>(Ljava/lang/reflect/Constructor;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 10710
    :catch_0
    sget-object v0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$ExecutingTransformer$Factory$ForLegacyVm;->INSTANCE:Lnet/bytebuddy/agent/builder/AgentBuilder$Default$ExecutingTransformer$Factory$ForLegacyVm;

    return-object v0
.end method
