.class public final Lcom/tom_roush/pdfbox/pdmodel/encryption/SecurityHandlerFactory;
.super Ljava/lang/Object;
.source "SecurityHandlerFactory.java"


# static fields
.field public static final INSTANCE:Lcom/tom_roush/pdfbox/pdmodel/encryption/SecurityHandlerFactory;


# instance fields
.field private final nameToHandler:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/tom_roush/pdfbox/pdmodel/encryption/SecurityHandler;",
            ">;>;"
        }
    .end annotation
.end field

.field private final policyToHandler:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Lcom/tom_roush/pdfbox/pdmodel/encryption/ProtectionPolicy;",
            ">;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/tom_roush/pdfbox/pdmodel/encryption/SecurityHandler;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/encryption/SecurityHandlerFactory;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/pdmodel/encryption/SecurityHandlerFactory;-><init>()V

    sput-object v0, Lcom/tom_roush/pdfbox/pdmodel/encryption/SecurityHandlerFactory;->INSTANCE:Lcom/tom_roush/pdfbox/pdmodel/encryption/SecurityHandlerFactory;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/encryption/SecurityHandlerFactory;->nameToHandler:Ljava/util/Map;

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/encryption/SecurityHandlerFactory;->policyToHandler:Ljava/util/Map;

    .line 49
    const-class v0, Lcom/tom_roush/pdfbox/pdmodel/encryption/StandardSecurityHandler;

    const-class v1, Lcom/tom_roush/pdfbox/pdmodel/encryption/StandardProtectionPolicy;

    const-string v2, "Standard"

    invoke-virtual {p0, v2, v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/encryption/SecurityHandlerFactory;->registerHandler(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    .line 53
    const-class v0, Lcom/tom_roush/pdfbox/pdmodel/encryption/PublicKeySecurityHandler;

    const-class v1, Lcom/tom_roush/pdfbox/pdmodel/encryption/PublicKeyProtectionPolicy;

    const-string v2, "Adobe.PubSec"

    invoke-virtual {p0, v2, v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/encryption/SecurityHandlerFactory;->registerHandler(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    return-void
.end method

.method private newSecurityHandler(Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Lcom/tom_roush/pdfbox/pdmodel/encryption/SecurityHandler;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/tom_roush/pdfbox/pdmodel/encryption/SecurityHandler;",
            ">;[",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Object;",
            ")",
            "Lcom/tom_roush/pdfbox/pdmodel/encryption/SecurityHandler;"
        }
    .end annotation

    .line 131
    :try_start_0
    invoke-virtual {p1, p2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p1

    .line 132
    invoke-virtual {p1, p3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tom_roush/pdfbox/pdmodel/encryption/SecurityHandler;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 152
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 147
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_2
    move-exception p1

    .line 142
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_3
    move-exception p1

    .line 137
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method


# virtual methods
.method public newSecurityHandlerForFilter(Ljava/lang/String;)Lcom/tom_roush/pdfbox/pdmodel/encryption/SecurityHandler;
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/encryption/SecurityHandlerFactory;->nameToHandler:Ljava/util/Map;

    .line 107
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Class;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Class;

    new-array v0, v0, [Ljava/lang/Object;

    .line 115
    invoke-direct {p0, p1, v1, v0}, Lcom/tom_roush/pdfbox/pdmodel/encryption/SecurityHandlerFactory;->newSecurityHandler(Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Lcom/tom_roush/pdfbox/pdmodel/encryption/SecurityHandler;

    move-result-object p1

    return-object p1
.end method

.method public newSecurityHandlerForPolicy(Lcom/tom_roush/pdfbox/pdmodel/encryption/ProtectionPolicy;)Lcom/tom_roush/pdfbox/pdmodel/encryption/SecurityHandler;
    .locals 4

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/encryption/SecurityHandlerFactory;->policyToHandler:Ljava/util/Map;

    .line 89
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    .line 95
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    aput-object v3, v1, v2

    .line 96
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    .line 97
    invoke-direct {p0, v0, v1, p1}, Lcom/tom_roush/pdfbox/pdmodel/encryption/SecurityHandlerFactory;->newSecurityHandler(Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Lcom/tom_roush/pdfbox/pdmodel/encryption/SecurityHandler;

    move-result-object p1

    return-object p1
.end method

.method public registerHandler(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/tom_roush/pdfbox/pdmodel/encryption/SecurityHandler;",
            ">;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/tom_roush/pdfbox/pdmodel/encryption/ProtectionPolicy;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/encryption/SecurityHandlerFactory;->nameToHandler:Ljava/util/Map;

    .line 73
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/encryption/SecurityHandlerFactory;->nameToHandler:Ljava/util/Map;

    .line 78
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/encryption/SecurityHandlerFactory;->policyToHandler:Ljava/util/Map;

    .line 79
    invoke-interface {p1, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 75
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "The security handler name is already registered"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
