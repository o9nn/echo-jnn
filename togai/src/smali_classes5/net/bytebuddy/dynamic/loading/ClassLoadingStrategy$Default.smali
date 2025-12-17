.class public final enum Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$Default;
.super Ljava/lang/Enum;
.source "ClassLoadingStrategy.java"

# interfaces
.implements Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$Configurable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Default"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$Default$WrappingDispatcher;,
        Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$Default$InjectionDispatcher;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$Default;",
        ">;",
        "Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$Configurable<",
        "Ljava/lang/ClassLoader;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$Default;

.field public static final enum CHILD_FIRST:Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$Default;

.field public static final enum CHILD_FIRST_PERSISTENT:Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$Default;

.field private static final DEFAULT_FORBID_EXISTING:Z = true

.field public static final enum INJECTION:Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$Default;

.field public static final enum WRAPPER:Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$Default;

.field public static final enum WRAPPER_PERSISTENT:Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$Default;


# instance fields
.field private final dispatcher:Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$Configurable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$Configurable<",
            "Ljava/lang/ClassLoader;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 68
    new-instance v0, Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$Default;

    new-instance v1, Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$Default$WrappingDispatcher;

    sget-object v2, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$PersistenceHandler;->LATENT:Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$PersistenceHandler;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$Default$WrappingDispatcher;-><init>(Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$PersistenceHandler;Z)V

    const-string v2, "WRAPPER"

    invoke-direct {v0, v2, v3, v1}, Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$Default;-><init>(Ljava/lang/String;ILnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$Configurable;)V

    sput-object v0, Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$Default;->WRAPPER:Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$Default;

    .line 75
    new-instance v1, Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$Default;

    new-instance v2, Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$Default$WrappingDispatcher;

    sget-object v4, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$PersistenceHandler;->MANIFEST:Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$PersistenceHandler;

    invoke-direct {v2, v4, v3}, Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$Default$WrappingDispatcher;-><init>(Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$PersistenceHandler;Z)V

    const-string v3, "WRAPPER_PERSISTENT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v2}, Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$Default;-><init>(Ljava/lang/String;ILnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$Configurable;)V

    sput-object v1, Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$Default;->WRAPPER_PERSISTENT:Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$Default;

    .line 88
    new-instance v2, Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$Default;

    new-instance v3, Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$Default$WrappingDispatcher;

    sget-object v5, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$PersistenceHandler;->LATENT:Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$PersistenceHandler;

    invoke-direct {v3, v5, v4}, Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$Default$WrappingDispatcher;-><init>(Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$PersistenceHandler;Z)V

    const-string v5, "CHILD_FIRST"

    const/4 v6, 0x2

    invoke-direct {v2, v5, v6, v3}, Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$Default;-><init>(Ljava/lang/String;ILnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$Configurable;)V

    sput-object v2, Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$Default;->CHILD_FIRST:Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$Default;

    .line 95
    new-instance v3, Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$Default;

    new-instance v5, Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$Default$WrappingDispatcher;

    sget-object v6, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$PersistenceHandler;->MANIFEST:Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$PersistenceHandler;

    invoke-direct {v5, v6, v4}, Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$Default$WrappingDispatcher;-><init>(Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$PersistenceHandler;Z)V

    const-string v4, "CHILD_FIRST_PERSISTENT"

    const/4 v6, 0x3

    invoke-direct {v3, v4, v6, v5}, Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$Default;-><init>(Ljava/lang/String;ILnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$Configurable;)V

    sput-object v3, Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$Default;->CHILD_FIRST_PERSISTENT:Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$Default;

    .line 118
    new-instance v4, Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$Default;

    new-instance v5, Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$Default$InjectionDispatcher;

    invoke-direct {v5}, Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$Default$InjectionDispatcher;-><init>()V

    const-string v6, "INJECTION"

    const/4 v7, 0x4

    invoke-direct {v4, v6, v7, v5}, Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$Default;-><init>(Ljava/lang/String;ILnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$Configurable;)V

    sput-object v4, Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$Default;->INJECTION:Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$Default;

    filled-new-array {v0, v1, v2, v3, v4}, [Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$Default;

    move-result-object v0

    sput-object v0, Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$Default;->$VALUES:[Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$Default;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$Configurable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$Configurable<",
            "Ljava/lang/ClassLoader;",
            ">;)V"
        }
    .end annotation

    .line 135
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$Default;->dispatcher:Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$Configurable;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$Default;
    .locals 1

    const-class v0, Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$Default;

    .line 58
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$Default;

    return-object p0
.end method

.method public static values()[Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$Default;
    .locals 1

    sget-object v0, Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$Default;->$VALUES:[Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$Default;

    .line 58
    invoke-virtual {v0}, [Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$Default;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$Default;

    return-object v0
.end method


# virtual methods
.method public allowExistingTypes()Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$Configurable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$Configurable<",
            "Ljava/lang/ClassLoader;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$Default;->dispatcher:Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$Configurable;

    .line 164
    invoke-interface {v0}, Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$Configurable;->allowExistingTypes()Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$Configurable;

    move-result-object v0

    return-object v0
.end method

.method public load(Ljava/lang/ClassLoader;Ljava/util/Map;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            "Ljava/util/Map<",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            "[B>;)",
            "Ljava/util/Map<",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    iget-object v0, p0, Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$Default;->dispatcher:Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$Configurable;

    .line 143
    invoke-interface {v0, p1, p2}, Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$Configurable;->load(Ljava/lang/ClassLoader;Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public opened()Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$Configurable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$Configurable<",
            "Ljava/lang/ClassLoader;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$Default;->dispatcher:Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$Configurable;

    .line 171
    invoke-interface {v0}, Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$Configurable;->opened()Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$Configurable;

    move-result-object v0

    return-object v0
.end method

.method public with(Ljava/security/ProtectionDomain;)Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$Configurable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/ProtectionDomain;",
            ")",
            "Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$Configurable<",
            "Ljava/lang/ClassLoader;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$Default;->dispatcher:Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$Configurable;

    .line 150
    invoke-interface {v0, p1}, Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$Configurable;->with(Ljava/security/ProtectionDomain;)Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$Configurable;

    move-result-object p1

    return-object p1
.end method

.method public with(Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy;)Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$Configurable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy;",
            ")",
            "Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$Configurable<",
            "Ljava/lang/ClassLoader;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$Default;->dispatcher:Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$Configurable;

    .line 157
    invoke-interface {v0, p1}, Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$Configurable;->with(Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy;)Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$Configurable;

    move-result-object p1

    return-object p1
.end method
