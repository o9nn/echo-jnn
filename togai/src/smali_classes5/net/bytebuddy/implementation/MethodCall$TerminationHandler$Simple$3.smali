.class final enum Lnet/bytebuddy/implementation/MethodCall$TerminationHandler$Simple$3;
.super Lnet/bytebuddy/implementation/MethodCall$TerminationHandler$Simple;
.source "MethodCall.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/MethodCall$TerminationHandler$Simple;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    .line 3021
    invoke-direct {p0, p1, p2, v0}, Lnet/bytebuddy/implementation/MethodCall$TerminationHandler$Simple;-><init>(Ljava/lang/String;ILnet/bytebuddy/implementation/MethodCall$1;)V

    return-void
.end method


# virtual methods
.method public toStackManipulation(Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;)Lnet/bytebuddy/implementation/bytecode/StackManipulation;
    .locals 0

    .line 3026
    sget-object p1, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Trivial;->INSTANCE:Lnet/bytebuddy/implementation/bytecode/StackManipulation$Trivial;

    return-object p1
.end method
