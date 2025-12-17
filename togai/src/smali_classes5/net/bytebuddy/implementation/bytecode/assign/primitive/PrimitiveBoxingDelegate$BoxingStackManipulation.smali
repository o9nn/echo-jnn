.class Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveBoxingDelegate$BoxingStackManipulation;
.super Ljava/lang/Object;
.source "PrimitiveBoxingDelegate.java"

# interfaces
.implements Lnet/bytebuddy/implementation/bytecode/StackManipulation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveBoxingDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BoxingStackManipulation"
.end annotation


# instance fields
.field private final stackManipulation:Lnet/bytebuddy/implementation/bytecode/StackManipulation;

.field final synthetic this$0:Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveBoxingDelegate;


# direct methods
.method public constructor <init>(Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveBoxingDelegate;Lnet/bytebuddy/implementation/bytecode/StackManipulation;)V
    .locals 0

    iput-object p1, p0, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveBoxingDelegate$BoxingStackManipulation;->this$0:Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveBoxingDelegate;

    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveBoxingDelegate$BoxingStackManipulation;->stackManipulation:Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    return-void
.end method


# virtual methods
.method public apply(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;)Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;
    .locals 6

    const/16 v1, 0xb8

    iget-object v0, p0, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveBoxingDelegate$BoxingStackManipulation;->this$0:Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveBoxingDelegate;

    .line 183
    invoke-static {v0}, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveBoxingDelegate;->access$000(Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveBoxingDelegate;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDescription;->getInternalName()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveBoxingDelegate$BoxingStackManipulation;->this$0:Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveBoxingDelegate;

    .line 184
    invoke-static {v0}, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveBoxingDelegate;->access$100(Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveBoxingDelegate;)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveBoxingDelegate$BoxingStackManipulation;->this$0:Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveBoxingDelegate;

    .line 185
    invoke-static {v0}, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveBoxingDelegate;->access$200(Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveBoxingDelegate;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, p1

    .line 182
    invoke-virtual/range {v0 .. v5}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveBoxingDelegate$BoxingStackManipulation;->this$0:Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveBoxingDelegate;

    .line 187
    invoke-static {v0}, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveBoxingDelegate;->access$300(Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveBoxingDelegate;)Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;

    move-result-object v0

    iget-object v1, p0, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveBoxingDelegate$BoxingStackManipulation;->stackManipulation:Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    invoke-interface {v1, p1, p2}, Lnet/bytebuddy/implementation/bytecode/StackManipulation;->apply(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;)Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;

    move-result-object p1

    invoke-virtual {v0, p1}, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;->aggregate(Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;)Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;

    move-result-object p1

    return-object p1
.end method

.method public isValid()Z
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveBoxingDelegate$BoxingStackManipulation;->stackManipulation:Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    .line 175
    invoke-interface {v0}, Lnet/bytebuddy/implementation/bytecode/StackManipulation;->isValid()Z

    move-result v0

    return v0
.end method
