.class public final enum Lnet/bytebuddy/implementation/MethodCall$TargetHandler$ForSelfOrStaticInvocation$Factory;
.super Ljava/lang/Enum;
.source "MethodCall.java"

# interfaces
.implements Lnet/bytebuddy/implementation/MethodCall$TargetHandler$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/MethodCall$TargetHandler$ForSelfOrStaticInvocation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "Factory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/implementation/MethodCall$TargetHandler$ForSelfOrStaticInvocation$Factory;",
        ">;",
        "Lnet/bytebuddy/implementation/MethodCall$TargetHandler$Factory;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/implementation/MethodCall$TargetHandler$ForSelfOrStaticInvocation$Factory;

.field public static final enum INSTANCE:Lnet/bytebuddy/implementation/MethodCall$TargetHandler$ForSelfOrStaticInvocation$Factory;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 2083
    new-instance v0, Lnet/bytebuddy/implementation/MethodCall$TargetHandler$ForSelfOrStaticInvocation$Factory;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/bytebuddy/implementation/MethodCall$TargetHandler$ForSelfOrStaticInvocation$Factory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/bytebuddy/implementation/MethodCall$TargetHandler$ForSelfOrStaticInvocation$Factory;->INSTANCE:Lnet/bytebuddy/implementation/MethodCall$TargetHandler$ForSelfOrStaticInvocation$Factory;

    filled-new-array {v0}, [Lnet/bytebuddy/implementation/MethodCall$TargetHandler$ForSelfOrStaticInvocation$Factory;

    move-result-object v0

    sput-object v0, Lnet/bytebuddy/implementation/MethodCall$TargetHandler$ForSelfOrStaticInvocation$Factory;->$VALUES:[Lnet/bytebuddy/implementation/MethodCall$TargetHandler$ForSelfOrStaticInvocation$Factory;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 2078
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/implementation/MethodCall$TargetHandler$ForSelfOrStaticInvocation$Factory;
    .locals 1

    const-class v0, Lnet/bytebuddy/implementation/MethodCall$TargetHandler$ForSelfOrStaticInvocation$Factory;

    .line 2078
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/bytebuddy/implementation/MethodCall$TargetHandler$ForSelfOrStaticInvocation$Factory;

    return-object p0
.end method

.method public static values()[Lnet/bytebuddy/implementation/MethodCall$TargetHandler$ForSelfOrStaticInvocation$Factory;
    .locals 1

    sget-object v0, Lnet/bytebuddy/implementation/MethodCall$TargetHandler$ForSelfOrStaticInvocation$Factory;->$VALUES:[Lnet/bytebuddy/implementation/MethodCall$TargetHandler$ForSelfOrStaticInvocation$Factory;

    .line 2078
    invoke-virtual {v0}, [Lnet/bytebuddy/implementation/MethodCall$TargetHandler$ForSelfOrStaticInvocation$Factory;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/implementation/MethodCall$TargetHandler$ForSelfOrStaticInvocation$Factory;

    return-object v0
.end method


# virtual methods
.method public make(Lnet/bytebuddy/implementation/Implementation$Target;)Lnet/bytebuddy/implementation/MethodCall$TargetHandler;
    .locals 1

    .line 2096
    new-instance v0, Lnet/bytebuddy/implementation/MethodCall$TargetHandler$ForSelfOrStaticInvocation;

    invoke-interface {p1}, Lnet/bytebuddy/implementation/Implementation$Target;->getInstrumentedType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object p1

    invoke-direct {v0, p1}, Lnet/bytebuddy/implementation/MethodCall$TargetHandler$ForSelfOrStaticInvocation;-><init>(Lnet/bytebuddy/description/type/TypeDescription;)V

    return-object v0
.end method

.method public prepare(Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;
    .locals 0

    return-object p1
.end method
