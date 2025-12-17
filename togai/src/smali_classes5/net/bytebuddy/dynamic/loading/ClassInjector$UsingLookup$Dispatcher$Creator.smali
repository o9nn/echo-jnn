.class public final enum Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingLookup$Dispatcher$Creator;
.super Ljava/lang/Enum;
.source "ClassInjector.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingLookup$Dispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Creator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingLookup$Dispatcher$Creator;",
        ">;",
        "Ljava/security/PrivilegedAction<",
        "Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingLookup$Dispatcher;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingLookup$Dispatcher$Creator;

.field public static final enum INSTANCE:Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingLookup$Dispatcher$Creator;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1494
    new-instance v0, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingLookup$Dispatcher$Creator;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingLookup$Dispatcher$Creator;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingLookup$Dispatcher$Creator;->INSTANCE:Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingLookup$Dispatcher$Creator;

    filled-new-array {v0}, [Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingLookup$Dispatcher$Creator;

    move-result-object v0

    sput-object v0, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingLookup$Dispatcher$Creator;->$VALUES:[Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingLookup$Dispatcher$Creator;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1489
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingLookup$Dispatcher$Creator;
    .locals 1

    const-class v0, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingLookup$Dispatcher$Creator;

    .line 1489
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingLookup$Dispatcher$Creator;

    return-object p0
.end method

.method public static values()[Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingLookup$Dispatcher$Creator;
    .locals 1

    sget-object v0, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingLookup$Dispatcher$Creator;->$VALUES:[Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingLookup$Dispatcher$Creator;

    .line 1489
    invoke-virtual {v0}, [Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingLookup$Dispatcher$Creator;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingLookup$Dispatcher$Creator;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1

    .line 1489
    invoke-virtual {p0}, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingLookup$Dispatcher$Creator;->run()Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingLookup$Dispatcher;

    move-result-object v0

    return-object v0
.end method

.method public run()Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingLookup$Dispatcher;
    .locals 10

    .line 1502
    :try_start_0
    sget-object v0, Lnet/bytebuddy/utility/JavaType;->METHOD_HANDLES_LOOKUP:Lnet/bytebuddy/utility/JavaType;

    invoke-virtual {v0}, Lnet/bytebuddy/utility/JavaType;->load()Ljava/lang/Class;

    move-result-object v0

    .line 1503
    new-instance v7, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingLookup$Dispatcher$ForJava9CapableVm;

    sget-object v1, Lnet/bytebuddy/utility/JavaType;->METHOD_HANDLES:Lnet/bytebuddy/utility/JavaType;

    invoke-virtual {v1}, Lnet/bytebuddy/utility/JavaType;->load()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "privateLookupIn"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const-class v4, Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v4, 0x1

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const-string v1, "lookupClass"

    new-array v3, v5, [Ljava/lang/Class;

    .line 1504
    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    const-string v1, "lookupModes"

    new-array v6, v5, [Ljava/lang/Class;

    .line 1505
    invoke-virtual {v0, v1, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    const-string v1, "dropLookupMode"

    new-array v8, v4, [Ljava/lang/Class;

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v8, v5

    .line 1506
    invoke-virtual {v0, v1, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    const-string v1, "defineClass"

    new-array v4, v4, [Ljava/lang/Class;

    const-class v9, [B

    aput-object v9, v4, v5

    .line 1507
    invoke-virtual {v0, v1, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    move-object v1, v7

    move-object v4, v6

    move-object v5, v8

    move-object v6, v0

    invoke-direct/range {v1 .. v6}, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingLookup$Dispatcher$ForJava9CapableVm;-><init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v7

    .line 1509
    :catch_0
    sget-object v0, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingLookup$Dispatcher$ForLegacyVm;->INSTANCE:Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingLookup$Dispatcher$ForLegacyVm;

    return-object v0
.end method
