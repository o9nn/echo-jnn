.class public final enum Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingUnsafe$Dispatcher$CreationAction;
.super Ljava/lang/Enum;
.source "ClassInjector.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingUnsafe$Dispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CreationAction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingUnsafe$Dispatcher$CreationAction;",
        ">;",
        "Ljava/security/PrivilegedAction<",
        "Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingUnsafe$Dispatcher$Initializable;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingUnsafe$Dispatcher$CreationAction;

.field public static final enum INSTANCE:Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingUnsafe$Dispatcher$CreationAction;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1861
    new-instance v0, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingUnsafe$Dispatcher$CreationAction;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingUnsafe$Dispatcher$CreationAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingUnsafe$Dispatcher$CreationAction;->INSTANCE:Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingUnsafe$Dispatcher$CreationAction;

    filled-new-array {v0}, [Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingUnsafe$Dispatcher$CreationAction;

    move-result-object v0

    sput-object v0, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingUnsafe$Dispatcher$CreationAction;->$VALUES:[Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingUnsafe$Dispatcher$CreationAction;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1856
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingUnsafe$Dispatcher$CreationAction;
    .locals 1

    const-class v0, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingUnsafe$Dispatcher$CreationAction;

    .line 1856
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingUnsafe$Dispatcher$CreationAction;

    return-object p0
.end method

.method public static values()[Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingUnsafe$Dispatcher$CreationAction;
    .locals 1

    sget-object v0, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingUnsafe$Dispatcher$CreationAction;->$VALUES:[Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingUnsafe$Dispatcher$CreationAction;

    .line 1856
    invoke-virtual {v0}, [Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingUnsafe$Dispatcher$CreationAction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingUnsafe$Dispatcher$CreationAction;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1

    .line 1856
    invoke-virtual {p0}, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingUnsafe$Dispatcher$CreationAction;->run()Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingUnsafe$Dispatcher$Initializable;

    move-result-object v0

    return-object v0
.end method

.method public run()Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingUnsafe$Dispatcher$Initializable;
    .locals 19

    const-class v1, [B

    const-string v2, "override"

    const-string v3, "defineClass"

    const-string v4, "theUnsafe"

    const-string v5, "net.bytebuddy.mirror."

    const-string v0, "net.bytebuddy.safe"

    .line 1868
    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1869
    new-instance v0, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingUnsafe$Dispatcher$Unavailable;

    const-string v1, "Use of Unsafe was disabled by system property"

    invoke-direct {v0, v1}, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingUnsafe$Dispatcher$Unavailable;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_0
    :try_start_0
    const-string v0, "sun.misc.Unsafe"

    .line 1872
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 1873
    invoke-virtual {v6, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v7, 0x1

    .line 1874
    invoke-virtual {v0, v7}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const/4 v8, 0x0

    .line 1875
    invoke-virtual {v0, v8}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    const/4 v10, 0x5

    const/4 v11, 0x4

    const/4 v12, 0x6

    const/4 v13, 0x3

    const/4 v14, 0x2

    const/4 v15, 0x0

    :try_start_1
    new-array v0, v12, [Ljava/lang/Class;

    .line 1877
    const-class v16, Ljava/lang/String;

    aput-object v16, v0, v15

    aput-object v1, v0, v7

    sget-object v16, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v16, v0, v14

    sget-object v16, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v16, v0, v13

    const-class v16, Ljava/lang/ClassLoader;

    aput-object v16, v0, v11

    const-class v16, Ljava/security/ProtectionDomain;

    aput-object v16, v0, v10

    invoke-virtual {v6, v3, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1884
    invoke-virtual {v0, v7}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 1885
    new-instance v8, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingUnsafe$Dispatcher$Enabled;

    invoke-direct {v8, v9, v0}, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingUnsafe$Dispatcher$Enabled;-><init>(Ljava/lang/Object;Ljava/lang/reflect/Method;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object v8

    :catch_0
    move-exception v0

    .line 1890
    :try_start_2
    const-class v8, Ljava/lang/reflect/AccessibleObject;

    invoke-virtual {v8, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2
    :try_end_2
    .catch Ljava/lang/NoSuchFieldException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 1896
    :catch_1
    :try_start_3
    new-instance v8, Lnet/bytebuddy/ByteBuddy;

    invoke-direct {v8}, Lnet/bytebuddy/ByteBuddy;-><init>()V

    const-class v10, Ljava/lang/reflect/AccessibleObject;

    .line 1897
    invoke-virtual {v8, v10}, Lnet/bytebuddy/ByteBuddy;->redefine(Ljava/lang/Class;)Lnet/bytebuddy/dynamic/DynamicType$Builder;

    move-result-object v8

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v5, Ljava/lang/reflect/AccessibleObject;

    .line 1898
    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v8, v5}, Lnet/bytebuddy/dynamic/DynamicType$Builder;->name(Ljava/lang/String;)Lnet/bytebuddy/dynamic/DynamicType$Builder;

    move-result-object v5

    new-instance v8, Lnet/bytebuddy/asm/MemberRemoval;

    invoke-direct {v8}, Lnet/bytebuddy/asm/MemberRemoval;-><init>()V

    .line 1899
    invoke-static {}, Lnet/bytebuddy/matcher/ElementMatchers;->any()Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v10

    invoke-virtual {v8, v10}, Lnet/bytebuddy/asm/MemberRemoval;->stripInvokables(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/asm/MemberRemoval;

    move-result-object v8

    invoke-interface {v5, v8}, Lnet/bytebuddy/dynamic/DynamicType$Builder;->visit(Lnet/bytebuddy/asm/AsmVisitorWrapper;)Lnet/bytebuddy/dynamic/DynamicType$Builder;

    move-result-object v5

    .line 1900
    invoke-interface {v5}, Lnet/bytebuddy/dynamic/DynamicType$Builder;->make()Lnet/bytebuddy/dynamic/DynamicType$Unloaded;

    move-result-object v5

    const-class v8, Ljava/lang/reflect/AccessibleObject;

    .line 1901
    invoke-virtual {v8}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v8

    sget-object v10, Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$Default;->WRAPPER:Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$Default;

    invoke-interface {v5, v8, v10}, Lnet/bytebuddy/dynamic/DynamicType$Unloaded;->load(Ljava/lang/ClassLoader;Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy;)Lnet/bytebuddy/dynamic/DynamicType$Loaded;

    move-result-object v5

    .line 1902
    invoke-interface {v5}, Lnet/bytebuddy/dynamic/DynamicType$Loaded;->getLoaded()Ljava/lang/Class;

    move-result-object v5

    .line 1903
    invoke-virtual {v5, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    :goto_0
    const-string v5, "objectFieldOffset"

    new-array v8, v7, [Ljava/lang/Class;

    .line 1905
    const-class v10, Ljava/lang/reflect/Field;

    aput-object v10, v8, v15

    .line 1906
    invoke-virtual {v6, v5, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    .line 1907
    invoke-virtual {v5, v9, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 1905
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v17

    const-string v2, "putBoolean"

    new-array v5, v13, [Ljava/lang/Class;

    .line 1908
    const-class v8, Ljava/lang/Object;

    aput-object v8, v5, v15

    sget-object v8, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v8, v5, v7

    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v8, v5, v14

    invoke-virtual {v6, v2, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const-string v5, "jdk.internal.misc.Unsafe"

    .line 1909
    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 1910
    invoke-virtual {v5, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    new-array v6, v13, [Ljava/lang/Object;

    aput-object v4, v6, v15

    .line 1911
    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v6, v14

    invoke-virtual {v2, v9, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    new-array v6, v12, [Ljava/lang/Class;

    .line 1912
    const-class v8, Ljava/lang/String;

    aput-object v8, v6, v15

    aput-object v1, v6, v7

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v1, v6, v14

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v1, v6, v13

    const-class v1, Ljava/lang/ClassLoader;

    aput-object v1, v6, v11

    const-class v1, Ljava/security/ProtectionDomain;

    const/4 v8, 0x5

    aput-object v1, v6, v8

    invoke-virtual {v5, v3, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v3, v13, [Ljava/lang/Object;

    aput-object v1, v3, v15

    .line 1919
    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v14

    invoke-virtual {v2, v9, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1920
    new-instance v2, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingUnsafe$Dispatcher$Enabled;

    const/4 v3, 0x0

    invoke-virtual {v4, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingUnsafe$Dispatcher$Enabled;-><init>(Ljava/lang/Object;Ljava/lang/reflect/Method;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    return-object v2

    .line 1922
    :catch_2
    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    :catch_3
    move-exception v0

    .line 1926
    new-instance v1, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingUnsafe$Dispatcher$Unavailable;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingUnsafe$Dispatcher$Unavailable;-><init>(Ljava/lang/String;)V

    return-object v1
.end method
