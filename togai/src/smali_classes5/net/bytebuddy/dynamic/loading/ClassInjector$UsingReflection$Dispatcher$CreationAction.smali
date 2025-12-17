.class public final enum Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingReflection$Dispatcher$CreationAction;
.super Ljava/lang/Enum;
.source "ClassInjector.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingReflection$Dispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CreationAction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingReflection$Dispatcher$CreationAction;",
        ">;",
        "Ljava/security/PrivilegedAction<",
        "Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingReflection$Dispatcher$Initializable;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingReflection$Dispatcher$CreationAction;

.field public static final enum INSTANCE:Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingReflection$Dispatcher$CreationAction;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 446
    new-instance v0, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingReflection$Dispatcher$CreationAction;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingReflection$Dispatcher$CreationAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingReflection$Dispatcher$CreationAction;->INSTANCE:Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingReflection$Dispatcher$CreationAction;

    filled-new-array {v0}, [Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingReflection$Dispatcher$CreationAction;

    move-result-object v0

    sput-object v0, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingReflection$Dispatcher$CreationAction;->$VALUES:[Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingReflection$Dispatcher$CreationAction;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 441
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingReflection$Dispatcher$CreationAction;
    .locals 1

    const-class v0, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingReflection$Dispatcher$CreationAction;

    .line 441
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingReflection$Dispatcher$CreationAction;

    return-object p0
.end method

.method public static values()[Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingReflection$Dispatcher$CreationAction;
    .locals 1

    sget-object v0, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingReflection$Dispatcher$CreationAction;->$VALUES:[Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingReflection$Dispatcher$CreationAction;

    .line 441
    invoke-virtual {v0}, [Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingReflection$Dispatcher$CreationAction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingReflection$Dispatcher$CreationAction;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1

    .line 441
    invoke-virtual {p0}, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingReflection$Dispatcher$CreationAction;->run()Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingReflection$Dispatcher$Initializable;

    move-result-object v0

    return-object v0
.end method

.method public run()Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingReflection$Dispatcher$Initializable;
    .locals 2

    .line 454
    :try_start_0
    invoke-static {}, Lnet/bytebuddy/utility/JavaModule;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 455
    invoke-static {}, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingUnsafe;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 456
    invoke-static {}, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingReflection$Dispatcher$UsingUnsafeInjection;->make()Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingReflection$Dispatcher$Initializable;

    move-result-object v0

    goto :goto_0

    .line 457
    :cond_0
    invoke-static {}, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingReflection$Dispatcher$UsingUnsafeOverride;->make()Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingReflection$Dispatcher$Initializable;

    move-result-object v0

    :goto_0
    return-object v0

    .line 459
    :cond_1
    invoke-static {}, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingReflection$Dispatcher$Direct;->make()Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingReflection$Dispatcher$Initializable;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 464
    new-instance v1, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingReflection$Dispatcher$Initializable$Unavailable;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingReflection$Dispatcher$Initializable$Unavailable;-><init>(Ljava/lang/String;)V

    return-object v1

    :catch_1
    move-exception v0

    .line 462
    new-instance v1, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingReflection$Dispatcher$Initializable$Unavailable;

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingReflection$Dispatcher$Initializable$Unavailable;-><init>(Ljava/lang/String;)V

    return-object v1
.end method
