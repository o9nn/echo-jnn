.class public final enum Lnet/bytebuddy/implementation/MethodCall$MethodInvoker$ForVirtualInvocation$WithImplicitType;
.super Ljava/lang/Enum;
.source "MethodCall.java"

# interfaces
.implements Lnet/bytebuddy/implementation/MethodCall$MethodInvoker;
.implements Lnet/bytebuddy/implementation/MethodCall$MethodInvoker$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/MethodCall$MethodInvoker$ForVirtualInvocation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "WithImplicitType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/implementation/MethodCall$MethodInvoker$ForVirtualInvocation$WithImplicitType;",
        ">;",
        "Lnet/bytebuddy/implementation/MethodCall$MethodInvoker;",
        "Lnet/bytebuddy/implementation/MethodCall$MethodInvoker$Factory;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/implementation/MethodCall$MethodInvoker$ForVirtualInvocation$WithImplicitType;

.field public static final enum INSTANCE:Lnet/bytebuddy/implementation/MethodCall$MethodInvoker$ForVirtualInvocation$WithImplicitType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 2781
    new-instance v0, Lnet/bytebuddy/implementation/MethodCall$MethodInvoker$ForVirtualInvocation$WithImplicitType;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/bytebuddy/implementation/MethodCall$MethodInvoker$ForVirtualInvocation$WithImplicitType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/bytebuddy/implementation/MethodCall$MethodInvoker$ForVirtualInvocation$WithImplicitType;->INSTANCE:Lnet/bytebuddy/implementation/MethodCall$MethodInvoker$ForVirtualInvocation$WithImplicitType;

    filled-new-array {v0}, [Lnet/bytebuddy/implementation/MethodCall$MethodInvoker$ForVirtualInvocation$WithImplicitType;

    move-result-object v0

    sput-object v0, Lnet/bytebuddy/implementation/MethodCall$MethodInvoker$ForVirtualInvocation$WithImplicitType;->$VALUES:[Lnet/bytebuddy/implementation/MethodCall$MethodInvoker$ForVirtualInvocation$WithImplicitType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 2776
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/implementation/MethodCall$MethodInvoker$ForVirtualInvocation$WithImplicitType;
    .locals 1

    const-class v0, Lnet/bytebuddy/implementation/MethodCall$MethodInvoker$ForVirtualInvocation$WithImplicitType;

    .line 2776
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/bytebuddy/implementation/MethodCall$MethodInvoker$ForVirtualInvocation$WithImplicitType;

    return-object p0
.end method

.method public static values()[Lnet/bytebuddy/implementation/MethodCall$MethodInvoker$ForVirtualInvocation$WithImplicitType;
    .locals 1

    sget-object v0, Lnet/bytebuddy/implementation/MethodCall$MethodInvoker$ForVirtualInvocation$WithImplicitType;->$VALUES:[Lnet/bytebuddy/implementation/MethodCall$MethodInvoker$ForVirtualInvocation$WithImplicitType;

    .line 2776
    invoke-virtual {v0}, [Lnet/bytebuddy/implementation/MethodCall$MethodInvoker$ForVirtualInvocation$WithImplicitType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/implementation/MethodCall$MethodInvoker$ForVirtualInvocation$WithImplicitType;

    return-object v0
.end method


# virtual methods
.method public make(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/implementation/MethodCall$MethodInvoker;
    .locals 0

    return-object p0
.end method

.method public toStackManipulation(Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/implementation/Implementation$Target;)Lnet/bytebuddy/implementation/bytecode/StackManipulation;
    .locals 2

    .line 2794
    invoke-interface {p2}, Lnet/bytebuddy/implementation/Implementation$Target;->getInstrumentedType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object p2

    invoke-interface {p1, p2}, Lnet/bytebuddy/description/method/MethodDescription;->isAccessibleTo(Lnet/bytebuddy/description/type/TypeDescription;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Lnet/bytebuddy/description/method/MethodDescription;->isVirtual()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 2797
    invoke-static {p1}, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;->invoke(Lnet/bytebuddy/description/method/MethodDescription;)Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$WithImplicitInvocationTargetType;

    move-result-object p1

    return-object p1

    .line 2795
    :cond_0
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Cannot invoke "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " virtually"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method
