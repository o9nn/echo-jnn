.class Lorg/mockito/internal/creation/bytebuddy/ModuleHandler$NoModuleSystemFound;
.super Lorg/mockito/internal/creation/bytebuddy/ModuleHandler;
.source "ModuleHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mockito/internal/creation/bytebuddy/ModuleHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NoModuleSystemFound"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 219
    invoke-direct {p0}, Lorg/mockito/internal/creation/bytebuddy/ModuleHandler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/mockito/internal/creation/bytebuddy/ModuleHandler$1;)V
    .locals 0

    .line 219
    invoke-direct {p0}, Lorg/mockito/internal/creation/bytebuddy/ModuleHandler$NoModuleSystemFound;-><init>()V

    return-void
.end method


# virtual methods
.method adjustModuleGraph(Ljava/lang/Class;Ljava/lang/Class;ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;ZZ)V"
        }
    .end annotation

    return-void
.end method

.method canRead(Ljava/lang/Class;Ljava/lang/Class;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    const/4 p1, 0x1

    return p1
.end method

.method injectionBase(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;
    .locals 0
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

    .line 243
    const-class p1, Lorg/mockito/codegen/InjectionBase;

    return-object p1
.end method

.method isExported(Ljava/lang/Class;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    const/4 p1, 0x1

    return p1
.end method

.method isExported(Ljava/lang/Class;Ljava/lang/Class;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    const/4 p1, 0x1

    return p1
.end method

.method isOpened(Ljava/lang/Class;Ljava/lang/Class;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    const/4 p1, 0x1

    return p1
.end method
