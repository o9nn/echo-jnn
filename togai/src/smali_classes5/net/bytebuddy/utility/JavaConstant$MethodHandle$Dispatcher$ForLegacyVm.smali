.class public final enum Lnet/bytebuddy/utility/JavaConstant$MethodHandle$Dispatcher$ForLegacyVm;
.super Ljava/lang/Enum;
.source "JavaConstant.java"

# interfaces
.implements Lnet/bytebuddy/utility/JavaConstant$MethodHandle$Dispatcher$Initializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/utility/JavaConstant$MethodHandle$Dispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ForLegacyVm"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/utility/JavaConstant$MethodHandle$Dispatcher$ForLegacyVm;",
        ">;",
        "Lnet/bytebuddy/utility/JavaConstant$MethodHandle$Dispatcher$Initializable;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/utility/JavaConstant$MethodHandle$Dispatcher$ForLegacyVm;

.field public static final enum INSTANCE:Lnet/bytebuddy/utility/JavaConstant$MethodHandle$Dispatcher$ForLegacyVm;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1202
    new-instance v0, Lnet/bytebuddy/utility/JavaConstant$MethodHandle$Dispatcher$ForLegacyVm;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/bytebuddy/utility/JavaConstant$MethodHandle$Dispatcher$ForLegacyVm;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/bytebuddy/utility/JavaConstant$MethodHandle$Dispatcher$ForLegacyVm;->INSTANCE:Lnet/bytebuddy/utility/JavaConstant$MethodHandle$Dispatcher$ForLegacyVm;

    filled-new-array {v0}, [Lnet/bytebuddy/utility/JavaConstant$MethodHandle$Dispatcher$ForLegacyVm;

    move-result-object v0

    sput-object v0, Lnet/bytebuddy/utility/JavaConstant$MethodHandle$Dispatcher$ForLegacyVm;->$VALUES:[Lnet/bytebuddy/utility/JavaConstant$MethodHandle$Dispatcher$ForLegacyVm;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1197
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/utility/JavaConstant$MethodHandle$Dispatcher$ForLegacyVm;
    .locals 1

    const-class v0, Lnet/bytebuddy/utility/JavaConstant$MethodHandle$Dispatcher$ForLegacyVm;

    .line 1197
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/bytebuddy/utility/JavaConstant$MethodHandle$Dispatcher$ForLegacyVm;

    return-object p0
.end method

.method public static values()[Lnet/bytebuddy/utility/JavaConstant$MethodHandle$Dispatcher$ForLegacyVm;
    .locals 1

    sget-object v0, Lnet/bytebuddy/utility/JavaConstant$MethodHandle$Dispatcher$ForLegacyVm;->$VALUES:[Lnet/bytebuddy/utility/JavaConstant$MethodHandle$Dispatcher$ForLegacyVm;

    .line 1197
    invoke-virtual {v0}, [Lnet/bytebuddy/utility/JavaConstant$MethodHandle$Dispatcher$ForLegacyVm;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/utility/JavaConstant$MethodHandle$Dispatcher$ForLegacyVm;

    return-object v0
.end method


# virtual methods
.method public initialize()Lnet/bytebuddy/utility/JavaConstant$MethodHandle$Dispatcher;
    .locals 2

    .line 1208
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Unsupported type on current JVM: java.lang.invoke.MethodHandle"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public lookupType(Ljava/lang/Object;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 1222
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Unsupported type on current JVM: java.lang.invoke.MethodHandle"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public publicLookup()Ljava/lang/Object;
    .locals 2

    .line 1215
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Unsupported type on current JVM: java.lang.invoke.MethodHandle"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
