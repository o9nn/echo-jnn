.class public Lnet/bytebuddy/implementation/FieldAccessor$ForSetter$Appender;
.super Ljava/lang/Object;
.source "FieldAccessor.java"

# interfaces
.implements Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/FieldAccessor$ForSetter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "Appender"
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
    includeSyntheticFields = true
.end annotation


# instance fields
.field private final fieldLocation:Lnet/bytebuddy/implementation/FieldAccessor$FieldLocation$Prepared;

.field private final initialized:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

.field final synthetic this$0:Lnet/bytebuddy/implementation/FieldAccessor$ForSetter;


# direct methods
.method protected constructor <init>(Lnet/bytebuddy/implementation/FieldAccessor$ForSetter;Lnet/bytebuddy/description/type/TypeDescription;Ljava/lang/Object;Lnet/bytebuddy/implementation/FieldAccessor$FieldLocation$Prepared;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            "TT;",
            "Lnet/bytebuddy/implementation/FieldAccessor$FieldLocation$Prepared;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lnet/bytebuddy/implementation/FieldAccessor$ForSetter$Appender;->this$0:Lnet/bytebuddy/implementation/FieldAccessor$ForSetter;

    .line 1431
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lnet/bytebuddy/implementation/FieldAccessor$ForSetter$Appender;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    iput-object p3, p0, Lnet/bytebuddy/implementation/FieldAccessor$ForSetter$Appender;->initialized:Ljava/lang/Object;

    iput-object p4, p0, Lnet/bytebuddy/implementation/FieldAccessor$ForSetter$Appender;->fieldLocation:Lnet/bytebuddy/implementation/FieldAccessor$FieldLocation$Prepared;

    return-void
.end method


# virtual methods
.method public apply(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;Lnet/bytebuddy/description/method/MethodDescription;)Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender$Size;
    .locals 7

    iget-object v0, p0, Lnet/bytebuddy/implementation/FieldAccessor$ForSetter$Appender;->fieldLocation:Lnet/bytebuddy/implementation/FieldAccessor$FieldLocation$Prepared;

    .line 1441
    invoke-interface {v0, p3}, Lnet/bytebuddy/implementation/FieldAccessor$FieldLocation$Prepared;->resolve(Lnet/bytebuddy/description/method/MethodDescription;)Lnet/bytebuddy/description/field/FieldDescription;

    move-result-object v0

    .line 1442
    invoke-interface {v0}, Lnet/bytebuddy/description/field/FieldDescription;->isStatic()Z

    move-result v1

    const-string v2, " from "

    if-nez v1, :cond_1

    invoke-interface {p3}, Lnet/bytebuddy/description/method/MethodDescription;->isStatic()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 1443
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "Cannot set instance field "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1444
    :cond_1
    :goto_0
    invoke-interface {v0}, Lnet/bytebuddy/description/field/FieldDescription;->isFinal()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p3}, Lnet/bytebuddy/description/method/MethodDescription;->isMethod()Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_1

    .line 1445
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "Cannot set final field "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_1
    iget-object v1, p0, Lnet/bytebuddy/implementation/FieldAccessor$ForSetter$Appender;->this$0:Lnet/bytebuddy/implementation/FieldAccessor$ForSetter;

    iget-object v2, p0, Lnet/bytebuddy/implementation/FieldAccessor$ForSetter$Appender;->initialized:Ljava/lang/Object;

    iget-object v3, p0, Lnet/bytebuddy/implementation/FieldAccessor$ForSetter$Appender;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    .line 1447
    invoke-virtual {v1, v2, v0, v3, p3}, Lnet/bytebuddy/implementation/FieldAccessor$ForSetter;->resolve(Ljava/lang/Object;Lnet/bytebuddy/description/field/FieldDescription;Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/method/MethodDescription;)Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object v1

    .line 1448
    invoke-interface {v1}, Lnet/bytebuddy/implementation/bytecode/StackManipulation;->isValid()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1451
    new-instance v2, Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender$Size;

    new-instance v3, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Compound;

    const/4 v4, 0x4

    new-array v4, v4, [Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    .line 1452
    invoke-interface {p3}, Lnet/bytebuddy/description/method/MethodDescription;->isStatic()Z

    move-result v5

    if-eqz v5, :cond_4

    sget-object v5, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Trivial;->INSTANCE:Lnet/bytebuddy/implementation/bytecode/StackManipulation$Trivial;

    goto :goto_2

    .line 1454
    :cond_4
    invoke-static {}, Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess;->loadThis()Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object v5

    :goto_2
    const/4 v6, 0x0

    aput-object v5, v4, v6

    const/4 v5, 0x1

    aput-object v1, v4, v5

    .line 1456
    invoke-static {v0}, Lnet/bytebuddy/implementation/bytecode/member/FieldAccess;->forField(Lnet/bytebuddy/description/field/FieldDescription;)Lnet/bytebuddy/implementation/bytecode/member/FieldAccess$Defined;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/implementation/bytecode/member/FieldAccess$Defined;->write()Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object v0

    const/4 v1, 0x2

    aput-object v0, v4, v1

    iget-object v0, p0, Lnet/bytebuddy/implementation/FieldAccessor$ForSetter$Appender;->this$0:Lnet/bytebuddy/implementation/FieldAccessor$ForSetter;

    .line 1457
    invoke-static {v0}, Lnet/bytebuddy/implementation/FieldAccessor$ForSetter;->access$100(Lnet/bytebuddy/implementation/FieldAccessor$ForSetter;)Lnet/bytebuddy/implementation/FieldAccessor$ForSetter$TerminationHandler;

    move-result-object v0

    invoke-virtual {v0, p3}, Lnet/bytebuddy/implementation/FieldAccessor$ForSetter$TerminationHandler;->resolve(Lnet/bytebuddy/description/method/MethodDescription;)Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object v0

    const/4 v1, 0x3

    aput-object v0, v4, v1

    invoke-direct {v3, v4}, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Compound;-><init>([Lnet/bytebuddy/implementation/bytecode/StackManipulation;)V

    .line 1458
    invoke-virtual {v3, p1, p2}, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Compound;->apply(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;)Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;

    move-result-object p1

    invoke-virtual {p1}, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;->getMaximalSize()I

    move-result p1

    invoke-interface {p3}, Lnet/bytebuddy/description/method/MethodDescription;->getStackSize()I

    move-result p2

    invoke-direct {v2, p1, p2}, Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender$Size;-><init>(II)V

    return-object v2

    .line 1449
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Set value cannot be assigned to "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

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
    iget-object v2, p0, Lnet/bytebuddy/implementation/FieldAccessor$ForSetter$Appender;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    check-cast p1, Lnet/bytebuddy/implementation/FieldAccessor$ForSetter$Appender;

    iget-object v3, p1, Lnet/bytebuddy/implementation/FieldAccessor$ForSetter$Appender;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    :cond_3
    iget-object v2, p0, Lnet/bytebuddy/implementation/FieldAccessor$ForSetter$Appender;->initialized:Ljava/lang/Object;

    iget-object v3, p1, Lnet/bytebuddy/implementation/FieldAccessor$ForSetter$Appender;->initialized:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    :cond_4
    iget-object v2, p0, Lnet/bytebuddy/implementation/FieldAccessor$ForSetter$Appender;->fieldLocation:Lnet/bytebuddy/implementation/FieldAccessor$FieldLocation$Prepared;

    iget-object v3, p1, Lnet/bytebuddy/implementation/FieldAccessor$ForSetter$Appender;->fieldLocation:Lnet/bytebuddy/implementation/FieldAccessor$FieldLocation$Prepared;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    return v1

    :cond_5
    iget-object v2, p0, Lnet/bytebuddy/implementation/FieldAccessor$ForSetter$Appender;->this$0:Lnet/bytebuddy/implementation/FieldAccessor$ForSetter;

    iget-object p1, p1, Lnet/bytebuddy/implementation/FieldAccessor$ForSetter$Appender;->this$0:Lnet/bytebuddy/implementation/FieldAccessor$ForSetter;

    invoke-virtual {v2, p1}, Lnet/bytebuddy/implementation/FieldAccessor$ForSetter;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    return v1

    :cond_6
    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/implementation/FieldAccessor$ForSetter$Appender;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lnet/bytebuddy/implementation/FieldAccessor$ForSetter$Appender;->initialized:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lnet/bytebuddy/implementation/FieldAccessor$ForSetter$Appender;->fieldLocation:Lnet/bytebuddy/implementation/FieldAccessor$FieldLocation$Prepared;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lnet/bytebuddy/implementation/FieldAccessor$ForSetter$Appender;->this$0:Lnet/bytebuddy/implementation/FieldAccessor$ForSetter;

    invoke-virtual {v0}, Lnet/bytebuddy/implementation/FieldAccessor$ForSetter;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method
