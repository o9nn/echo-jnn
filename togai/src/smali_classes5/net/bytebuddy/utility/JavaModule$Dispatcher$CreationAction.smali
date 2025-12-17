.class public final enum Lnet/bytebuddy/utility/JavaModule$Dispatcher$CreationAction;
.super Ljava/lang/Enum;
.source "JavaModule.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/utility/JavaModule$Dispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CreationAction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/utility/JavaModule$Dispatcher$CreationAction;",
        ">;",
        "Ljava/security/PrivilegedAction<",
        "Lnet/bytebuddy/utility/JavaModule$Dispatcher;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/utility/JavaModule$Dispatcher$CreationAction;

.field public static final enum INSTANCE:Lnet/bytebuddy/utility/JavaModule$Dispatcher$CreationAction;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 256
    new-instance v0, Lnet/bytebuddy/utility/JavaModule$Dispatcher$CreationAction;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/bytebuddy/utility/JavaModule$Dispatcher$CreationAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/bytebuddy/utility/JavaModule$Dispatcher$CreationAction;->INSTANCE:Lnet/bytebuddy/utility/JavaModule$Dispatcher$CreationAction;

    filled-new-array {v0}, [Lnet/bytebuddy/utility/JavaModule$Dispatcher$CreationAction;

    move-result-object v0

    sput-object v0, Lnet/bytebuddy/utility/JavaModule$Dispatcher$CreationAction;->$VALUES:[Lnet/bytebuddy/utility/JavaModule$Dispatcher$CreationAction;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 251
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/utility/JavaModule$Dispatcher$CreationAction;
    .locals 1

    const-class v0, Lnet/bytebuddy/utility/JavaModule$Dispatcher$CreationAction;

    .line 251
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/bytebuddy/utility/JavaModule$Dispatcher$CreationAction;

    return-object p0
.end method

.method public static values()[Lnet/bytebuddy/utility/JavaModule$Dispatcher$CreationAction;
    .locals 1

    sget-object v0, Lnet/bytebuddy/utility/JavaModule$Dispatcher$CreationAction;->$VALUES:[Lnet/bytebuddy/utility/JavaModule$Dispatcher$CreationAction;

    .line 251
    invoke-virtual {v0}, [Lnet/bytebuddy/utility/JavaModule$Dispatcher$CreationAction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/utility/JavaModule$Dispatcher$CreationAction;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1

    .line 251
    invoke-virtual {p0}, Lnet/bytebuddy/utility/JavaModule$Dispatcher$CreationAction;->run()Lnet/bytebuddy/utility/JavaModule$Dispatcher;

    move-result-object v0

    return-object v0
.end method

.method public run()Lnet/bytebuddy/utility/JavaModule$Dispatcher;
    .locals 14

    :try_start_0
    const-string v0, "java.lang.Module"

    .line 264
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 265
    new-instance v10, Lnet/bytebuddy/utility/JavaModule$Dispatcher$Enabled;

    const-class v1, Ljava/lang/Class;

    const-string v2, "getModule"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const-string v1, "getClassLoader"

    new-array v4, v3, [Ljava/lang/Class;

    .line 266
    invoke-virtual {v0, v1, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    const-string v1, "isNamed"

    new-array v5, v3, [Ljava/lang/Class;

    .line 267
    invoke-virtual {v0, v1, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    const-string v1, "getName"

    new-array v6, v3, [Ljava/lang/Class;

    .line 268
    invoke-virtual {v0, v1, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    const-string v1, "getResourceAsStream"

    const/4 v7, 0x1

    new-array v8, v7, [Ljava/lang/Class;

    const-class v9, Ljava/lang/String;

    aput-object v9, v8, v3

    .line 269
    invoke-virtual {v0, v1, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    const-string v1, "canRead"

    new-array v9, v7, [Ljava/lang/Class;

    aput-object v0, v9, v3

    .line 270
    invoke-virtual {v0, v1, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    const-class v1, Ljava/lang/instrument/Instrumentation;

    const-string v11, "isModifiableModule"

    new-array v12, v7, [Ljava/lang/Class;

    aput-object v0, v12, v3

    .line 271
    invoke-virtual {v1, v11, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v11

    const-class v1, Ljava/lang/instrument/Instrumentation;

    const-string v12, "redefineModule"

    const/4 v13, 0x6

    new-array v13, v13, [Ljava/lang/Class;

    aput-object v0, v13, v3

    const-class v0, Ljava/util/Set;

    aput-object v0, v13, v7

    const-class v0, Ljava/util/Map;

    const/4 v3, 0x2

    aput-object v0, v13, v3

    const-class v0, Ljava/util/Map;

    const/4 v3, 0x3

    aput-object v0, v13, v3

    const-class v0, Ljava/util/Set;

    const/4 v3, 0x4

    aput-object v0, v13, v3

    const-class v0, Ljava/util/Map;

    const/4 v3, 0x5

    aput-object v0, v13, v3

    .line 272
    invoke-virtual {v1, v12, v13}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    move-object v1, v10

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v8

    move-object v7, v9

    move-object v8, v11

    move-object v9, v0

    invoke-direct/range {v1 .. v9}, Lnet/bytebuddy/utility/JavaModule$Dispatcher$Enabled;-><init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v10

    .line 274
    :catch_0
    sget-object v0, Lnet/bytebuddy/utility/JavaModule$Dispatcher$Disabled;->INSTANCE:Lnet/bytebuddy/utility/JavaModule$Dispatcher$Disabled;

    return-object v0
.end method
