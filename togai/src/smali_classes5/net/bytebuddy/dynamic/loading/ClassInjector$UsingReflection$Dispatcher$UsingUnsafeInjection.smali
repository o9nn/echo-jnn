.class public Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingReflection$Dispatcher$UsingUnsafeInjection;
.super Ljava/lang/Object;
.source "ClassInjector.java"

# interfaces
.implements Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingReflection$Dispatcher;
.implements Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingReflection$Dispatcher$Initializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingReflection$Dispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UsingUnsafeInjection"
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# instance fields
.field private final accessor:Ljava/lang/Object;

.field private final defineClass:Ljava/lang/reflect/Method;

.field private final definePackage:Ljava/lang/reflect/Method;

.field private final findLoadedClass:Ljava/lang/reflect/Method;

.field private final getClassLoadingLock:Ljava/lang/reflect/Method;

.field private final getPackage:Ljava/lang/reflect/Method;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V
    .locals 0

    .line 780
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingReflection$Dispatcher$UsingUnsafeInjection;->accessor:Ljava/lang/Object;

    iput-object p2, p0, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingReflection$Dispatcher$UsingUnsafeInjection;->findLoadedClass:Ljava/lang/reflect/Method;

    iput-object p3, p0, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingReflection$Dispatcher$UsingUnsafeInjection;->defineClass:Ljava/lang/reflect/Method;

    iput-object p4, p0, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingReflection$Dispatcher$UsingUnsafeInjection;->getPackage:Ljava/lang/reflect/Method;

    iput-object p5, p0, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingReflection$Dispatcher$UsingUnsafeInjection;->definePackage:Ljava/lang/reflect/Method;

    iput-object p6, p0, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingReflection$Dispatcher$UsingUnsafeInjection;->getClassLoadingLock:Ljava/lang/reflect/Method;

    return-void
.end method

