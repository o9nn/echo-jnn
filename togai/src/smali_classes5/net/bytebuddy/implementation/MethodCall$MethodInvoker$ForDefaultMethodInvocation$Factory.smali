.class final enum Lnet/bytebuddy/implementation/MethodCall$MethodInvoker$ForDefaultMethodInvocation$Factory;
.super Ljava/lang/Enum;
.source "MethodCall.java"

# interfaces
.implements Lnet/bytebuddy/implementation/MethodCall$MethodInvoker$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/MethodCall$MethodInvoker$ForDefaultMethodInvocation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Factory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/implementation/MethodCall$MethodInvoker$ForDefaultMethodInvocation$Factory;",
        ">;",
        "Lnet/bytebuddy/implementation/MethodCall$MethodInvoker$Factory;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/implementation/MethodCall$MethodInvoker$ForDefaultMethodInvocation$Factory;

.field public static final enum INSTANCE:Lnet/bytebuddy/implementation/MethodCall$MethodInvoker$ForDefaultMethodInvocation$Factory;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 2931
    new-instance v0, Lnet/bytebuddy/implementation/MethodCall$MethodInvoker$ForDefaultMethodInvocation$Factory;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/bytebuddy/implementation/MethodCall$MethodInvoker$ForDefaultMethodInvocation$Factory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/bytebuddy/implementation/MethodCall$MethodInvoker$ForDefaultMethodInvocation$Factory;->INSTANCE:Lnet/bytebuddy/implementation/MethodCall$MethodInvoker$ForDefaultMethodInvocation$Factory;

    filled-new-array {v0}, [Lnet/bytebuddy/implementation/MethodCall$MethodInvoker$ForDefaultMethodInvocation$Factory;

    move-result-object v0

    sput-object v0, Lnet/bytebuddy/implementation/MethodCall$MethodInvoker$ForDefaultMethodInvocation$Factory;->$VALUES:[Lnet/bytebuddy/implementation/MethodCall$MethodInvoker$ForDefaultMethodInvocation$Factory;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 2926
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/implementation/MethodCall$MethodInvoker$ForDefaultMethodInvocation$Factory;
    .locals 1

    const-class v0, Lnet/bytebuddy/implementation/MethodCall$MethodInvoker$ForDefaultMethodInvocation$Factory;

    .line 2926
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/bytebuddy/implementation/MethodCall$MethodInvoker$ForDefaultMethodInvocation$Factory;

    return-object p0
.end method

.method public static values()[Lnet/bytebuddy/implementation/MethodCall$MethodInvoker$ForDefaultMethodInvocation$Factory;
    .locals 1

    sget-object v0, Lnet/bytebuddy/implementation/MethodCall$MethodInvoker$ForDefaultMethodInvocation$Factory;->$VALUES:[Lnet/bytebuddy/implementation/MethodCall$MethodInvoker$ForDefaultMethodInvocation$Factory;

    .line 2926
    invoke-virtual {v0}, [Lnet/bytebuddy/implementation/MethodCall$MethodInvoker$ForDefaultMethodInvocation$Factory;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/implementation/MethodCall$MethodInvoker$ForDefaultMethodInvocation$Factory;

    return-object v0
.end method


# virtual methods
.method public make(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/implementation/MethodCall$MethodInvoker;
    .locals 1

    .line 2937
    new-instance v0, Lnet/bytebuddy/implementation/MethodCall$MethodInvoker$ForDefaultMethodInvocation;

    invoke-direct {v0, p1}, Lnet/bytebuddy/implementation/MethodCall$MethodInvoker$ForDefaultMethodInvocation;-><init>(Lnet/bytebuddy/description/type/TypeDescription;)V

    return-object v0
.end method
