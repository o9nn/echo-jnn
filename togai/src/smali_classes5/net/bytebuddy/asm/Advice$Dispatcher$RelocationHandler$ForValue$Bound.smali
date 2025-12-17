.class public Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$ForValue$Bound;
.super Ljava/lang/Object;
.source "Advice.java"

# interfaces
.implements Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$Bound;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$ForValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "Bound"
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
    includeSyntheticFields = true
.end annotation


# instance fields
.field private final instrumentedMethod:Lnet/bytebuddy/description/method/MethodDescription;

.field private final inverted:Z

.field private final relocation:Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$Relocation;

.field final synthetic this$0:Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$ForValue;


# direct methods
.method protected constructor <init>(Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$ForValue;Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$Relocation;Z)V
    .locals 0

    iput-object p1, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$ForValue$Bound;->this$0:Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$ForValue;

    .line 6623
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$ForValue$Bound;->instrumentedMethod:Lnet/bytebuddy/description/method/MethodDescription;

    iput-object p3, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$ForValue$Bound;->relocation:Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$Relocation;

    iput-boolean p4, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$ForValue$Bound;->inverted:Z

    return-void
.end method


# virtual methods
.method public apply(Lnet/bytebuddy/jar/asm/MethodVisitor;I)I
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$ForValue$Bound;->instrumentedMethod:Lnet/bytebuddy/description/method/MethodDescription;

    .line 6633
    invoke-interface {v0}, Lnet/bytebuddy/description/method/MethodDescription;->isConstructor()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$ForValue$Bound;->this$0:Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$ForValue;

    .line 6636
    invoke-static {v0}, Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$ForValue;->access$1100(Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$ForValue;)I

    move-result v0

    invoke-virtual {p1, v0, p2}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitVarInsn(II)V

    iget-object p2, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$ForValue$Bound;->this$0:Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$ForValue;

    .line 6637
    invoke-virtual {p2, p1}, Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$ForValue;->convertValue(Lnet/bytebuddy/jar/asm/MethodVisitor;)V

    .line 6638
    new-instance p2, Lnet/bytebuddy/jar/asm/Label;

    invoke-direct {p2}, Lnet/bytebuddy/jar/asm/Label;-><init>()V

    iget-boolean v0, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$ForValue$Bound;->inverted:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$ForValue$Bound;->this$0:Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$ForValue;

    .line 6640
    invoke-static {v0}, Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$ForValue;->access$1200(Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$ForValue;)I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$ForValue$Bound;->this$0:Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$ForValue;

    .line 6641
    invoke-static {v0}, Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$ForValue;->access$1300(Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$ForValue;)I

    move-result v0

    .line 6639
    :goto_0
    invoke-virtual {p1, v0, p2}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitJumpInsn(ILnet/bytebuddy/jar/asm/Label;)V

    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$ForValue$Bound;->relocation:Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$Relocation;

    .line 6642
    invoke-interface {v0, p1}, Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$Relocation;->apply(Lnet/bytebuddy/jar/asm/MethodVisitor;)V

    .line 6643
    invoke-virtual {p1, p2}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitLabel(Lnet/bytebuddy/jar/asm/Label;)V

    iget-object p1, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$ForValue$Bound;->this$0:Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$ForValue;

    .line 6644
    invoke-static {p1}, Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$ForValue;->access$1400(Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$ForValue;)I

    move-result p1

    return p1

    .line 6634
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Cannot skip code execution from constructor: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$ForValue$Bound;->instrumentedMethod:Lnet/bytebuddy/description/method/MethodDescription;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

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
    iget-boolean v2, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$ForValue$Bound;->inverted:Z

    check-cast p1, Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$ForValue$Bound;

    iget-boolean v3, p1, Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$ForValue$Bound;->inverted:Z

    if-eq v2, v3, :cond_3

    return v1

    :cond_3
    iget-object v2, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$ForValue$Bound;->this$0:Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$ForValue;

    iget-object v3, p1, Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$ForValue$Bound;->this$0:Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$ForValue;

    invoke-virtual {v2, v3}, Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$ForValue;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    :cond_4
    iget-object v2, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$ForValue$Bound;->instrumentedMethod:Lnet/bytebuddy/description/method/MethodDescription;

    iget-object v3, p1, Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$ForValue$Bound;->instrumentedMethod:Lnet/bytebuddy/description/method/MethodDescription;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    return v1

    :cond_5
    iget-object v2, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$ForValue$Bound;->relocation:Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$Relocation;

    iget-object p1, p1, Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$ForValue$Bound;->relocation:Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$Relocation;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    return v1

    :cond_6
    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$ForValue$Bound;->instrumentedMethod:Lnet/bytebuddy/description/method/MethodDescription;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$ForValue$Bound;->relocation:Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$Relocation;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-boolean v0, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$ForValue$Bound;->inverted:Z

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$ForValue$Bound;->this$0:Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$ForValue;

    invoke-virtual {v0}, Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$ForValue;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method
