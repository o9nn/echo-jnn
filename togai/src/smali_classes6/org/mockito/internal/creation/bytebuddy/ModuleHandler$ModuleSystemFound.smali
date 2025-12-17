.class Lorg/mockito/internal/creation/bytebuddy/ModuleHandler$ModuleSystemFound;
.super Lorg/mockito/internal/creation/bytebuddy/ModuleHandler;
.source "ModuleHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mockito/internal/creation/bytebuddy/ModuleHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ModuleSystemFound"
.end annotation


# instance fields
.field private final addExports:Ljava/lang/reflect/Method;

.field private final addOpens:Ljava/lang/reflect/Method;

.field private final addReads:Ljava/lang/reflect/Method;

.field private final byteBuddy:Lnet/bytebuddy/ByteBuddy;

.field private final canRead:Ljava/lang/reflect/Method;

.field private final forName:Ljava/lang/reflect/Method;

.field private final getModule:Ljava/lang/reflect/Method;

.field private final injectonBaseSuffix:I

.field private final isExported:Ljava/lang/reflect/Method;

.field private final isExportedUnqualified:Ljava/lang/reflect/Method;

.field private final isOpen:Ljava/lang/reflect/Method;

.field private final loader:Lorg/mockito/internal/creation/bytebuddy/SubclassLoader;

.field private final random:Ljava/util/Random;


