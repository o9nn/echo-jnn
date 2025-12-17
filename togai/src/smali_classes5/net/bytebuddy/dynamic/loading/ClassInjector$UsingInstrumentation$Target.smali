.class public abstract enum Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingInstrumentation$Target;
.super Ljava/lang/Enum;
.source "ClassInjector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingInstrumentation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4409
    name = "Target"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingInstrumentation$Target;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingInstrumentation$Target;

.field public static final enum BOOTSTRAP:Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingInstrumentation$Target;

.field public static final enum SYSTEM:Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingInstrumentation$Target;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 2316
    new-instance v0, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingInstrumentation$Target$1;

    const-string v1, "BOOTSTRAP"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingInstrumentation$Target$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingInstrumentation$Target;->BOOTSTRAP:Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingInstrumentation$Target;

    .line 2326
    new-instance v1, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingInstrumentation$Target$2;

    const-string v3, "SYSTEM"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingInstrumentation$Target$2;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingInstrumentation$Target;->SYSTEM:Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingInstrumentation$Target;

    const/4 v3, 0x2

    new-array v3, v3, [Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingInstrumentation$Target;

    .line 2311
    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingInstrumentation$Target;->$VALUES:[Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingInstrumentation$Target;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 2311
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILnet/bytebuddy/dynamic/loading/ClassInjector$1;)V
    .locals 0

    .line 2311
    invoke-direct {p0, p1, p2}, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingInstrumentation$Target;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingInstrumentation$Target;
    .locals 1

    const-class v0, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingInstrumentation$Target;

    .line 2311
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingInstrumentation$Target;

    return-object p0
.end method

.method public static values()[Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingInstrumentation$Target;
    .locals 1

    sget-object v0, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingInstrumentation$Target;->$VALUES:[Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingInstrumentation$Target;

    .line 2311
    invoke-virtual {v0}, [Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingInstrumentation$Target;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingInstrumentation$Target;

    return-object v0
.end method


# virtual methods
.method protected abstract inject(Ljava/lang/instrument/Instrumentation;Ljava/util/jar/JarFile;)V
.end method
