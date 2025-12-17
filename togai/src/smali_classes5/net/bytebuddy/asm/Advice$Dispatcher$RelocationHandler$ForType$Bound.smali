.class public Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$ForType$Bound;
.super Ljava/lang/Object;
.source "Advice.java"

# interfaces
.implements Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$Bound;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$ForType;
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

.field private final relocation:Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$Relocation;

.field final synthetic this$0:Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$ForType;


# direct methods
.method protected constructor <init>(Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$ForType;Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$Relocation;)V
    .locals 0

    iput-object p1, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$ForType$Bound;->this$0:Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$ForType;

    .line 6719
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$ForType$Bound;->instrumentedMethod:Lnet/bytebuddy/description/method/MethodDescription;

    iput-object p3, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$ForType$Bound;->relocation:Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$Relocation;

    return-void
.end method


# virtual methods
.method public apply(Lnet/bytebuddy/jar/asm/MethodVisitor;I)I
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$ForType$Bound;->instrumentedMethod:Lnet/bytebuddy/description/method/MethodDescription;

    .line 6728
    invoke-interface {v0}, Lnet/bytebuddy/description/method/MethodDescription;->isConstructor()Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x19

    .line 6731
    invoke-virtual {p1, v0, p2}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitVarInsn(II)V

    iget-object p2, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$ForType$Bound;->this$0:Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$ForType;

    .line 6732
    invoke-static {p2}, Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$ForType;->access$1500(Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$ForType;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object p2

    invoke-interface {p2}, Lnet/bytebuddy/description/type/TypeDescription;->getInternalName()Ljava/lang/String;

    move-result-object p2

    const/16 v0, 0xc1

    invoke-virtual {p1, v0, p2}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    .line 6733
    new-instance p2, Lnet/bytebuddy/jar/asm/Label;

    invoke-direct {p2}, Lnet/bytebuddy/jar/asm/Label;-><init>()V

    const/16 v0, 0x99

    .line 6734
    invoke-virtual {p1, v0, p2}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitJumpInsn(ILnet/bytebuddy/jar/asm/Label;)V

    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$ForType$Bound;->relocation:Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$Relocation;

    .line 6735
    invoke-interface {v0, p1}, Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$Relocation;->apply(Lnet/bytebuddy/jar/asm/MethodVisitor;)V

    .line 6736
    invoke-virtual {p1, p2}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitLabel(Lnet/bytebuddy/jar/asm/Label;)V

    const/4 p1, 0x0

    return p1

    .line 6729
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Cannot skip code execution from constructor: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$ForType$Bound;->instrumentedMethod:Lnet/bytebuddy/description/method/MethodDescription;

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
    iget-object v2, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$ForType$Bound;->instrumentedMethod:Lnet/bytebuddy/description/method/MethodDescription;

    check-cast p1, Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$ForType$Bound;

    iget-object v3, p1, Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$ForType$Bound;->instrumentedMethod:Lnet/bytebuddy/description/method/MethodDescription;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    :cond_3
    iget-object v2, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$ForType$Bound;->relocation:Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$Relocation;

    iget-object v3, p1, Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$ForType$Bound;->relocation:Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$Relocation;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    :cond_4
    iget-object v2, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$ForType$Bound;->this$0:Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$ForType;

    iget-object p1, p1, Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$ForType$Bound;->this$0:Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$ForType;

    invoke-virtual {v2, p1}, Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$ForType;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    return v1

    :cond_5
    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$ForType$Bound;->instrumentedMethod:Lnet/bytebuddy/description/method/MethodDescription;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$ForType$Bound;->relocation:Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$Relocation;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$ForType$Bound;->this$0:Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$ForType;

    invoke-virtual {v0}, Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$ForType;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method
