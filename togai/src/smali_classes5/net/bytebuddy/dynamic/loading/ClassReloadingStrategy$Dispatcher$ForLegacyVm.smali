.class public final enum Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy$Dispatcher$ForLegacyVm;
.super Ljava/lang/Enum;
.source "ClassReloadingStrategy.java"

# interfaces
.implements Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy$Dispatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy$Dispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ForLegacyVm"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy$Dispatcher$ForLegacyVm;",
        ">;",
        "Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy$Dispatcher;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy$Dispatcher$ForLegacyVm;

.field public static final enum INSTANCE:Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy$Dispatcher$ForLegacyVm;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 370
    new-instance v0, Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy$Dispatcher$ForLegacyVm;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy$Dispatcher$ForLegacyVm;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy$Dispatcher$ForLegacyVm;->INSTANCE:Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy$Dispatcher$ForLegacyVm;

    filled-new-array {v0}, [Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy$Dispatcher$ForLegacyVm;

    move-result-object v0

    sput-object v0, Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy$Dispatcher$ForLegacyVm;->$VALUES:[Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy$Dispatcher$ForLegacyVm;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 365
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy$Dispatcher$ForLegacyVm;
    .locals 1

    const-class v0, Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy$Dispatcher$ForLegacyVm;

    .line 365
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy$Dispatcher$ForLegacyVm;

    return-object p0
.end method

.method public static values()[Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy$Dispatcher$ForLegacyVm;
    .locals 1

    sget-object v0, Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy$Dispatcher$ForLegacyVm;->$VALUES:[Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy$Dispatcher$ForLegacyVm;

    .line 365
    invoke-virtual {v0}, [Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy$Dispatcher$ForLegacyVm;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy$Dispatcher$ForLegacyVm;

    return-object v0
.end method


# virtual methods
.method public addTransformer(Ljava/lang/instrument/Instrumentation;Ljava/lang/instrument/ClassFileTransformer;Z)V
    .locals 0

    if-nez p3, :cond_0

    .line 393
    invoke-interface {p1, p2}, Ljava/lang/instrument/Instrumentation;->addTransformer(Ljava/lang/instrument/ClassFileTransformer;)V

    return-void

    .line 391
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Cannot apply retransformation on legacy VM"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public isModifiableClass(Ljava/lang/instrument/Instrumentation;Ljava/lang/Class;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/instrument/Instrumentation;",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 376
    invoke-virtual {p2}, Ljava/lang/Class;->isArray()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p2}, Ljava/lang/Class;->isPrimitive()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isRetransformClassesSupported(Ljava/lang/instrument/Instrumentation;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public retransformClasses(Ljava/lang/instrument/Instrumentation;[Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/instrument/Instrumentation;",
            "[",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 401
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method
