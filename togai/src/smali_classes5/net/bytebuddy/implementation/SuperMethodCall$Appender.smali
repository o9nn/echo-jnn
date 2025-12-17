.class public Lnet/bytebuddy/implementation/SuperMethodCall$Appender;
.super Ljava/lang/Object;
.source "SuperMethodCall.java"

# interfaces
.implements Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/SuperMethodCall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "Appender"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/implementation/SuperMethodCall$Appender$TerminationHandler;
    }
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# instance fields
.field private final implementationTarget:Lnet/bytebuddy/implementation/Implementation$Target;

.field private final terminationHandler:Lnet/bytebuddy/implementation/SuperMethodCall$Appender$TerminationHandler;


# direct methods
.method protected constructor <init>(Lnet/bytebuddy/implementation/Implementation$Target;Lnet/bytebuddy/implementation/SuperMethodCall$Appender$TerminationHandler;)V
    .locals 0

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/implementation/SuperMethodCall$Appender;->implementationTarget:Lnet/bytebuddy/implementation/Implementation$Target;

    iput-object p2, p0, Lnet/bytebuddy/implementation/SuperMethodCall$Appender;->terminationHandler:Lnet/bytebuddy/implementation/SuperMethodCall$Appender$TerminationHandler;

    return-void
.end method


# virtual methods
.method public apply(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;Lnet/bytebuddy/description/method/MethodDescription;)Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender$Size;
    .locals 5

    iget-object v0, p0, Lnet/bytebuddy/implementation/SuperMethodCall$Appender;->implementationTarget:Lnet/bytebuddy/implementation/Implementation$Target;

    .line 129
    invoke-interface {p3}, Lnet/bytebuddy/description/method/MethodDescription;->asSignatureToken()Lnet/bytebuddy/description/method/MethodDescription$SignatureToken;

    move-result-object v1

    invoke-interface {v0, v1}, Lnet/bytebuddy/implementation/Implementation$Target;->invokeDominant(Lnet/bytebuddy/description/method/MethodDescription$SignatureToken;)Lnet/bytebuddy/implementation/Implementation$SpecialMethodInvocation;

    move-result-object v0

    .line 130
    invoke-interface {v0}, Lnet/bytebuddy/implementation/bytecode/StackManipulation;->isValid()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 133
    new-instance v1, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Compound;

    const/4 v2, 0x3

    new-array v2, v2, [Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    .line 134
    invoke-static {p3}, Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess;->allArgumentsOf(Lnet/bytebuddy/description/method/MethodDescription;)Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess$MethodLoading;

    move-result-object v3

    invoke-virtual {v3}, Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess$MethodLoading;->prependThisReference()Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object v0, v2, v3

    iget-object v0, p0, Lnet/bytebuddy/implementation/SuperMethodCall$Appender;->terminationHandler:Lnet/bytebuddy/implementation/SuperMethodCall$Appender$TerminationHandler;

    .line 136
    invoke-virtual {v0, p3}, Lnet/bytebuddy/implementation/SuperMethodCall$Appender$TerminationHandler;->of(Lnet/bytebuddy/description/method/MethodDescription;)Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object v0

    const/4 v3, 0x2

    aput-object v0, v2, v3

    invoke-direct {v1, v2}, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Compound;-><init>([Lnet/bytebuddy/implementation/bytecode/StackManipulation;)V

    .line 137
    invoke-virtual {v1, p1, p2}, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Compound;->apply(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;)Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;

    move-result-object p1

    .line 138
    new-instance p2, Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender$Size;

    invoke-virtual {p1}, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;->getMaximalSize()I

    move-result p1

    invoke-interface {p3}, Lnet/bytebuddy/description/method/MethodDescription;->getStackSize()I

    move-result p3

    invoke-direct {p2, p1, p3}, Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender$Size;-><init>(II)V

    return-object p2

    .line 131
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Cannot call super (or default) method for "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

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
    iget-object v2, p0, Lnet/bytebuddy/implementation/SuperMethodCall$Appender;->terminationHandler:Lnet/bytebuddy/implementation/SuperMethodCall$Appender$TerminationHandler;

    check-cast p1, Lnet/bytebuddy/implementation/SuperMethodCall$Appender;

    iget-object v3, p1, Lnet/bytebuddy/implementation/SuperMethodCall$Appender;->terminationHandler:Lnet/bytebuddy/implementation/SuperMethodCall$Appender$TerminationHandler;

    invoke-virtual {v2, v3}, Lnet/bytebuddy/implementation/SuperMethodCall$Appender$TerminationHandler;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    :cond_3
    iget-object v2, p0, Lnet/bytebuddy/implementation/SuperMethodCall$Appender;->implementationTarget:Lnet/bytebuddy/implementation/Implementation$Target;

    iget-object p1, p1, Lnet/bytebuddy/implementation/SuperMethodCall$Appender;->implementationTarget:Lnet/bytebuddy/implementation/Implementation$Target;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v1

    :cond_4
    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/implementation/SuperMethodCall$Appender;->implementationTarget:Lnet/bytebuddy/implementation/Implementation$Target;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lnet/bytebuddy/implementation/SuperMethodCall$Appender;->terminationHandler:Lnet/bytebuddy/implementation/SuperMethodCall$Appender$TerminationHandler;

    invoke-virtual {v0}, Lnet/bytebuddy/implementation/SuperMethodCall$Appender$TerminationHandler;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method
