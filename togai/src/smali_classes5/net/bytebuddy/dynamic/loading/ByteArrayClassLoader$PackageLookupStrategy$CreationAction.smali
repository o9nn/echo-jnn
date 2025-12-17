.class public final enum Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$PackageLookupStrategy$CreationAction;
.super Ljava/lang/Enum;
.source "ByteArrayClassLoader.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$PackageLookupStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CreationAction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$PackageLookupStrategy$CreationAction;",
        ">;",
        "Ljava/security/PrivilegedAction<",
        "Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$PackageLookupStrategy;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$PackageLookupStrategy$CreationAction;

.field public static final enum INSTANCE:Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$PackageLookupStrategy$CreationAction;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 660
    new-instance v0, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$PackageLookupStrategy$CreationAction;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$PackageLookupStrategy$CreationAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$PackageLookupStrategy$CreationAction;->INSTANCE:Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$PackageLookupStrategy$CreationAction;

    filled-new-array {v0}, [Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$PackageLookupStrategy$CreationAction;

    move-result-object v0

    sput-object v0, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$PackageLookupStrategy$CreationAction;->$VALUES:[Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$PackageLookupStrategy$CreationAction;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 655
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$PackageLookupStrategy$CreationAction;
    .locals 1

    const-class v0, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$PackageLookupStrategy$CreationAction;

    .line 655
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$PackageLookupStrategy$CreationAction;

    return-object p0
.end method

.method public static values()[Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$PackageLookupStrategy$CreationAction;
    .locals 1

    sget-object v0, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$PackageLookupStrategy$CreationAction;->$VALUES:[Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$PackageLookupStrategy$CreationAction;

    .line 655
    invoke-virtual {v0}, [Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$PackageLookupStrategy$CreationAction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$PackageLookupStrategy$CreationAction;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1

    .line 655
    invoke-virtual {p0}, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$PackageLookupStrategy$CreationAction;->run()Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$PackageLookupStrategy;

    move-result-object v0

    return-object v0
.end method

.method public run()Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$PackageLookupStrategy;
    .locals 6

    .line 667
    invoke-static {}, Lnet/bytebuddy/utility/JavaModule;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 669
    :try_start_0
    new-instance v0, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$PackageLookupStrategy$ForJava9CapableVm;

    const-class v1, Ljava/lang/ClassLoader;

    const-string v2, "getDefinedPackage"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$PackageLookupStrategy$ForJava9CapableVm;-><init>(Ljava/lang/reflect/Method;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 671
    :catch_0
    sget-object v0, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$PackageLookupStrategy$ForLegacyVm;->INSTANCE:Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$PackageLookupStrategy$ForLegacyVm;

    return-object v0

    .line 674
    :cond_0
    sget-object v0, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$PackageLookupStrategy$ForLegacyVm;->INSTANCE:Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$PackageLookupStrategy$ForLegacyVm;

    return-object v0
.end method
