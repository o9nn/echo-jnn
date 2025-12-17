.class public Lnet/bytebuddy/implementation/HashCodeMethod$NullValueGuard$UsingJump$AfterInstruction;
.super Ljava/lang/Object;
.source "HashCodeMethod.java"

# interfaces
.implements Lnet/bytebuddy/implementation/bytecode/StackManipulation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/HashCodeMethod$NullValueGuard$UsingJump;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "AfterInstruction"
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
    includeSyntheticFields = true
.end annotation


# instance fields
.field final synthetic this$0:Lnet/bytebuddy/implementation/HashCodeMethod$NullValueGuard$UsingJump;


# direct methods
.method protected constructor <init>(Lnet/bytebuddy/implementation/HashCodeMethod$NullValueGuard$UsingJump;)V
    .locals 0

    iput-object p1, p0, Lnet/bytebuddy/implementation/HashCodeMethod$NullValueGuard$UsingJump$AfterInstruction;->this$0:Lnet/bytebuddy/implementation/HashCodeMethod$NullValueGuard$UsingJump;

    .line 408
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;)Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;
    .locals 6

    iget-object v0, p0, Lnet/bytebuddy/implementation/HashCodeMethod$NullValueGuard$UsingJump$AfterInstruction;->this$0:Lnet/bytebuddy/implementation/HashCodeMethod$NullValueGuard$UsingJump;

    .line 421
    invoke-static {v0}, Lnet/bytebuddy/implementation/HashCodeMethod$NullValueGuard$UsingJump;->access$200(Lnet/bytebuddy/implementation/HashCodeMethod$NullValueGuard$UsingJump;)Lnet/bytebuddy/jar/asm/Label;

    move-result-object v0

    invoke-virtual {p1, v0}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitLabel(Lnet/bytebuddy/jar/asm/Label;)V

    .line 422
    invoke-interface {p2}, Lnet/bytebuddy/implementation/Implementation$Context;->getClassFileVersion()Lnet/bytebuddy/ClassFileVersion;

    move-result-object p2

    sget-object v0, Lnet/bytebuddy/ClassFileVersion;->JAVA_V6:Lnet/bytebuddy/ClassFileVersion;

    invoke-virtual {p2, v0}, Lnet/bytebuddy/ClassFileVersion;->isAtLeast(Lnet/bytebuddy/ClassFileVersion;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 v1, 0x4

    .line 423
    invoke-static {}, Lnet/bytebuddy/implementation/HashCodeMethod$NullValueGuard$UsingJump;->access$300()[Ljava/lang/Object;

    move-result-object p2

    array-length v2, p2

    invoke-static {}, Lnet/bytebuddy/implementation/HashCodeMethod$NullValueGuard$UsingJump;->access$300()[Ljava/lang/Object;

    move-result-object v3

    invoke-static {}, Lnet/bytebuddy/implementation/HashCodeMethod$NullValueGuard$UsingJump;->access$400()[Ljava/lang/Object;

    move-result-object p2

    array-length v4, p2

    invoke-static {}, Lnet/bytebuddy/implementation/HashCodeMethod$NullValueGuard$UsingJump;->access$400()[Ljava/lang/Object;

    move-result-object v5

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitFrame(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    .line 425
    :cond_0
    new-instance p1, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;

    const/4 p2, 0x0

    invoke-direct {p1, p2, p2}, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;-><init>(II)V

    return-object p1
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
    iget-object v2, p0, Lnet/bytebuddy/implementation/HashCodeMethod$NullValueGuard$UsingJump$AfterInstruction;->this$0:Lnet/bytebuddy/implementation/HashCodeMethod$NullValueGuard$UsingJump;

    check-cast p1, Lnet/bytebuddy/implementation/HashCodeMethod$NullValueGuard$UsingJump$AfterInstruction;

    iget-object p1, p1, Lnet/bytebuddy/implementation/HashCodeMethod$NullValueGuard$UsingJump$AfterInstruction;->this$0:Lnet/bytebuddy/implementation/HashCodeMethod$NullValueGuard$UsingJump;

    invoke-virtual {v2, p1}, Lnet/bytebuddy/implementation/HashCodeMethod$NullValueGuard$UsingJump;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v1

    :cond_3
    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/implementation/HashCodeMethod$NullValueGuard$UsingJump$AfterInstruction;->this$0:Lnet/bytebuddy/implementation/HashCodeMethod$NullValueGuard$UsingJump;

    invoke-virtual {v0}, Lnet/bytebuddy/implementation/HashCodeMethod$NullValueGuard$UsingJump;->hashCode()I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    return v1
.end method

.method public isValid()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
