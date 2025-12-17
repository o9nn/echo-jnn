.class public Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ValidatingClassVisitor$Constraint$ForClassFileVersion;
.super Ljava/lang/Object;
.source "TypeWriter.java"

# interfaces
.implements Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ValidatingClassVisitor$Constraint;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ValidatingClassVisitor$Constraint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ForClassFileVersion"
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# instance fields
.field private final classFileVersion:Lnet/bytebuddy/ClassFileVersion;


# direct methods
.method protected constructor <init>(Lnet/bytebuddy/ClassFileVersion;)V
    .locals 0

    .line 2867
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ValidatingClassVisitor$Constraint$ForClassFileVersion;->classFileVersion:Lnet/bytebuddy/ClassFileVersion;

    return-void
.end method


# virtual methods
.method public assertAnnotation()V
    .locals 3

    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ValidatingClassVisitor$Constraint$ForClassFileVersion;->classFileVersion:Lnet/bytebuddy/ClassFileVersion;

    .line 2914
    sget-object v1, Lnet/bytebuddy/ClassFileVersion;->JAVA_V5:Lnet/bytebuddy/ClassFileVersion;

    invoke-virtual {v0, v1}, Lnet/bytebuddy/ClassFileVersion;->isLessThan(Lnet/bytebuddy/ClassFileVersion;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2915
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot write annotations for class file version "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ValidatingClassVisitor$Constraint$ForClassFileVersion;->classFileVersion:Lnet/bytebuddy/ClassFileVersion;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public assertDefaultMethodCall()V
    .locals 3

    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ValidatingClassVisitor$Constraint$ForClassFileVersion;->classFileVersion:Lnet/bytebuddy/ClassFileVersion;

    .line 2939
    sget-object v1, Lnet/bytebuddy/ClassFileVersion;->JAVA_V8:Lnet/bytebuddy/ClassFileVersion;

    invoke-virtual {v0, v1}, Lnet/bytebuddy/ClassFileVersion;->isLessThan(Lnet/bytebuddy/ClassFileVersion;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2940
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot invoke default method for class file version "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ValidatingClassVisitor$Constraint$ForClassFileVersion;->classFileVersion:Lnet/bytebuddy/ClassFileVersion;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public assertDefaultValue(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public assertDynamicValueInConstantPool()V
    .locals 3

    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ValidatingClassVisitor$Constraint$ForClassFileVersion;->classFileVersion:Lnet/bytebuddy/ClassFileVersion;

    .line 2993
    sget-object v1, Lnet/bytebuddy/ClassFileVersion;->JAVA_V11:Lnet/bytebuddy/ClassFileVersion;

    invoke-virtual {v0, v1}, Lnet/bytebuddy/ClassFileVersion;->isLessThan(Lnet/bytebuddy/ClassFileVersion;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2994
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot write dynamic constant for class file version "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ValidatingClassVisitor$Constraint$ForClassFileVersion;->classFileVersion:Lnet/bytebuddy/ClassFileVersion;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public assertField(Ljava/lang/String;ZZZZ)V
    .locals 0

    if-eqz p5, :cond_1

    iget-object p2, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ValidatingClassVisitor$Constraint$ForClassFileVersion;->classFileVersion:Lnet/bytebuddy/ClassFileVersion;

    .line 2886
    sget-object p3, Lnet/bytebuddy/ClassFileVersion;->JAVA_V5:Lnet/bytebuddy/ClassFileVersion;

    invoke-virtual {p2, p3}, Lnet/bytebuddy/ClassFileVersion;->isAtLeast(Lnet/bytebuddy/ClassFileVersion;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    .line 2887
    :cond_0
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "Cannot define generic field \'"

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, "\' for class file version "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p3, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ValidatingClassVisitor$Constraint$ForClassFileVersion;->classFileVersion:Lnet/bytebuddy/ClassFileVersion;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    :goto_0
    return-void
.end method

.method public assertHandleInConstantPool()V
    .locals 3

    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ValidatingClassVisitor$Constraint$ForClassFileVersion;->classFileVersion:Lnet/bytebuddy/ClassFileVersion;

    .line 2966
    sget-object v1, Lnet/bytebuddy/ClassFileVersion;->JAVA_V7:Lnet/bytebuddy/ClassFileVersion;

    invoke-virtual {v0, v1}, Lnet/bytebuddy/ClassFileVersion;->isLessThan(Lnet/bytebuddy/ClassFileVersion;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2967
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot write method handle to constant pool for class file version "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ValidatingClassVisitor$Constraint$ForClassFileVersion;->classFileVersion:Lnet/bytebuddy/ClassFileVersion;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public assertInvokeDynamic()V
    .locals 3

    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ValidatingClassVisitor$Constraint$ForClassFileVersion;->classFileVersion:Lnet/bytebuddy/ClassFileVersion;

    .line 2975
    sget-object v1, Lnet/bytebuddy/ClassFileVersion;->JAVA_V7:Lnet/bytebuddy/ClassFileVersion;

    invoke-virtual {v0, v1}, Lnet/bytebuddy/ClassFileVersion;->isLessThan(Lnet/bytebuddy/ClassFileVersion;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2976
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot write invoke dynamic instruction for class file version "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ValidatingClassVisitor$Constraint$ForClassFileVersion;->classFileVersion:Lnet/bytebuddy/ClassFileVersion;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public assertMethod(Ljava/lang/String;ZZZZZZZZ)V
    .locals 0

    if-eqz p9, :cond_1

    iget-object p3, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ValidatingClassVisitor$Constraint$ForClassFileVersion;->classFileVersion:Lnet/bytebuddy/ClassFileVersion;

    .line 2903
    sget-object p4, Lnet/bytebuddy/ClassFileVersion;->JAVA_V5:Lnet/bytebuddy/ClassFileVersion;

    invoke-virtual {p3, p4}, Lnet/bytebuddy/ClassFileVersion;->isAtLeast(Lnet/bytebuddy/ClassFileVersion;)Z

    move-result p3

    if-eqz p3, :cond_0

    goto :goto_0

    .line 2904
    :cond_0
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "Cannot define generic method \'"

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, "\' for class file version "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p3, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ValidatingClassVisitor$Constraint$ForClassFileVersion;->classFileVersion:Lnet/bytebuddy/ClassFileVersion;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    :goto_0
    if-nez p6, :cond_3

    if-nez p2, :cond_2

    goto :goto_1

    .line 2906
    :cond_2
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "Cannot define static or non-virtual method \'"

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, "\' to be abstract"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_3
    :goto_1
    return-void
.end method

.method public assertMethodTypeInConstantPool()V
    .locals 3

    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ValidatingClassVisitor$Constraint$ForClassFileVersion;->classFileVersion:Lnet/bytebuddy/ClassFileVersion;

    .line 2957
    sget-object v1, Lnet/bytebuddy/ClassFileVersion;->JAVA_V7:Lnet/bytebuddy/ClassFileVersion;

    invoke-virtual {v0, v1}, Lnet/bytebuddy/ClassFileVersion;->isLessThan(Lnet/bytebuddy/ClassFileVersion;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2958
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot write method type to constant pool for class file version "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ValidatingClassVisitor$Constraint$ForClassFileVersion;->classFileVersion:Lnet/bytebuddy/ClassFileVersion;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public assertNestMate()V
    .locals 3

    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ValidatingClassVisitor$Constraint$ForClassFileVersion;->classFileVersion:Lnet/bytebuddy/ClassFileVersion;

    .line 3002
    sget-object v1, Lnet/bytebuddy/ClassFileVersion;->JAVA_V11:Lnet/bytebuddy/ClassFileVersion;

    invoke-virtual {v0, v1}, Lnet/bytebuddy/ClassFileVersion;->isLessThan(Lnet/bytebuddy/ClassFileVersion;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3003
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot define nest mate for class file version "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ValidatingClassVisitor$Constraint$ForClassFileVersion;->classFileVersion:Lnet/bytebuddy/ClassFileVersion;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public assertSubRoutine()V
    .locals 3

    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ValidatingClassVisitor$Constraint$ForClassFileVersion;->classFileVersion:Lnet/bytebuddy/ClassFileVersion;

    .line 2984
    sget-object v1, Lnet/bytebuddy/ClassFileVersion;->JAVA_V5:Lnet/bytebuddy/ClassFileVersion;

    invoke-virtual {v0, v1}, Lnet/bytebuddy/ClassFileVersion;->isGreaterThan(Lnet/bytebuddy/ClassFileVersion;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2985
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot write subroutine for class file version "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ValidatingClassVisitor$Constraint$ForClassFileVersion;->classFileVersion:Lnet/bytebuddy/ClassFileVersion;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public assertType(IZZ)V
    .locals 0

    and-int/lit16 p1, p1, 0x2000

    if-eqz p1, :cond_1

    iget-object p1, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ValidatingClassVisitor$Constraint$ForClassFileVersion;->classFileVersion:Lnet/bytebuddy/ClassFileVersion;

    .line 2875
    sget-object p2, Lnet/bytebuddy/ClassFileVersion;->JAVA_V5:Lnet/bytebuddy/ClassFileVersion;

    invoke-virtual {p1, p2}, Lnet/bytebuddy/ClassFileVersion;->isAtLeast(Lnet/bytebuddy/ClassFileVersion;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 2876
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Cannot define annotation type for class file version "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ValidatingClassVisitor$Constraint$ForClassFileVersion;->classFileVersion:Lnet/bytebuddy/ClassFileVersion;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    if-eqz p3, :cond_3

    iget-object p1, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ValidatingClassVisitor$Constraint$ForClassFileVersion;->classFileVersion:Lnet/bytebuddy/ClassFileVersion;

    .line 2877
    sget-object p2, Lnet/bytebuddy/ClassFileVersion;->JAVA_V5:Lnet/bytebuddy/ClassFileVersion;

    invoke-virtual {p1, p2}, Lnet/bytebuddy/ClassFileVersion;->isAtLeast(Lnet/bytebuddy/ClassFileVersion;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    .line 2878
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Cannot define a generic type for class file version "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ValidatingClassVisitor$Constraint$ForClassFileVersion;->classFileVersion:Lnet/bytebuddy/ClassFileVersion;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_1
    return-void
.end method

.method public assertTypeAnnotation()V
    .locals 3

    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ValidatingClassVisitor$Constraint$ForClassFileVersion;->classFileVersion:Lnet/bytebuddy/ClassFileVersion;

    .line 2923
    sget-object v1, Lnet/bytebuddy/ClassFileVersion;->JAVA_V5:Lnet/bytebuddy/ClassFileVersion;

    invoke-virtual {v0, v1}, Lnet/bytebuddy/ClassFileVersion;->isLessThan(Lnet/bytebuddy/ClassFileVersion;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2924
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot write type annotations for class file version "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ValidatingClassVisitor$Constraint$ForClassFileVersion;->classFileVersion:Lnet/bytebuddy/ClassFileVersion;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public assertTypeInConstantPool()V
    .locals 3

    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ValidatingClassVisitor$Constraint$ForClassFileVersion;->classFileVersion:Lnet/bytebuddy/ClassFileVersion;

    .line 2948
    sget-object v1, Lnet/bytebuddy/ClassFileVersion;->JAVA_V5:Lnet/bytebuddy/ClassFileVersion;

    invoke-virtual {v0, v1}, Lnet/bytebuddy/ClassFileVersion;->isLessThan(Lnet/bytebuddy/ClassFileVersion;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2949
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot write type to constant pool for class file version "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ValidatingClassVisitor$Constraint$ForClassFileVersion;->classFileVersion:Lnet/bytebuddy/ClassFileVersion;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
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
    iget-object v2, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ValidatingClassVisitor$Constraint$ForClassFileVersion;->classFileVersion:Lnet/bytebuddy/ClassFileVersion;

    check-cast p1, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ValidatingClassVisitor$Constraint$ForClassFileVersion;

    iget-object p1, p1, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ValidatingClassVisitor$Constraint$ForClassFileVersion;->classFileVersion:Lnet/bytebuddy/ClassFileVersion;

    invoke-virtual {v2, p1}, Lnet/bytebuddy/ClassFileVersion;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v1

    :cond_3
    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ValidatingClassVisitor$Constraint$ForClassFileVersion;->classFileVersion:Lnet/bytebuddy/ClassFileVersion;

    invoke-virtual {v0}, Lnet/bytebuddy/ClassFileVersion;->hashCode()I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    return v1
.end method
