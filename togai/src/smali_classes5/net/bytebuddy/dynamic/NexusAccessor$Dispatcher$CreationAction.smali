.class public final enum Lnet/bytebuddy/dynamic/NexusAccessor$Dispatcher$CreationAction;
.super Ljava/lang/Enum;
.source "NexusAccessor.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/dynamic/NexusAccessor$Dispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CreationAction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/dynamic/NexusAccessor$Dispatcher$CreationAction;",
        ">;",
        "Ljava/security/PrivilegedAction<",
        "Lnet/bytebuddy/dynamic/NexusAccessor$Dispatcher;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/dynamic/NexusAccessor$Dispatcher$CreationAction;

.field public static final enum INSTANCE:Lnet/bytebuddy/dynamic/NexusAccessor$Dispatcher$CreationAction;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 210
    new-instance v0, Lnet/bytebuddy/dynamic/NexusAccessor$Dispatcher$CreationAction;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/bytebuddy/dynamic/NexusAccessor$Dispatcher$CreationAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/bytebuddy/dynamic/NexusAccessor$Dispatcher$CreationAction;->INSTANCE:Lnet/bytebuddy/dynamic/NexusAccessor$Dispatcher$CreationAction;

    filled-new-array {v0}, [Lnet/bytebuddy/dynamic/NexusAccessor$Dispatcher$CreationAction;

    move-result-object v0

    sput-object v0, Lnet/bytebuddy/dynamic/NexusAccessor$Dispatcher$CreationAction;->$VALUES:[Lnet/bytebuddy/dynamic/NexusAccessor$Dispatcher$CreationAction;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 205
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/dynamic/NexusAccessor$Dispatcher$CreationAction;
    .locals 1

    const-class v0, Lnet/bytebuddy/dynamic/NexusAccessor$Dispatcher$CreationAction;

    .line 205
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/bytebuddy/dynamic/NexusAccessor$Dispatcher$CreationAction;

    return-object p0
.end method

.method public static values()[Lnet/bytebuddy/dynamic/NexusAccessor$Dispatcher$CreationAction;
    .locals 1

    sget-object v0, Lnet/bytebuddy/dynamic/NexusAccessor$Dispatcher$CreationAction;->$VALUES:[Lnet/bytebuddy/dynamic/NexusAccessor$Dispatcher$CreationAction;

    .line 205
    invoke-virtual {v0}, [Lnet/bytebuddy/dynamic/NexusAccessor$Dispatcher$CreationAction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/dynamic/NexusAccessor$Dispatcher$CreationAction;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1

    .line 205
    invoke-virtual {p0}, Lnet/bytebuddy/dynamic/NexusAccessor$Dispatcher$CreationAction;->run()Lnet/bytebuddy/dynamic/NexusAccessor$Dispatcher;

    move-result-object v0

    return-object v0
.end method

.method public run()Lnet/bytebuddy/dynamic/NexusAccessor$Dispatcher;
    .locals 13

    const-string v0, "clean"

    const-string v1, "register"

    const-string v2, "net.bytebuddy.nexus.disabled"

    .line 217
    invoke-static {v2}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 218
    new-instance v0, Lnet/bytebuddy/dynamic/NexusAccessor$Dispatcher$Unavailable;

    const-string v1, "Nexus injection was explicitly disabled"

    invoke-direct {v0, v1}, Lnet/bytebuddy/dynamic/NexusAccessor$Dispatcher$Unavailable;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_0
    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x5

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 221
    :try_start_0
    new-instance v8, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingReflection;

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v9

    sget-object v10, Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy;->NO_PROTECTION_DOMAIN:Ljava/security/ProtectionDomain;

    invoke-direct {v8, v9, v10}, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingReflection;-><init>(Ljava/lang/ClassLoader;Ljava/security/ProtectionDomain;)V

    const-class v9, Lnet/bytebuddy/dynamic/Nexus;

    .line 222
    invoke-static {v9}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v9

    const-class v10, Lnet/bytebuddy/dynamic/Nexus;

    invoke-static {v10}, Lnet/bytebuddy/dynamic/ClassFileLocator$ForClassLoader;->read(Ljava/lang/Class;)[B

    move-result-object v10

    invoke-static {v9, v10}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v9

    invoke-virtual {v8, v9}, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingReflection;->inject(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v8

    const-class v9, Lnet/bytebuddy/dynamic/Nexus;

    .line 223
    invoke-static {v9}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Class;

    .line 224
    new-instance v9, Lnet/bytebuddy/dynamic/NexusAccessor$Dispatcher$Available;

    new-array v10, v5, [Ljava/lang/Class;

    const-class v11, Ljava/lang/String;

    aput-object v11, v10, v7

    const-class v11, Ljava/lang/ClassLoader;

    aput-object v11, v10, v6

    const-class v11, Ljava/lang/ref/ReferenceQueue;

    aput-object v11, v10, v4

    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v11, v10, v3

    const-class v11, Ljava/lang/Object;

    aput-object v11, v10, v2

    invoke-virtual {v8, v1, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10

    new-array v11, v6, [Ljava/lang/Class;

    const-class v12, Ljava/lang/ref/Reference;

    aput-object v12, v11, v7

    .line 225
    invoke-virtual {v8, v0, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    invoke-direct {v9, v10, v8}, Lnet/bytebuddy/dynamic/NexusAccessor$Dispatcher$Available;-><init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v9

    :catch_0
    move-exception v8

    .line 228
    :try_start_1
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v9

    const-class v10, Lnet/bytebuddy/dynamic/Nexus;

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    .line 229
    new-instance v10, Lnet/bytebuddy/dynamic/NexusAccessor$Dispatcher$Available;

    new-array v5, v5, [Ljava/lang/Class;

    const-class v11, Ljava/lang/String;

    aput-object v11, v5, v7

    const-class v11, Ljava/lang/ClassLoader;

    aput-object v11, v5, v6

    const-class v11, Ljava/lang/ref/ReferenceQueue;

    aput-object v11, v5, v4

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v5, v3

    const-class v3, Ljava/lang/Object;

    aput-object v3, v5, v2

    invoke-virtual {v9, v1, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/Class;

    const-class v3, Ljava/lang/ref/Reference;

    aput-object v3, v2, v7

    .line 230
    invoke-virtual {v9, v0, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-direct {v10, v1, v0}, Lnet/bytebuddy/dynamic/NexusAccessor$Dispatcher$Available;-><init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object v10

    .line 232
    :catch_1
    new-instance v0, Lnet/bytebuddy/dynamic/NexusAccessor$Dispatcher$Unavailable;

    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/bytebuddy/dynamic/NexusAccessor$Dispatcher$Unavailable;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
