.class final enum Lnet/bytebuddy/implementation/MethodCall$TargetHandler$ForConstructingInvocation$Factory;
.super Ljava/lang/Enum;
.source "MethodCall.java"

# interfaces
.implements Lnet/bytebuddy/implementation/MethodCall$TargetHandler$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/MethodCall$TargetHandler$ForConstructingInvocation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Factory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/implementation/MethodCall$TargetHandler$ForConstructingInvocation$Factory;",
        ">;",
        "Lnet/bytebuddy/implementation/MethodCall$TargetHandler$Factory;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/implementation/MethodCall$TargetHandler$ForConstructingInvocation$Factory;

.field public static final enum INSTANCE:Lnet/bytebuddy/implementation/MethodCall$TargetHandler$ForConstructingInvocation$Factory;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 2150
    new-instance v0, Lnet/bytebuddy/implementation/MethodCall$TargetHandler$ForConstructingInvocation$Factory;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/bytebuddy/implementation/MethodCall$TargetHandler$ForConstructingInvocation$Factory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/bytebuddy/implementation/MethodCall$TargetHandler$ForConstructingInvocation$Factory;->INSTANCE:Lnet/bytebuddy/implementation/MethodCall$TargetHandler$ForConstructingInvocation$Factory;

    filled-new-array {v0}, [Lnet/bytebuddy/implementation/MethodCall$TargetHandler$ForConstructingInvocation$Factory;

    move-result-object v0

    sput-object v0, Lnet/bytebuddy/implementation/MethodCall$TargetHandler$ForConstructingInvocation$Factory;->$VALUES:[Lnet/bytebuddy/implementation/MethodCall$TargetHandler$ForConstructingInvocation$Factory;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 2145
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/implementation/MethodCall$TargetHandler$ForConstructingInvocation$Factory;
    .locals 1

    const-class v0, Lnet/bytebuddy/implementation/MethodCall$TargetHandler$ForConstructingInvocation$Factory;

    .line 2145
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/bytebuddy/implementation/MethodCall$TargetHandler$ForConstructingInvocation$Factory;

    return-object p0
.end method

.method public static values()[Lnet/bytebuddy/implementation/MethodCall$TargetHandler$ForConstructingInvocation$Factory;
    .locals 1

    sget-object v0, Lnet/bytebuddy/implementation/MethodCall$TargetHandler$ForConstructingInvocation$Factory;->$VALUES:[Lnet/bytebuddy/implementation/MethodCall$TargetHandler$ForConstructingInvocation$Factory;

    .line 2145
    invoke-virtual {v0}, [Lnet/bytebuddy/implementation/MethodCall$TargetHandler$ForConstructingInvocation$Factory;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/implementation/MethodCall$TargetHandler$ForConstructingInvocation$Factory;

    return-object v0
.end method


# virtual methods
.method public make(Lnet/bytebuddy/implementation/Implementation$Target;)Lnet/bytebuddy/implementation/MethodCall$TargetHandler;
    .locals 1

    .line 2163
    new-instance v0, Lnet/bytebuddy/implementation/MethodCall$TargetHandler$ForConstructingInvocation;

    invoke-interface {p1}, Lnet/bytebuddy/implementation/Implementation$Target;->getInstrumentedType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object p1

    invoke-direct {v0, p1}, Lnet/bytebuddy/implementation/MethodCall$TargetHandler$ForConstructingInvocation;-><init>(Lnet/bytebuddy/description/type/TypeDescription;)V

    return-object v0
.end method

.method public prepare(Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;
    .locals 0

    return-object p1
.end method
