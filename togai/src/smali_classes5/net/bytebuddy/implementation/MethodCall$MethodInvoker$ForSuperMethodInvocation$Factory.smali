.class final enum Lnet/bytebuddy/implementation/MethodCall$MethodInvoker$ForSuperMethodInvocation$Factory;
.super Ljava/lang/Enum;
.source "MethodCall.java"

# interfaces
.implements Lnet/bytebuddy/implementation/MethodCall$MethodInvoker$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/MethodCall$MethodInvoker$ForSuperMethodInvocation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Factory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/implementation/MethodCall$MethodInvoker$ForSuperMethodInvocation$Factory;",
        ">;",
        "Lnet/bytebuddy/implementation/MethodCall$MethodInvoker$Factory;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/implementation/MethodCall$MethodInvoker$ForSuperMethodInvocation$Factory;

.field public static final enum INSTANCE:Lnet/bytebuddy/implementation/MethodCall$MethodInvoker$ForSuperMethodInvocation$Factory;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 2875
    new-instance v0, Lnet/bytebuddy/implementation/MethodCall$MethodInvoker$ForSuperMethodInvocation$Factory;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/bytebuddy/implementation/MethodCall$MethodInvoker$ForSuperMethodInvocation$Factory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/bytebuddy/implementation/MethodCall$MethodInvoker$ForSuperMethodInvocation$Factory;->INSTANCE:Lnet/bytebuddy/implementation/MethodCall$MethodInvoker$ForSuperMethodInvocation$Factory;

    filled-new-array {v0}, [Lnet/bytebuddy/implementation/MethodCall$MethodInvoker$ForSuperMethodInvocation$Factory;

    move-result-object v0

    sput-object v0, Lnet/bytebuddy/implementation/MethodCall$MethodInvoker$ForSuperMethodInvocation$Factory;->$VALUES:[Lnet/bytebuddy/implementation/MethodCall$MethodInvoker$ForSuperMethodInvocation$Factory;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 2870
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/implementation/MethodCall$MethodInvoker$ForSuperMethodInvocation$Factory;
    .locals 1

    const-class v0, Lnet/bytebuddy/implementation/MethodCall$MethodInvoker$ForSuperMethodInvocation$Factory;

    .line 2870
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/bytebuddy/implementation/MethodCall$MethodInvoker$ForSuperMethodInvocation$Factory;

    return-object p0
.end method

.method public static values()[Lnet/bytebuddy/implementation/MethodCall$MethodInvoker$ForSuperMethodInvocation$Factory;
    .locals 1

    sget-object v0, Lnet/bytebuddy/implementation/MethodCall$MethodInvoker$ForSuperMethodInvocation$Factory;->$VALUES:[Lnet/bytebuddy/implementation/MethodCall$MethodInvoker$ForSuperMethodInvocation$Factory;

    .line 2870
    invoke-virtual {v0}, [Lnet/bytebuddy/implementation/MethodCall$MethodInvoker$ForSuperMethodInvocation$Factory;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/implementation/MethodCall$MethodInvoker$ForSuperMethodInvocation$Factory;

    return-object v0
.end method


# virtual methods
.method public make(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/implementation/MethodCall$MethodInvoker;
    .locals 3

    .line 2881
    invoke-interface {p1}, Lnet/bytebuddy/description/type/TypeDescription;->getSuperClass()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2884
    new-instance v0, Lnet/bytebuddy/implementation/MethodCall$MethodInvoker$ForSuperMethodInvocation;

    invoke-direct {v0, p1}, Lnet/bytebuddy/implementation/MethodCall$MethodInvoker$ForSuperMethodInvocation;-><init>(Lnet/bytebuddy/description/type/TypeDescription;)V

    return-object v0

    .line 2882
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot invoke super method for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
