.class public final enum Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$SynchronizationStrategy$ForLegacyVm;
.super Ljava/lang/Enum;
.source "ByteArrayClassLoader.java"

# interfaces
.implements Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$SynchronizationStrategy;
.implements Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$SynchronizationStrategy$Initializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$SynchronizationStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ForLegacyVm"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$SynchronizationStrategy$ForLegacyVm;",
        ">;",
        "Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$SynchronizationStrategy;",
        "Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$SynchronizationStrategy$Initializable;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$SynchronizationStrategy$ForLegacyVm;

.field public static final enum INSTANCE:Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$SynchronizationStrategy$ForLegacyVm;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 463
    new-instance v0, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$SynchronizationStrategy$ForLegacyVm;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$SynchronizationStrategy$ForLegacyVm;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$SynchronizationStrategy$ForLegacyVm;->INSTANCE:Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$SynchronizationStrategy$ForLegacyVm;

    filled-new-array {v0}, [Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$SynchronizationStrategy$ForLegacyVm;

    move-result-object v0

    sput-object v0, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$SynchronizationStrategy$ForLegacyVm;->$VALUES:[Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$SynchronizationStrategy$ForLegacyVm;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 458
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$SynchronizationStrategy$ForLegacyVm;
    .locals 1

    const-class v0, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$SynchronizationStrategy$ForLegacyVm;

    .line 458
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$SynchronizationStrategy$ForLegacyVm;

    return-object p0
.end method

.method public static values()[Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$SynchronizationStrategy$ForLegacyVm;
    .locals 1

    sget-object v0, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$SynchronizationStrategy$ForLegacyVm;->$VALUES:[Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$SynchronizationStrategy$ForLegacyVm;

    .line 458
    invoke-virtual {v0}, [Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$SynchronizationStrategy$ForLegacyVm;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$SynchronizationStrategy$ForLegacyVm;

    return-object v0
.end method


# virtual methods
.method public getClassLoadingLock(Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    return-object p1
.end method

.method public initialize()Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$SynchronizationStrategy;
    .locals 0

    return-object p0
.end method
