.class public Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess$MethodLoading$TypeCastingHandler$ForBridgeTarget;
.super Ljava/lang/Object;
.source "MethodVariableAccess.java"

# interfaces
.implements Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess$MethodLoading$TypeCastingHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess$MethodLoading$TypeCastingHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ForBridgeTarget"
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# instance fields
.field private final bridgeTarget:Lnet/bytebuddy/description/method/MethodDescription;


# direct methods
.method public constructor <init>(Lnet/bytebuddy/description/method/MethodDescription;)V
    .locals 0

    .line 318
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess$MethodLoading$TypeCastingHandler$ForBridgeTarget;->bridgeTarget:Lnet/bytebuddy/description/method/MethodDescription;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    iget-object v2, p0, Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess$MethodLoading$TypeCastingHandler$ForBridgeTarget;->bridgeTarget:Lnet/bytebuddy/description/method/MethodDescription;

    check-cast p1, Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess$MethodLoading$TypeCastingHandler$ForBridgeTarget;

    iget-object p1, p1, Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess$MethodLoading$TypeCastingHandler$ForBridgeTarget;->bridgeTarget:Lnet/bytebuddy/description/method/MethodDescription;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v1

    :cond_3
    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess$MethodLoading$TypeCastingHandler$ForBridgeTarget;->bridgeTarget:Lnet/bytebuddy/description/method/MethodDescription;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    return v1
.end method

.method public ofIndex(Lnet/bytebuddy/description/type/TypeDescription;I)Lnet/bytebuddy/implementation/bytecode/StackManipulation;
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess$MethodLoading$TypeCastingHandler$ForBridgeTarget;->bridgeTarget:Lnet/bytebuddy/description/method/MethodDescription;

    .line 326
    invoke-interface {v0}, Lnet/bytebuddy/description/method/MethodDescription;->getParameters()Lnet/bytebuddy/description/method/ParameterList;

    move-result-object v0

    invoke-interface {v0, p2}, Lnet/bytebuddy/description/method/ParameterList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lnet/bytebuddy/description/method/ParameterDescription;

    invoke-interface {p2}, Lnet/bytebuddy/description/method/ParameterDescription;->getType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object p2

    invoke-interface {p2}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->asErasure()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object p2

    .line 327
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Trivial;->INSTANCE:Lnet/bytebuddy/implementation/bytecode/StackManipulation$Trivial;

    goto :goto_0

    .line 329
    :cond_0
    invoke-static {p2}, Lnet/bytebuddy/implementation/bytecode/assign/TypeCasting;->to(Lnet/bytebuddy/description/type/TypeDefinition;)Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object p1

    :goto_0
    return-object p1
.end method