# direct methods
.method private constructor <init>(Lnet/bytebuddy/ByteBuddy;Lorg/mockito/internal/creation/bytebuddy/SubclassLoader;Ljava/util/Random;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 58
    invoke-direct {p0}, Lorg/mockito/internal/creation/bytebuddy/ModuleHandler;-><init>()V

    iput-object p1, p0, Lorg/mockito/internal/creation/bytebuddy/ModuleHandler$ModuleSystemFound;->byteBuddy:Lnet/bytebuddy/ByteBuddy;

    iput-object p2, p0, Lorg/mockito/internal/creation/bytebuddy/ModuleHandler$ModuleSystemFound;->loader:Lorg/mockito/internal/creation/bytebuddy/SubclassLoader;

    iput-object p3, p0, Lorg/mockito/internal/creation/bytebuddy/ModuleHandler$ModuleSystemFound;->random:Ljava/util/Random;

    .line 62
    invoke-virtual {p3}, Ljava/util/Random;->nextInt()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    iput p1, p0, Lorg/mockito/internal/creation/bytebuddy/ModuleHandler$ModuleSystemFound;->injectonBaseSuffix:I

    const-string p1, "java.lang.Module"

    .line 63
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    .line 64
    const-class p2, Ljava/lang/Class;

    const/4 p3, 0x0

    new-array v0, p3, [Ljava/lang/Class;

    const-string v1, "getModule"

    invoke-virtual {p2, v1, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    iput-object p2, p0, Lorg/mockito/internal/creation/bytebuddy/ModuleHandler$ModuleSystemFound;->getModule:Ljava/lang/reflect/Method;

    const/4 p2, 0x2

    new-array v0, p2, [Ljava/lang/Class;

    .line 65
    const-class v1, Ljava/lang/String;

    aput-object v1, v0, p3

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const-string v2, "isOpen"

    invoke-virtual {p1, v2, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lorg/mockito/internal/creation/bytebuddy/ModuleHandler$ModuleSystemFound;->isOpen:Ljava/lang/reflect/Method;

    new-array v0, p2, [Ljava/lang/Class;

    .line 66
    const-class v2, Ljava/lang/String;

    aput-object v2, v0, p3

    aput-object p1, v0, v1

    const-string v2, "isExported"

    invoke-virtual {p1, v2, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lorg/mockito/internal/creation/bytebuddy/ModuleHandler$ModuleSystemFound;->isExported:Ljava/lang/reflect/Method;

    new-array v0, v1, [Ljava/lang/Class;

    .line 67
    const-class v3, Ljava/lang/String;

    aput-object v3, v0, p3

    invoke-virtual {p1, v2, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lorg/mockito/internal/creation/bytebuddy/ModuleHandler$ModuleSystemFound;->isExportedUnqualified:Ljava/lang/reflect/Method;

    new-array v0, v1, [Ljava/lang/Class;

    aput-object p1, v0, p3

    const-string v2, "canRead"

    .line 68
    invoke-virtual {p1, v2, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lorg/mockito/internal/creation/bytebuddy/ModuleHandler$ModuleSystemFound;->canRead:Ljava/lang/reflect/Method;

    new-array v0, p2, [Ljava/lang/Class;

    .line 69
    const-class v2, Ljava/lang/String;

    aput-object v2, v0, p3

    aput-object p1, v0, v1

    const-string v2, "addExports"

    invoke-virtual {p1, v2, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lorg/mockito/internal/creation/bytebuddy/ModuleHandler$ModuleSystemFound;->addExports:Ljava/lang/reflect/Method;

    new-array v0, v1, [Ljava/lang/Class;

    aput-object p1, v0, p3

    const-string v2, "addReads"

    .line 70
    invoke-virtual {p1, v2, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lorg/mockito/internal/creation/bytebuddy/ModuleHandler$ModuleSystemFound;->addReads:Ljava/lang/reflect/Method;

    new-array p2, p2, [Ljava/lang/Class;

    .line 71
    const-class v0, Ljava/lang/String;

    aput-object v0, p2, p3

    aput-object p1, p2, v1

    const-string v0, "addOpens"

    invoke-virtual {p1, v0, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iput-object p1, p0, Lorg/mockito/internal/creation/bytebuddy/ModuleHandler$ModuleSystemFound;->addOpens:Ljava/lang/reflect/Method;

    .line 72
    const-class p1, Ljava/lang/Class;

    new-array p2, v1, [Ljava/lang/Class;

    const-class v0, Ljava/lang/String;

    aput-object v0, p2, p3

    const-string p3, "forName"

    invoke-virtual {p1, p3, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iput-object p1, p0, Lorg/mockito/internal/creation/bytebuddy/ModuleHandler$ModuleSystemFound;->forName:Ljava/lang/reflect/Method;

    return-void
.end method

.method synthetic constructor <init>(Lnet/bytebuddy/ByteBuddy;Lorg/mockito/internal/creation/bytebuddy/SubclassLoader;Ljava/util/Random;Lorg/mockito/internal/creation/bytebuddy/ModuleHandler$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 48
    invoke-direct {p0, p1, p2, p3}, Lorg/mockito/internal/creation/bytebuddy/ModuleHandler$ModuleSystemFound;-><init>(Lnet/bytebuddy/ByteBuddy;Lorg/mockito/internal/creation/bytebuddy/SubclassLoader;Ljava/util/Random;)V

    return-void
.end method

.method private static varargs invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 210
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    .line 212
    new-instance p2, Lorg/mockito/exceptions/base/MockitoException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Could not invoke "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, " using reflection"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, ""

    const-string v1, "Mockito attempted to interact with the Java module system but an unexpected method behavior was encountered"

    filled-new-array {p0, v0, v1}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lorg/mockito/internal/util/StringUtil;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0, p1}, Lorg/mockito/exceptions/base/MockitoException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method


# virtual methods
.method adjustModuleGraph(Ljava/lang/Class;Ljava/lang/Class;ZZ)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;ZZ)V"
        }
    .end annotation

    const-string v0, "mockitoType"

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p3, :cond_0

    .line 138
    invoke-virtual {p0, p1, p2}, Lorg/mockito/internal/creation/bytebuddy/ModuleHandler$ModuleSystemFound;->isExported(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result p3

    if-nez p3, :cond_0

    move p3, v1

    goto :goto_0

    :cond_0
    move p3, v2

    :goto_0
    if-eqz p4, :cond_1

    .line 139
    invoke-virtual {p0, p1, p2}, Lorg/mockito/internal/creation/bytebuddy/ModuleHandler$ModuleSystemFound;->canRead(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result p4

    if-nez p4, :cond_1

    move p4, v1

    goto :goto_1

    :cond_1
    move p4, v2

    :goto_1
    if-nez p3, :cond_2

    if-nez p4, :cond_2

    return-void

    .line 143
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    const-string v4, ""

    if-eqz v3, :cond_8

    .line 151
    invoke-virtual {p2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    if-ne v3, v5, :cond_3

    :goto_2
    move v5, v1

    goto :goto_3

    :cond_3
    move v5, v2

    :goto_3
    if-nez v5, :cond_4

    if-eqz v3, :cond_4

    .line 153
    invoke-virtual {v3}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v3

    .line 154
    invoke-virtual {p2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    if-ne v3, v5, :cond_3

    goto :goto_2

    :cond_4
    const-string v3, "This is required to adjust the module graph to enable mock creation"

    const/4 v6, 0x2

    if-eqz v5, :cond_5

    iget-object v0, p0, Lorg/mockito/internal/creation/bytebuddy/ModuleHandler$ModuleSystemFound;->getModule:Ljava/lang/reflect/Method;

    .line 159
    invoke-static {v0}, Lnet/bytebuddy/implementation/MethodCall;->invoke(Ljava/lang/reflect/Method;)Lnet/bytebuddy/implementation/MethodCall$WithoutSpecifiedTarget;

    move-result-object v0

    iget-object v5, p0, Lorg/mockito/internal/creation/bytebuddy/ModuleHandler$ModuleSystemFound;->forName:Ljava/lang/reflect/Method;

    invoke-static {v5}, Lnet/bytebuddy/implementation/MethodCall;->invoke(Ljava/lang/reflect/Method;)Lnet/bytebuddy/implementation/MethodCall$WithoutSpecifiedTarget;

    move-result-object v5

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v7}, Lnet/bytebuddy/implementation/MethodCall$WithoutSpecifiedTarget;->with([Ljava/lang/Object;)Lnet/bytebuddy/implementation/MethodCall;

    move-result-object v5

    invoke-virtual {v0, v5}, Lnet/bytebuddy/implementation/MethodCall$WithoutSpecifiedTarget;->onMethodCall(Lnet/bytebuddy/implementation/MethodCall;)Lnet/bytebuddy/implementation/MethodCall;

    move-result-object v0

    .line 160
    sget-object v5, Lnet/bytebuddy/implementation/StubMethod;->INSTANCE:Lnet/bytebuddy/implementation/StubMethod;

    goto/16 :goto_4

    :cond_5
    :try_start_0
    iget-object v5, p0, Lorg/mockito/internal/creation/bytebuddy/ModuleHandler$ModuleSystemFound;->byteBuddy:Lnet/bytebuddy/ByteBuddy;

    .line 165
    const-class v7, Ljava/lang/Object;

    sget-object v8, Lnet/bytebuddy/dynamic/scaffold/subclass/ConstructorStrategy$Default;->NO_CONSTRUCTORS:Lnet/bytebuddy/dynamic/scaffold/subclass/ConstructorStrategy$Default;

    invoke-virtual {v5, v7, v8}, Lnet/bytebuddy/ByteBuddy;->subclass(Ljava/lang/Class;Lnet/bytebuddy/dynamic/scaffold/subclass/ConstructorStrategy;)Lnet/bytebuddy/dynamic/DynamicType$Builder;

    move-result-object v5

    const-string v7, "%s$%d"

    new-array v8, v6, [Ljava/lang/Object;

    const-string v9, "org.mockito.codegen.MockitoTypeCarrier"

    aput-object v9, v8, v2

    iget-object v9, p0, Lorg/mockito/internal/creation/bytebuddy/ModuleHandler$ModuleSystemFound;->random:Ljava/util/Random;

    .line 166
    invoke-virtual {v9}, Ljava/util/Random;->nextInt()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v1

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v7}, Lnet/bytebuddy/dynamic/DynamicType$Builder;->name(Ljava/lang/String;)Lnet/bytebuddy/dynamic/DynamicType$Builder;

    move-result-object v5

    const-class v7, Ljava/lang/Class;

    new-array v8, v6, [Lnet/bytebuddy/description/modifier/ModifierContributor$ForField;

    sget-object v9, Lnet/bytebuddy/description/modifier/Visibility;->PUBLIC:Lnet/bytebuddy/description/modifier/Visibility;

    aput-object v9, v8, v2

    sget-object v9, Lnet/bytebuddy/description/modifier/Ownership;->STATIC:Lnet/bytebuddy/description/modifier/Ownership;

    aput-object v9, v8, v1

    .line 167
    invoke-interface {v5, v0, v7, v8}, Lnet/bytebuddy/dynamic/DynamicType$Builder;->defineField(Ljava/lang/String;Ljava/lang/reflect/Type;[Lnet/bytebuddy/description/modifier/ModifierContributor$ForField;)Lnet/bytebuddy/dynamic/DynamicType$Builder$FieldDefinition$Optional$Valuable;

    move-result-object v5

    .line 168
    invoke-interface {v5}, Lnet/bytebuddy/dynamic/DynamicType$Builder$FieldDefinition$Optional$Valuable;->make()Lnet/bytebuddy/dynamic/DynamicType$Unloaded;

    move-result-object v5

    .line 169
    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    iget-object v8, p0, Lorg/mockito/internal/creation/bytebuddy/ModuleHandler$ModuleSystemFound;->loader:Lorg/mockito/internal/creation/bytebuddy/SubclassLoader;

    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v9

    invoke-interface {v8, p1, v9, v2}, Lorg/mockito/internal/creation/bytebuddy/SubclassLoader;->resolveStrategy(Ljava/lang/Class;Ljava/lang/ClassLoader;Z)Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy;

    move-result-object v8

    invoke-interface {v5, v7, v8}, Lnet/bytebuddy/dynamic/DynamicType$Unloaded;->load(Ljava/lang/ClassLoader;Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy;)Lnet/bytebuddy/dynamic/DynamicType$Loaded;

    move-result-object v5

    .line 170
    invoke-interface {v5}, Lnet/bytebuddy/dynamic/DynamicType$Loaded;->getLoaded()Ljava/lang/Class;

    move-result-object v5

    .line 171
    invoke-virtual {v5, v0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v7, 0x0

    .line 172
    invoke-virtual {v0, v7, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    iget-object v7, p0, Lorg/mockito/internal/creation/bytebuddy/ModuleHandler$ModuleSystemFound;->getModule:Ljava/lang/reflect/Method;

    .line 178
    invoke-static {v7}, Lnet/bytebuddy/implementation/MethodCall;->invoke(Ljava/lang/reflect/Method;)Lnet/bytebuddy/implementation/MethodCall$WithoutSpecifiedTarget;

    move-result-object v7

    invoke-virtual {v7, v0}, Lnet/bytebuddy/implementation/MethodCall$WithoutSpecifiedTarget;->onField(Ljava/lang/reflect/Field;)Lnet/bytebuddy/implementation/MethodCall;

    move-result-object v0

    iget-object v7, p0, Lorg/mockito/internal/creation/bytebuddy/ModuleHandler$ModuleSystemFound;->getModule:Ljava/lang/reflect/Method;

    .line 179
    invoke-static {v7}, Lnet/bytebuddy/implementation/MethodCall;->invoke(Ljava/lang/reflect/Method;)Lnet/bytebuddy/implementation/MethodCall$WithoutSpecifiedTarget;

    move-result-object v7

    iget-object v8, p0, Lorg/mockito/internal/creation/bytebuddy/ModuleHandler$ModuleSystemFound;->forName:Ljava/lang/reflect/Method;

    invoke-static {v8}, Lnet/bytebuddy/implementation/MethodCall;->invoke(Ljava/lang/reflect/Method;)Lnet/bytebuddy/implementation/MethodCall$WithoutSpecifiedTarget;

    move-result-object v8

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v8, v5}, Lnet/bytebuddy/implementation/MethodCall$WithoutSpecifiedTarget;->with([Ljava/lang/Object;)Lnet/bytebuddy/implementation/MethodCall;

    move-result-object v5

    invoke-virtual {v7, v5}, Lnet/bytebuddy/implementation/MethodCall$WithoutSpecifiedTarget;->onMethodCall(Lnet/bytebuddy/implementation/MethodCall;)Lnet/bytebuddy/implementation/MethodCall;

    move-result-object v5

    :goto_4
    iget-object v7, p0, Lorg/mockito/internal/creation/bytebuddy/ModuleHandler$ModuleSystemFound;->getModule:Ljava/lang/reflect/Method;

    .line 181
    invoke-static {v7}, Lnet/bytebuddy/implementation/MethodCall;->invoke(Ljava/lang/reflect/Method;)Lnet/bytebuddy/implementation/MethodCall$WithoutSpecifiedTarget;

    move-result-object v7

    iget-object v8, p0, Lorg/mockito/internal/creation/bytebuddy/ModuleHandler$ModuleSystemFound;->forName:Ljava/lang/reflect/Method;

    invoke-static {v8}, Lnet/bytebuddy/implementation/MethodCall;->invoke(Ljava/lang/reflect/Method;)Lnet/bytebuddy/implementation/MethodCall$WithoutSpecifiedTarget;

    move-result-object v8

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    filled-new-array {v9}, [Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Lnet/bytebuddy/implementation/MethodCall$WithoutSpecifiedTarget;->with([Ljava/lang/Object;)Lnet/bytebuddy/implementation/MethodCall;

    move-result-object v8

    invoke-virtual {v7, v8}, Lnet/bytebuddy/implementation/MethodCall$WithoutSpecifiedTarget;->onMethodCall(Lnet/bytebuddy/implementation/MethodCall;)Lnet/bytebuddy/implementation/MethodCall;

    move-result-object v7

    if-eqz p3, :cond_6

    iget-object p3, p0, Lorg/mockito/internal/creation/bytebuddy/ModuleHandler$ModuleSystemFound;->addExports:Ljava/lang/reflect/Method;

    .line 183
    invoke-static {p3}, Lnet/bytebuddy/implementation/MethodCall;->invoke(Ljava/lang/reflect/Method;)Lnet/bytebuddy/implementation/MethodCall$WithoutSpecifiedTarget;

    move-result-object p3

    .line 184
    invoke-virtual {p3, v7}, Lnet/bytebuddy/implementation/MethodCall$WithoutSpecifiedTarget;->onMethodCall(Lnet/bytebuddy/implementation/MethodCall;)Lnet/bytebuddy/implementation/MethodCall;

    move-result-object p3

    .line 185
    invoke-virtual {p2}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p3, p2}, Lnet/bytebuddy/implementation/MethodCall;->with([Ljava/lang/Object;)Lnet/bytebuddy/implementation/MethodCall;

    move-result-object p2

    .line 186
    invoke-virtual {p2, v0}, Lnet/bytebuddy/implementation/MethodCall;->withMethodCall(Lnet/bytebuddy/implementation/MethodCall;)Lnet/bytebuddy/implementation/MethodCall;

    move-result-object p2

    .line 183
    invoke-interface {v5, p2}, Lnet/bytebuddy/implementation/Implementation$Composable;->andThen(Lnet/bytebuddy/implementation/Implementation$Composable;)Lnet/bytebuddy/implementation/Implementation$Composable;

    move-result-object v5

    :cond_6
    if-eqz p4, :cond_7

    iget-object p2, p0, Lorg/mockito/internal/creation/bytebuddy/ModuleHandler$ModuleSystemFound;->addReads:Ljava/lang/reflect/Method;

    .line 189
    invoke-static {p2}, Lnet/bytebuddy/implementation/MethodCall;->invoke(Ljava/lang/reflect/Method;)Lnet/bytebuddy/implementation/MethodCall$WithoutSpecifiedTarget;

    move-result-object p2

    .line 190
    invoke-virtual {p2, v7}, Lnet/bytebuddy/implementation/MethodCall$WithoutSpecifiedTarget;->onMethodCall(Lnet/bytebuddy/implementation/MethodCall;)Lnet/bytebuddy/implementation/MethodCall;

    move-result-object p2

    .line 191
    invoke-virtual {p2, v0}, Lnet/bytebuddy/implementation/MethodCall;->withMethodCall(Lnet/bytebuddy/implementation/MethodCall;)Lnet/bytebuddy/implementation/MethodCall;

    move-result-object p2

    .line 189
    invoke-interface {v5, p2}, Lnet/bytebuddy/implementation/Implementation$Composable;->andThen(Lnet/bytebuddy/implementation/Implementation$Composable;)Lnet/bytebuddy/implementation/Implementation$Composable;

    move-result-object v5

    :cond_7
    :try_start_1
    iget-object p2, p0, Lorg/mockito/internal/creation/bytebuddy/ModuleHandler$ModuleSystemFound;->byteBuddy:Lnet/bytebuddy/ByteBuddy;

    .line 194
    const-class p3, Ljava/lang/Object;

    invoke-virtual {p2, p3}, Lnet/bytebuddy/ByteBuddy;->subclass(Ljava/lang/Class;)Lnet/bytebuddy/dynamic/DynamicType$Builder;

    move-result-object p2

    const-string p3, "%s$%s$%d"

    const/4 p4, 0x3

    new-array p4, p4, [Ljava/lang/Object;

    .line 195
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p4, v2

    const-string v0, "MockitoModuleProbe"

    aput-object v0, p4, v1

    iget-object v0, p0, Lorg/mockito/internal/creation/bytebuddy/ModuleHandler$ModuleSystemFound;->random:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p4, v6

    invoke-static {p3, p4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, p3}, Lnet/bytebuddy/dynamic/DynamicType$Builder;->name(Ljava/lang/String;)Lnet/bytebuddy/dynamic/DynamicType$Builder;

    move-result-object p2

    .line 196
    invoke-static {}, Lnet/bytebuddy/matcher/ElementMatchers;->isTypeInitializer()Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p3

    invoke-interface {p2, p3}, Lnet/bytebuddy/dynamic/DynamicType$Builder;->invokable(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ImplementationDefinition;

    move-result-object p2

    invoke-interface {p2, v5}, Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ImplementationDefinition;->intercept(Lnet/bytebuddy/implementation/Implementation;)Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ReceiverTypeDefinition;

    move-result-object p2

    .line 197
    invoke-interface {p2}, Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ReceiverTypeDefinition;->make()Lnet/bytebuddy/dynamic/DynamicType$Unloaded;

    move-result-object p2

    .line 198
    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p3

    iget-object p4, p0, Lorg/mockito/internal/creation/bytebuddy/ModuleHandler$ModuleSystemFound;->loader:Lorg/mockito/internal/creation/bytebuddy/SubclassLoader;

    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-interface {p4, p1, v0, v2}, Lorg/mockito/internal/creation/bytebuddy/SubclassLoader;->resolveStrategy(Ljava/lang/Class;Ljava/lang/ClassLoader;Z)Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy;

    move-result-object p4

    invoke-interface {p2, p3, p4}, Lnet/bytebuddy/dynamic/DynamicType$Unloaded;->load(Ljava/lang/ClassLoader;Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy;)Lnet/bytebuddy/dynamic/DynamicType$Loaded;

    move-result-object p2

    .line 199
    invoke-interface {p2}, Lnet/bytebuddy/dynamic/DynamicType$Loaded;->getLoaded()Ljava/lang/Class;

    move-result-object p2

    .line 200
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p3

    .line 194
    invoke-static {p2, v1, p3}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p2

    .line 202
    new-instance p3, Lorg/mockito/exceptions/base/MockitoException;

    new-instance p4, Ljava/lang/StringBuilder;

    const-string v0, "Could not force module adjustment of the module of "

    invoke-direct {p4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1, v4, v3}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lorg/mockito/internal/util/StringUtil;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1, p2}, Lorg/mockito/exceptions/base/MockitoException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p3

    :catch_1
    move-exception p2

    .line 174
    new-instance p3, Lorg/mockito/exceptions/base/MockitoException;

    new-instance p4, Ljava/lang/StringBuilder;

    const-string v0, "Could not create a carrier for making the Mockito type visible to "

    invoke-direct {p4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1, v4, v3}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lorg/mockito/internal/util/StringUtil;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1, p2}, Lorg/mockito/exceptions/base/MockitoException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p3

    .line 145
    :cond_8
    new-instance v0, Lorg/mockito/exceptions/base/MockitoException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " is declared by the bootstrap loader and cannot be adjusted"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Requires package export to "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Requires adjusted reading of "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p4, "Cannot adjust module graph for modules in the bootstrap loader"

    filled-new-array {p4, v4, p1, p3, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lorg/mockito/internal/util/StringUtil;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/mockito/exceptions/base/MockitoException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method canRead(Ljava/lang/Class;Ljava/lang/Class;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    iget-object v0, p0, Lorg/mockito/internal/creation/bytebuddy/ModuleHandler$ModuleSystemFound;->canRead:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lorg/mockito/internal/creation/bytebuddy/ModuleHandler$ModuleSystemFound;->getModule:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    .line 85
    invoke-static {v1, p1, v3}, Lorg/mockito/internal/creation/bytebuddy/ModuleHandler$ModuleSystemFound;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iget-object v1, p0, Lorg/mockito/internal/creation/bytebuddy/ModuleHandler$ModuleSystemFound;->getModule:Ljava/lang/reflect/Method;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, p2, v2}, Lorg/mockito/internal/creation/bytebuddy/ModuleHandler$ModuleSystemFound;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {v0, p1, p2}, Lorg/mockito/internal/creation/bytebuddy/ModuleHandler$ModuleSystemFound;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method injectionBase(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;
    .locals 4
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

    const/16 v0, 0x2e

    .line 106
    invoke-virtual {p2, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 107
    const-class v0, Lorg/mockito/codegen/InjectionBase;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    if-ne p1, v0, :cond_0

    const-class v0, Lorg/mockito/codegen/InjectionBase;

    invoke-virtual {v0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    const-class p1, Lorg/mockito/codegen/InjectionBase;

    return-object p1

    .line 110
    :cond_0
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lorg/mockito/internal/creation/bytebuddy/ModuleHandler$ModuleSystemFound;->injectonBaseSuffix:I

    .line 114
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-class v3, Lorg/mockito/codegen/InjectionBase;

    const-string v3, "InjectionBase"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "$"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    :try_start_1
    invoke-static {v0, v1, p1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v2

    .line 120
    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne v0, p1, :cond_1

    .line 121
    :try_start_2
    monitor-exit p0

    return-object v2

    :cond_1
    move v0, v3

    goto :goto_0

    :catch_0
    iget-object p2, p0, Lorg/mockito/internal/creation/bytebuddy/ModuleHandler$ModuleSystemFound;->byteBuddy:Lnet/bytebuddy/ByteBuddy;

    .line 127
    const-class v2, Ljava/lang/Object;

    sget-object v3, Lnet/bytebuddy/dynamic/scaffold/subclass/ConstructorStrategy$Default;->NO_CONSTRUCTORS:Lnet/bytebuddy/dynamic/scaffold/subclass/ConstructorStrategy$Default;

    invoke-virtual {p2, v2, v3}, Lnet/bytebuddy/ByteBuddy;->subclass(Ljava/lang/Class;Lnet/bytebuddy/dynamic/scaffold/subclass/ConstructorStrategy;)Lnet/bytebuddy/dynamic/DynamicType$Builder;

    move-result-object p2

    .line 128
    invoke-interface {p2, v0}, Lnet/bytebuddy/dynamic/DynamicType$Builder;->name(Ljava/lang/String;)Lnet/bytebuddy/dynamic/DynamicType$Builder;

    move-result-object p2

    .line 129
    invoke-interface {p2}, Lnet/bytebuddy/dynamic/DynamicType$Builder;->make()Lnet/bytebuddy/dynamic/DynamicType$Unloaded;

    move-result-object p2

    iget-object v0, p0, Lorg/mockito/internal/creation/bytebuddy/ModuleHandler$ModuleSystemFound;->loader:Lorg/mockito/internal/creation/bytebuddy/SubclassLoader;

    const-class v2, Lorg/mockito/codegen/InjectionBase;

    .line 130
    invoke-interface {v0, v2, p1, v1}, Lorg/mockito/internal/creation/bytebuddy/SubclassLoader;->resolveStrategy(Ljava/lang/Class;Ljava/lang/ClassLoader;Z)Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy;

    move-result-object v0

    invoke-interface {p2, p1, v0}, Lnet/bytebuddy/dynamic/DynamicType$Unloaded;->load(Ljava/lang/ClassLoader;Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy;)Lnet/bytebuddy/dynamic/DynamicType$Loaded;

    move-result-object p1

    .line 131
    invoke-interface {p1}, Lnet/bytebuddy/dynamic/DynamicType$Loaded;->getLoaded()Ljava/lang/Class;

    move-result-object p1

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    .line 132
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method isExported(Ljava/lang/Class;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 90
    invoke-virtual {p1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    iget-object v0, p0, Lorg/mockito/internal/creation/bytebuddy/ModuleHandler$ModuleSystemFound;->isExportedUnqualified:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lorg/mockito/internal/creation/bytebuddy/ModuleHandler$ModuleSystemFound;->getModule:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    .line 93
    invoke-static {v1, p1, v2}, Lorg/mockito/internal/creation/bytebuddy/ModuleHandler$ModuleSystemFound;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lorg/mockito/internal/creation/bytebuddy/ModuleHandler$ModuleSystemFound;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method isExported(Ljava/lang/Class;Ljava/lang/Class;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 98
    invoke-virtual {p1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    iget-object v0, p0, Lorg/mockito/internal/creation/bytebuddy/ModuleHandler$ModuleSystemFound;->isExported:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lorg/mockito/internal/creation/bytebuddy/ModuleHandler$ModuleSystemFound;->getModule:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    .line 101
    invoke-static {v1, p1, v3}, Lorg/mockito/internal/creation/bytebuddy/ModuleHandler$ModuleSystemFound;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object p1

    iget-object v3, p0, Lorg/mockito/internal/creation/bytebuddy/ModuleHandler$ModuleSystemFound;->getModule:Ljava/lang/reflect/Method;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v3, p2, v2}, Lorg/mockito/internal/creation/bytebuddy/ModuleHandler$ModuleSystemFound;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lorg/mockito/internal/creation/bytebuddy/ModuleHandler$ModuleSystemFound;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method isOpened(Ljava/lang/Class;Ljava/lang/Class;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 77
    invoke-virtual {p1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    iget-object v0, p0, Lorg/mockito/internal/creation/bytebuddy/ModuleHandler$ModuleSystemFound;->isOpen:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lorg/mockito/internal/creation/bytebuddy/ModuleHandler$ModuleSystemFound;->getModule:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    .line 80
    invoke-static {v1, p1, v3}, Lorg/mockito/internal/creation/bytebuddy/ModuleHandler$ModuleSystemFound;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object p1

    iget-object v3, p0, Lorg/mockito/internal/creation/bytebuddy/ModuleHandler$ModuleSystemFound;->getModule:Ljava/lang/reflect/Method;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v3, p2, v2}, Lorg/mockito/internal/creation/bytebuddy/ModuleHandler$ModuleSystemFound;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lorg/mockito/internal/creation/bytebuddy/ModuleHandler$ModuleSystemFound;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method