.method protected static make()Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingReflection$Dispatcher$Initializable;
    .locals 29
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "getClassLoadingLock"

    const-string v1, "net.bytebuddy.safe"

    .line 797
    invoke-static {v1}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 798
    new-instance v0, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingReflection$Dispatcher$Initializable$Unavailable;

    const-string v1, "Use of Unsafe was disabled by system property"

    invoke-direct {v0, v1}, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingReflection$Dispatcher$Initializable$Unavailable;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_0
    const-string v1, "sun.misc.Unsafe"

    .line 800
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "theUnsafe"

    .line 801
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    const/4 v3, 0x1

    .line 802
    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const/4 v4, 0x0

    .line 803
    invoke-virtual {v2, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 805
    invoke-static {}, Lnet/bytebuddy/utility/JavaModule;->isSupported()Z

    move-result v4

    const-string v5, "getPackage"

    const/4 v6, 0x0

    if-eqz v4, :cond_1

    .line 807
    :try_start_0
    const-class v4, Ljava/lang/ClassLoader;

    const-string v7, "getDefinedPackage"

    new-array v8, v3, [Ljava/lang/Class;

    const-class v9, Ljava/lang/String;

    aput-object v9, v8, v6

    invoke-virtual {v4, v7, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 809
    :catch_0
    const-class v4, Ljava/lang/ClassLoader;

    new-array v7, v3, [Ljava/lang/Class;

    const-class v8, Ljava/lang/String;

    aput-object v8, v7, v6

    invoke-virtual {v4, v5, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    goto :goto_0

    .line 812
    :cond_1
    const-class v4, Ljava/lang/ClassLoader;

    new-array v7, v3, [Ljava/lang/Class;

    const-class v8, Ljava/lang/String;

    aput-object v8, v7, v6

    invoke-virtual {v4, v5, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 814
    :goto_0
    invoke-virtual {v4, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 815
    new-instance v7, Lnet/bytebuddy/ByteBuddy;

    invoke-direct {v7}, Lnet/bytebuddy/ByteBuddy;-><init>()V

    sget-object v8, Lnet/bytebuddy/dynamic/scaffold/TypeValidation;->DISABLED:Lnet/bytebuddy/dynamic/scaffold/TypeValidation;

    .line 816
    invoke-virtual {v7, v8}, Lnet/bytebuddy/ByteBuddy;->with(Lnet/bytebuddy/dynamic/scaffold/TypeValidation;)Lnet/bytebuddy/ByteBuddy;

    move-result-object v7

    const-class v8, Ljava/lang/Object;

    sget-object v9, Lnet/bytebuddy/dynamic/scaffold/subclass/ConstructorStrategy$Default;->NO_CONSTRUCTORS:Lnet/bytebuddy/dynamic/scaffold/subclass/ConstructorStrategy$Default;

    .line 817
    invoke-virtual {v7, v8, v9}, Lnet/bytebuddy/ByteBuddy;->subclass(Ljava/lang/Class;Lnet/bytebuddy/dynamic/scaffold/subclass/ConstructorStrategy;)Lnet/bytebuddy/dynamic/DynamicType$Builder;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-class v9, Ljava/lang/ClassLoader;

    .line 818
    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "$ByteBuddyAccessor$"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Lnet/bytebuddy/utility/RandomString;->make()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lnet/bytebuddy/dynamic/DynamicType$Builder;->name(Ljava/lang/String;)Lnet/bytebuddy/dynamic/DynamicType$Builder;

    move-result-object v7

    const-class v8, Ljava/lang/Class;

    new-array v9, v3, [Lnet/bytebuddy/description/modifier/ModifierContributor$ForMethod;

    sget-object v10, Lnet/bytebuddy/description/modifier/Visibility;->PUBLIC:Lnet/bytebuddy/description/modifier/Visibility;

    aput-object v10, v9, v6

    const-string v10, "findLoadedClass"

    .line 819
    invoke-interface {v7, v10, v8, v9}, Lnet/bytebuddy/dynamic/DynamicType$Builder;->defineMethod(Ljava/lang/String;Ljava/lang/reflect/Type;[Lnet/bytebuddy/description/modifier/ModifierContributor$ForMethod;)Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ParameterDefinition$Initial;

    move-result-object v7

    const/4 v8, 0x2

    new-array v9, v8, [Ljava/lang/reflect/Type;

    const-class v11, Ljava/lang/ClassLoader;

    aput-object v11, v9, v6

    const-class v11, Ljava/lang/String;

    aput-object v11, v9, v3

    .line 820
    invoke-interface {v7, v9}, Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ParameterDefinition$Initial;->withParameters([Ljava/lang/reflect/Type;)Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ExceptionDefinition;

    move-result-object v7

    const-class v9, Ljava/lang/ClassLoader;

    new-array v11, v3, [Ljava/lang/Class;

    const-class v12, Ljava/lang/String;

    aput-object v12, v11, v6

    .line 822
    invoke-virtual {v9, v10, v11}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    .line 821
    invoke-static {v9}, Lnet/bytebuddy/implementation/MethodCall;->invoke(Ljava/lang/reflect/Method;)Lnet/bytebuddy/implementation/MethodCall$WithoutSpecifiedTarget;

    move-result-object v9

    .line 823
    invoke-virtual {v9, v6}, Lnet/bytebuddy/implementation/MethodCall$WithoutSpecifiedTarget;->onArgument(I)Lnet/bytebuddy/implementation/MethodCall;

    move-result-object v9

    filled-new-array {v3}, [I

    move-result-object v11

    .line 824
    invoke-virtual {v9, v11}, Lnet/bytebuddy/implementation/MethodCall;->withArgument([I)Lnet/bytebuddy/implementation/MethodCall;

    move-result-object v9

    .line 821
    invoke-interface {v7, v9}, Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ExceptionDefinition;->intercept(Lnet/bytebuddy/implementation/Implementation;)Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ReceiverTypeDefinition;

    move-result-object v7

    const-class v9, Ljava/lang/Class;

    new-array v11, v3, [Lnet/bytebuddy/description/modifier/ModifierContributor$ForMethod;

    sget-object v12, Lnet/bytebuddy/description/modifier/Visibility;->PUBLIC:Lnet/bytebuddy/description/modifier/Visibility;

    aput-object v12, v11, v6

    const-string v12, "defineClass"

    .line 825
    invoke-interface {v7, v12, v9, v11}, Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ReceiverTypeDefinition;->defineMethod(Ljava/lang/String;Ljava/lang/reflect/Type;[Lnet/bytebuddy/description/modifier/ModifierContributor$ForMethod;)Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ParameterDefinition$Initial;

    move-result-object v7

    const/4 v9, 0x6

    new-array v11, v9, [Ljava/lang/reflect/Type;

    const-class v13, Ljava/lang/ClassLoader;

    aput-object v13, v11, v6

    const-class v13, Ljava/lang/String;

    aput-object v13, v11, v3

    const-class v13, [B

    aput-object v13, v11, v8

    sget-object v14, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v15, 0x3

    aput-object v14, v11, v15

    sget-object v14, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v9, 0x4

    aput-object v14, v11, v9

    const-class v14, Ljava/security/ProtectionDomain;

    const/4 v9, 0x5

    aput-object v14, v11, v9

    .line 826
    invoke-interface {v7, v11}, Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ParameterDefinition$Initial;->withParameters([Ljava/lang/reflect/Type;)Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ExceptionDefinition;

    move-result-object v7

    const-class v11, Ljava/lang/ClassLoader;

    new-array v14, v9, [Ljava/lang/Class;

    const-class v18, Ljava/lang/String;

    aput-object v18, v14, v6

    aput-object v13, v14, v3

    sget-object v18, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v18, v14, v8

    sget-object v18, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v18, v14, v15

    const-class v18, Ljava/security/ProtectionDomain;

    const/4 v3, 0x4

    aput-object v18, v14, v3

    .line 829
    invoke-virtual {v11, v12, v14}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v11

    .line 828
    invoke-static {v11}, Lnet/bytebuddy/implementation/MethodCall;->invoke(Ljava/lang/reflect/Method;)Lnet/bytebuddy/implementation/MethodCall$WithoutSpecifiedTarget;

    move-result-object v11

    .line 830
    invoke-virtual {v11, v6}, Lnet/bytebuddy/implementation/MethodCall$WithoutSpecifiedTarget;->onArgument(I)Lnet/bytebuddy/implementation/MethodCall;

    move-result-object v11

    const/4 v14, 0x1

    filled-new-array {v14, v8, v15, v3, v9}, [I

    move-result-object v6

    .line 831
    invoke-virtual {v11, v6}, Lnet/bytebuddy/implementation/MethodCall;->withArgument([I)Lnet/bytebuddy/implementation/MethodCall;

    move-result-object v3

    .line 828
    invoke-interface {v7, v3}, Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ExceptionDefinition;->intercept(Lnet/bytebuddy/implementation/Implementation;)Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ReceiverTypeDefinition;

    move-result-object v3

    const-class v6, Ljava/lang/Package;

    new-array v7, v14, [Lnet/bytebuddy/description/modifier/ModifierContributor$ForMethod;

    sget-object v11, Lnet/bytebuddy/description/modifier/Visibility;->PUBLIC:Lnet/bytebuddy/description/modifier/Visibility;

    const/4 v9, 0x0

    aput-object v11, v7, v9

    .line 832
    invoke-interface {v3, v5, v6, v7}, Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ReceiverTypeDefinition;->defineMethod(Ljava/lang/String;Ljava/lang/reflect/Type;[Lnet/bytebuddy/description/modifier/ModifierContributor$ForMethod;)Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ParameterDefinition$Initial;

    move-result-object v3

    new-array v6, v8, [Ljava/lang/reflect/Type;

    const-class v7, Ljava/lang/ClassLoader;

    aput-object v7, v6, v9

    const-class v7, Ljava/lang/String;

    aput-object v7, v6, v14

    .line 833
    invoke-interface {v3, v6}, Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ParameterDefinition$Initial;->withParameters([Ljava/lang/reflect/Type;)Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ExceptionDefinition;

    move-result-object v3

    .line 834
    invoke-static {v4}, Lnet/bytebuddy/implementation/MethodCall;->invoke(Ljava/lang/reflect/Method;)Lnet/bytebuddy/implementation/MethodCall$WithoutSpecifiedTarget;

    move-result-object v4

    .line 835
    invoke-virtual {v4, v9}, Lnet/bytebuddy/implementation/MethodCall$WithoutSpecifiedTarget;->onArgument(I)Lnet/bytebuddy/implementation/MethodCall;

    move-result-object v4

    filled-new-array {v14}, [I

    move-result-object v6

    .line 836
    invoke-virtual {v4, v6}, Lnet/bytebuddy/implementation/MethodCall;->withArgument([I)Lnet/bytebuddy/implementation/MethodCall;

    move-result-object v4

    .line 834
    invoke-interface {v3, v4}, Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ExceptionDefinition;->intercept(Lnet/bytebuddy/implementation/Implementation;)Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ReceiverTypeDefinition;

    move-result-object v3

    const-class v4, Ljava/lang/Package;

    new-array v6, v14, [Lnet/bytebuddy/description/modifier/ModifierContributor$ForMethod;

    sget-object v7, Lnet/bytebuddy/description/modifier/Visibility;->PUBLIC:Lnet/bytebuddy/description/modifier/Visibility;

    aput-object v7, v6, v9

    const-string v7, "definePackage"

    .line 837
    invoke-interface {v3, v7, v4, v6}, Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ReceiverTypeDefinition;->defineMethod(Ljava/lang/String;Ljava/lang/reflect/Type;[Lnet/bytebuddy/description/modifier/ModifierContributor$ForMethod;)Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ParameterDefinition$Initial;

    move-result-object v3

    const/16 v4, 0x9

    new-array v6, v4, [Ljava/lang/reflect/Type;

    const-class v11, Ljava/lang/ClassLoader;

    aput-object v11, v6, v9

    const-class v9, Ljava/lang/String;

    aput-object v9, v6, v14

    const-class v9, Ljava/lang/String;

    aput-object v9, v6, v8

    const-class v9, Ljava/lang/String;

    aput-object v9, v6, v15

    const-class v9, Ljava/lang/String;

    const/4 v11, 0x4

    aput-object v9, v6, v11

    const-class v9, Ljava/lang/String;

    const/4 v11, 0x5

    aput-object v9, v6, v11

    const-class v9, Ljava/lang/String;

    const/4 v11, 0x6

    aput-object v9, v6, v11

    const-class v9, Ljava/lang/String;

    const/4 v11, 0x7

    aput-object v9, v6, v11

    const-class v9, Ljava/net/URL;

    const/16 v14, 0x8

    aput-object v9, v6, v14

    .line 838
    invoke-interface {v3, v6}, Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ParameterDefinition$Initial;->withParameters([Ljava/lang/reflect/Type;)Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ExceptionDefinition;

    move-result-object v3

    const-class v6, Ljava/lang/ClassLoader;

    new-array v9, v14, [Ljava/lang/Class;

    const-class v21, Ljava/lang/String;

    const/16 v18, 0x0

    aput-object v21, v9, v18

    const-class v21, Ljava/lang/String;

    const/16 v19, 0x1

    aput-object v21, v9, v19

    const-class v21, Ljava/lang/String;

    aput-object v21, v9, v8

    const-class v21, Ljava/lang/String;

    aput-object v21, v9, v15

    const-class v21, Ljava/lang/String;

    const/16 v17, 0x4

    aput-object v21, v9, v17

    const-class v21, Ljava/lang/String;

    const/16 v20, 0x5

    aput-object v21, v9, v20

    const-class v21, Ljava/lang/String;

    const/16 v16, 0x6

    aput-object v21, v9, v16

    const-class v21, Ljava/net/URL;

    aput-object v21, v9, v11

    .line 841
    invoke-virtual {v6, v7, v9}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 840
    invoke-static {v6}, Lnet/bytebuddy/implementation/MethodCall;->invoke(Ljava/lang/reflect/Method;)Lnet/bytebuddy/implementation/MethodCall$WithoutSpecifiedTarget;

    move-result-object v6

    const/4 v9, 0x0

    .line 842
    invoke-virtual {v6, v9}, Lnet/bytebuddy/implementation/MethodCall$WithoutSpecifiedTarget;->onArgument(I)Lnet/bytebuddy/implementation/MethodCall;

    move-result-object v6

    new-array v9, v14, [I

    fill-array-data v9, :array_0

    .line 843
    invoke-virtual {v6, v9}, Lnet/bytebuddy/implementation/MethodCall;->withArgument([I)Lnet/bytebuddy/implementation/MethodCall;

    move-result-object v6

    .line 840
    invoke-interface {v3, v6}, Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ExceptionDefinition;->intercept(Lnet/bytebuddy/implementation/Implementation;)Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ReceiverTypeDefinition;

    move-result-object v3

    .line 845
    :try_start_1
    const-class v6, Ljava/lang/Object;

    const/4 v9, 0x1

    new-array v14, v9, [Lnet/bytebuddy/description/modifier/ModifierContributor$ForMethod;

    sget-object v9, Lnet/bytebuddy/description/modifier/Visibility;->PUBLIC:Lnet/bytebuddy/description/modifier/Visibility;

    const/16 v18, 0x0

    aput-object v9, v14, v18

    invoke-interface {v3, v0, v6, v14}, Lnet/bytebuddy/dynamic/DynamicType$Builder;->defineMethod(Ljava/lang/String;Ljava/lang/reflect/Type;[Lnet/bytebuddy/description/modifier/ModifierContributor$ForMethod;)Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ParameterDefinition$Initial;

    move-result-object v6

    new-array v9, v8, [Ljava/lang/reflect/Type;

    const-class v14, Ljava/lang/ClassLoader;

    aput-object v14, v9, v18

    const-class v14, Ljava/lang/String;

    const/4 v11, 0x1

    aput-object v14, v9, v11

    .line 846
    invoke-interface {v6, v9}, Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ParameterDefinition$Initial;->withParameters([Ljava/lang/reflect/Type;)Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ExceptionDefinition;

    move-result-object v6

    const-class v9, Ljava/lang/ClassLoader;

    new-array v14, v11, [Ljava/lang/Class;

    const-class v11, Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v11, v14, v4

    .line 847
    invoke-virtual {v9, v0, v14}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    invoke-static {v9}, Lnet/bytebuddy/implementation/MethodCall;->invoke(Ljava/lang/reflect/Method;)Lnet/bytebuddy/implementation/MethodCall$WithoutSpecifiedTarget;

    move-result-object v9

    .line 848
    invoke-virtual {v9, v4}, Lnet/bytebuddy/implementation/MethodCall$WithoutSpecifiedTarget;->onArgument(I)Lnet/bytebuddy/implementation/MethodCall;

    move-result-object v9

    const/4 v4, 0x1

    filled-new-array {v4}, [I

    move-result-object v11

    .line 849
    invoke-virtual {v9, v11}, Lnet/bytebuddy/implementation/MethodCall;->withArgument([I)Lnet/bytebuddy/implementation/MethodCall;

    move-result-object v4

    .line 847
    invoke-interface {v6, v4}, Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ExceptionDefinition;->intercept(Lnet/bytebuddy/implementation/Implementation;)Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ReceiverTypeDefinition;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 851
    :catch_1
    const-class v4, Ljava/lang/Object;

    const/4 v6, 0x1

    new-array v9, v6, [Lnet/bytebuddy/description/modifier/ModifierContributor$ForMethod;

    sget-object v11, Lnet/bytebuddy/description/modifier/Visibility;->PUBLIC:Lnet/bytebuddy/description/modifier/Visibility;

    const/4 v14, 0x0

    aput-object v11, v9, v14

    invoke-interface {v3, v0, v4, v9}, Lnet/bytebuddy/dynamic/DynamicType$Builder;->defineMethod(Ljava/lang/String;Ljava/lang/reflect/Type;[Lnet/bytebuddy/description/modifier/ModifierContributor$ForMethod;)Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ParameterDefinition$Initial;

    move-result-object v3

    new-array v4, v8, [Ljava/lang/reflect/Type;

    const-class v9, Ljava/lang/ClassLoader;

    aput-object v9, v4, v14

    const-class v9, Ljava/lang/String;

    aput-object v9, v4, v6

    .line 852
    invoke-interface {v3, v4}, Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ParameterDefinition$Initial;->withParameters([Ljava/lang/reflect/Type;)Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ExceptionDefinition;

    move-result-object v3

    .line 853
    invoke-static {v14}, Lnet/bytebuddy/implementation/FixedValue;->argument(I)Lnet/bytebuddy/implementation/FixedValue$AssignerConfigurable;

    move-result-object v4

    invoke-interface {v3, v4}, Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ExceptionDefinition;->intercept(Lnet/bytebuddy/implementation/Implementation;)Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ReceiverTypeDefinition;

    move-result-object v3

    .line 855
    :goto_1
    invoke-interface {v3}, Lnet/bytebuddy/dynamic/DynamicType$Builder;->make()Lnet/bytebuddy/dynamic/DynamicType$Unloaded;

    move-result-object v3

    sget-object v4, Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy;->BOOTSTRAP_LOADER:Ljava/lang/ClassLoader;

    new-instance v6, Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$ForUnsafeInjection;

    invoke-direct {v6}, Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$ForUnsafeInjection;-><init>()V

    .line 856
    invoke-interface {v3, v4, v6}, Lnet/bytebuddy/dynamic/DynamicType$Unloaded;->load(Ljava/lang/ClassLoader;Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy;)Lnet/bytebuddy/dynamic/DynamicType$Loaded;

    move-result-object v3

    .line 857
    invoke-interface {v3}, Lnet/bytebuddy/dynamic/DynamicType$Loaded;->getLoaded()Ljava/lang/Class;

    move-result-object v3

    .line 858
    new-instance v4, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingReflection$Dispatcher$UsingUnsafeInjection;

    const/4 v6, 0x1

    new-array v9, v6, [Ljava/lang/Class;

    const-class v11, Ljava/lang/Class;

    const/4 v14, 0x0

    aput-object v11, v9, v14

    const-string v11, "allocateInstance"

    .line 859
    invoke-virtual {v1, v11, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v1, v2, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    new-array v1, v8, [Ljava/lang/Class;

    const-class v2, Ljava/lang/ClassLoader;

    aput-object v2, v1, v14

    const-class v2, Ljava/lang/String;

    aput-object v2, v1, v6

    .line 860
    invoke-virtual {v3, v10, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v24

    const/4 v1, 0x6

    new-array v2, v1, [Ljava/lang/Class;

    const-class v1, Ljava/lang/ClassLoader;

    aput-object v1, v2, v14

    const-class v1, Ljava/lang/String;

    aput-object v1, v2, v6

    aput-object v13, v2, v8

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v1, v2, v15

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x4

    aput-object v1, v2, v6

    const-class v1, Ljava/security/ProtectionDomain;

    const/4 v6, 0x5

    aput-object v1, v2, v6

    .line 861
    invoke-virtual {v3, v12, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v25

    new-array v1, v8, [Ljava/lang/Class;

    const-class v2, Ljava/lang/ClassLoader;

    const/4 v6, 0x0

    aput-object v2, v1, v6

    const-class v2, Ljava/lang/String;

    const/4 v9, 0x1

    aput-object v2, v1, v9

    .line 862
    invoke-virtual {v3, v5, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v26

    const/16 v1, 0x9

    new-array v1, v1, [Ljava/lang/Class;

    const-class v2, Ljava/lang/ClassLoader;

    aput-object v2, v1, v6

    const-class v2, Ljava/lang/String;

    aput-object v2, v1, v9

    const-class v2, Ljava/lang/String;

    aput-object v2, v1, v8

    const-class v2, Ljava/lang/String;

    aput-object v2, v1, v15

    const-class v2, Ljava/lang/String;

    const/4 v5, 0x4

    aput-object v2, v1, v5

    const-class v2, Ljava/lang/String;

    const/4 v5, 0x5

    aput-object v2, v1, v5

    const-class v2, Ljava/lang/String;

    const/4 v5, 0x6

    aput-object v2, v1, v5

    const-class v2, Ljava/lang/String;

    const/4 v5, 0x7

    aput-object v2, v1, v5

    const-class v2, Ljava/net/URL;

    const/16 v5, 0x8

    aput-object v2, v1, v5

    .line 863
    invoke-virtual {v3, v7, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v27

    new-array v1, v8, [Ljava/lang/Class;

    const-class v2, Ljava/lang/ClassLoader;

    const/4 v5, 0x0

    aput-object v2, v1, v5

    const-class v2, Ljava/lang/String;

    const/4 v5, 0x1

    aput-object v2, v1, v5

    .line 864
    invoke-virtual {v3, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v28

    move-object/from16 v22, v4

    invoke-direct/range {v22 .. v28}, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingReflection$Dispatcher$UsingUnsafeInjection;-><init>(Ljava/lang/Object;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V

    return-object v4

    :array_0
    .array-data 4
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
    .end array-data
.end method


# virtual methods
.method public defineClass(Ljava/lang/ClassLoader;Ljava/lang/String;[BLjava/security/ProtectionDomain;)Ljava/lang/Class;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            "Ljava/lang/String;",
            "[B",
            "Ljava/security/ProtectionDomain;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingReflection$Dispatcher$UsingUnsafeInjection;->defineClass:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingReflection$Dispatcher$UsingUnsafeInjection;->accessor:Ljava/lang/Object;

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    aput-object p2, v2, p1

    const/4 p1, 0x2

    aput-object p3, v2, p1

    .line 920
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x3

    aput-object p1, v2, p2

    array-length p1, p3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x4

    aput-object p1, v2, p2

    const/4 p1, 0x5

    aput-object p4, v2, p1

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 924
    new-instance p2, Ljava/lang/IllegalStateException;

    const-string p3, "Error invoking (accessor)::defineClass"

    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {p2, p3, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 922
    new-instance p2, Ljava/lang/IllegalStateException;

    const-string p3, "Could not access (accessor)::defineClass"

    invoke-direct {p2, p3, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public definePackage(Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/net/URL;)Ljava/lang/Package;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingReflection$Dispatcher$UsingUnsafeInjection;->definePackage:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingReflection$Dispatcher$UsingUnsafeInjection;->accessor:Ljava/lang/Object;

    .line 954
    filled-new-array/range {p1 .. p9}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Package;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 967
    new-instance p2, Ljava/lang/IllegalStateException;

    const-string p3, "Error invoking (accessor)::definePackage"

    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {p2, p3, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 965
    new-instance p2, Ljava/lang/IllegalStateException;

    const-string p3, "Could not access (accessor)::definePackage"

    invoke-direct {p2, p3, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
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
    iget-object v2, p0, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingReflection$Dispatcher$UsingUnsafeInjection;->accessor:Ljava/lang/Object;

    check-cast p1, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingReflection$Dispatcher$UsingUnsafeInjection;

    iget-object v3, p1, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingReflection$Dispatcher$UsingUnsafeInjection;->accessor:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    :cond_3
    iget-object v2, p0, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingReflection$Dispatcher$UsingUnsafeInjection;->findLoadedClass:Ljava/lang/reflect/Method;

    iget-object v3, p1, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingReflection$Dispatcher$UsingUnsafeInjection;->findLoadedClass:Ljava/lang/reflect/Method;

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    :cond_4
    iget-object v2, p0, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingReflection$Dispatcher$UsingUnsafeInjection;->defineClass:Ljava/lang/reflect/Method;

    iget-object v3, p1, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingReflection$Dispatcher$UsingUnsafeInjection;->defineClass:Ljava/lang/reflect/Method;

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    return v1

    :cond_5
    iget-object v2, p0, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingReflection$Dispatcher$UsingUnsafeInjection;->getPackage:Ljava/lang/reflect/Method;

    iget-object v3, p1, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingReflection$Dispatcher$UsingUnsafeInjection;->getPackage:Ljava/lang/reflect/Method;

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    :cond_6
    iget-object v2, p0, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingReflection$Dispatcher$UsingUnsafeInjection;->definePackage:Ljava/lang/reflect/Method;

    iget-object v3, p1, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingReflection$Dispatcher$UsingUnsafeInjection;->definePackage:Ljava/lang/reflect/Method;

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    return v1

    :cond_7
    iget-object v2, p0, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingReflection$Dispatcher$UsingUnsafeInjection;->getClassLoadingLock:Ljava/lang/reflect/Method;

    iget-object p1, p1, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingReflection$Dispatcher$UsingUnsafeInjection;->getClassLoadingLock:Ljava/lang/reflect/Method;

    invoke-virtual {v2, p1}, Ljava/lang/reflect/Method;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    return v1

    :cond_8
    return v0
.end method

.method public findClass(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingReflection$Dispatcher$UsingUnsafeInjection;->findLoadedClass:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingReflection$Dispatcher$UsingUnsafeInjection;->accessor:Ljava/lang/Object;

    .line 907
    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 911
    new-instance p2, Ljava/lang/IllegalStateException;

    const-string v0, "Error invoking (accessor)::findLoadedClass"

    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {p2, v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 909
    new-instance p2, Ljava/lang/IllegalStateException;

    const-string v0, "Could not access (accessor)::findLoadedClass"

    invoke-direct {p2, v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public getClassLoadingLock(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingReflection$Dispatcher$UsingUnsafeInjection;->getClassLoadingLock:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingReflection$Dispatcher$UsingUnsafeInjection;->accessor:Ljava/lang/Object;

    .line 894
    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 898
    new-instance p2, Ljava/lang/IllegalStateException;

    const-string v0, "Error invoking (accessor)::getClassLoadingLock"

    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {p2, v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 896
    new-instance p2, Ljava/lang/IllegalStateException;

    const-string v0, "Could not access (accessor)::getClassLoadingLock"

    invoke-direct {p2, v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public getPackage(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Package;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingReflection$Dispatcher$UsingUnsafeInjection;->getPackage:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingReflection$Dispatcher$UsingUnsafeInjection;->accessor:Ljava/lang/Object;

    .line 933
    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Package;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 937
    new-instance p2, Ljava/lang/IllegalStateException;

    const-string v0, "Error invoking (accessor)::getPackage"

    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {p2, v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 935
    new-instance p2, Ljava/lang/IllegalStateException;

    const-string v0, "Could not access (accessor)::getPackage"

    invoke-direct {p2, v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingReflection$Dispatcher$UsingUnsafeInjection;->accessor:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingReflection$Dispatcher$UsingUnsafeInjection;->findLoadedClass:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingReflection$Dispatcher$UsingUnsafeInjection;->defineClass:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingReflection$Dispatcher$UsingUnsafeInjection;->getPackage:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingReflection$Dispatcher$UsingUnsafeInjection;->definePackage:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingReflection$Dispatcher$UsingUnsafeInjection;->getClassLoadingLock:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public initialize()Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingReflection$Dispatcher;
    .locals 2

    .line 878
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 881
    :try_start_0
    sget-object v1, Lnet/bytebuddy/dynamic/loading/ClassInjector;->SUPPRESS_ACCESS_CHECKS:Ljava/security/Permission;

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 883
    new-instance v1, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingReflection$Dispatcher$Unavailable;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingReflection$Dispatcher$Unavailable;-><init>(Ljava/lang/String;)V

    return-object v1

    :cond_0
    :goto_0
    return-object p0
.end method

.method public isAvailable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
