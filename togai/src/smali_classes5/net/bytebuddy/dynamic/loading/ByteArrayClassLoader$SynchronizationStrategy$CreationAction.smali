.class public final enum Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$SynchronizationStrategy$CreationAction;
.super Ljava/lang/Enum;
.source "ByteArrayClassLoader.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$SynchronizationStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CreationAction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$SynchronizationStrategy$CreationAction;",
        ">;",
        "Ljava/security/PrivilegedAction<",
        "Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$SynchronizationStrategy$Initializable;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$SynchronizationStrategy$CreationAction;

.field public static final enum INSTANCE:Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$SynchronizationStrategy$CreationAction;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 425
    new-instance v0, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$SynchronizationStrategy$CreationAction;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$SynchronizationStrategy$CreationAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$SynchronizationStrategy$CreationAction;->INSTANCE:Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$SynchronizationStrategy$CreationAction;

    filled-new-array {v0}, [Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$SynchronizationStrategy$CreationAction;

    move-result-object v0

    sput-object v0, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$SynchronizationStrategy$CreationAction;->$VALUES:[Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$SynchronizationStrategy$CreationAction;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 420
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$SynchronizationStrategy$CreationAction;
    .locals 1

    const-class v0, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$SynchronizationStrategy$CreationAction;

    .line 420
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$SynchronizationStrategy$CreationAction;

    return-object p0
.end method

.method public static values()[Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$SynchronizationStrategy$CreationAction;
    .locals 1

    sget-object v0, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$SynchronizationStrategy$CreationAction;->$VALUES:[Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$SynchronizationStrategy$CreationAction;

    .line 420
    invoke-virtual {v0}, [Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$SynchronizationStrategy$CreationAction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$SynchronizationStrategy$CreationAction;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1

    .line 420
    invoke-virtual {p0}, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$SynchronizationStrategy$CreationAction;->run()Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$SynchronizationStrategy$Initializable;

    move-result-object v0

    return-object v0
.end method

.method public run()Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$SynchronizationStrategy$Initializable;
    .locals 13

    const-string v0, "getClassLoadingLock"

    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_0
    const-string v3, "java.lang.invoke.MethodType"

    .line 434
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-string v4, "java.lang.invoke.MethodHandle"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 435
    new-instance v5, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$SynchronizationStrategy$ForJava8CapableVm;

    const-string v6, "java.lang.invoke.MethodHandles$Lookup"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    const-string v7, "findVirtual"

    const/4 v8, 0x3

    new-array v9, v8, [Ljava/lang/Class;

    const-class v10, Ljava/lang/Class;

    aput-object v10, v9, v1

    const-class v10, Ljava/lang/String;

    aput-object v10, v9, v2

    const/4 v10, 0x2

    aput-object v3, v9, v10

    .line 436
    invoke-virtual {v6, v7, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 437
    invoke-static {}, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader;->access$000()Ljava/lang/Object;

    move-result-object v7

    new-array v8, v8, [Ljava/lang/Object;

    const-class v9, Ljava/lang/ClassLoader;

    aput-object v9, v8, v1

    aput-object v0, v8, v2

    const-string v9, "methodType"

    new-array v11, v10, [Ljava/lang/Class;

    const-class v12, Ljava/lang/Class;

    aput-object v12, v11, v1

    const-class v12, [Ljava/lang/Class;

    aput-object v12, v11, v2

    invoke-virtual {v3, v9, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v9, v10, [Ljava/lang/Object;

    const-class v11, Ljava/lang/Object;

    aput-object v11, v9, v1

    new-array v11, v2, [Ljava/lang/Class;

    const-class v12, Ljava/lang/String;

    aput-object v12, v11, v1

    aput-object v11, v9, v2

    const/4 v11, 0x0

    .line 439
    invoke-virtual {v3, v11, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v8, v10

    .line 437
    invoke-virtual {v6, v7, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const-string v6, "bindTo"

    new-array v7, v2, [Ljava/lang/Class;

    const-class v8, Ljava/lang/Object;

    aput-object v8, v7, v1

    .line 440
    invoke-virtual {v4, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    const-string v7, "invokeWithArguments"

    new-array v8, v2, [Ljava/lang/Class;

    const-class v9, [Ljava/lang/Object;

    aput-object v9, v8, v1

    .line 441
    invoke-virtual {v4, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    invoke-direct {v5, v3, v6, v4}, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$SynchronizationStrategy$ForJava8CapableVm;-><init>(Ljava/lang/Object;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v5

    .line 445
    :catch_0
    :try_start_1
    invoke-static {}, Lnet/bytebuddy/ClassFileVersion;->ofThisVm()Lnet/bytebuddy/ClassFileVersion;

    move-result-object v3

    sget-object v4, Lnet/bytebuddy/ClassFileVersion;->JAVA_V9:Lnet/bytebuddy/ClassFileVersion;

    invoke-virtual {v3, v4}, Lnet/bytebuddy/ClassFileVersion;->isAtLeast(Lnet/bytebuddy/ClassFileVersion;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-class v3, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    if-nez v3, :cond_0

    sget-object v0, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$SynchronizationStrategy$ForLegacyVm;->INSTANCE:Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$SynchronizationStrategy$ForLegacyVm;

    goto :goto_0

    :cond_0
    new-instance v3, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$SynchronizationStrategy$ForJava7CapableVm;

    const-class v4, Ljava/lang/ClassLoader;

    new-array v2, v2, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    aput-object v5, v2, v1

    .line 447
    invoke-virtual {v4, v0, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-direct {v3, v0}, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$SynchronizationStrategy$ForJava7CapableVm;-><init>(Ljava/lang/reflect/Method;)V

    move-object v0, v3

    :goto_0
    check-cast v0, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$SynchronizationStrategy$Initializable;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object v0

    .line 450
    :catch_1
    sget-object v0, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$SynchronizationStrategy$ForLegacyVm;->INSTANCE:Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$SynchronizationStrategy$ForLegacyVm;

    return-object v0
.end method
