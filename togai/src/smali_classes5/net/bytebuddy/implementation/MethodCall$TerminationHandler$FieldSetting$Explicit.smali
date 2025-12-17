.class public Lnet/bytebuddy/implementation/MethodCall$TerminationHandler$FieldSetting$Explicit;
.super Ljava/lang/Object;
.source "MethodCall.java"

# interfaces
.implements Lnet/bytebuddy/implementation/MethodCall$TerminationHandler$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/MethodCall$TerminationHandler$FieldSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "Explicit"
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# instance fields
.field private final fieldDescription:Lnet/bytebuddy/description/field/FieldDescription;


# direct methods
.method protected constructor <init>(Lnet/bytebuddy/description/field/FieldDescription;)V
    .locals 0

    .line 3101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/implementation/MethodCall$TerminationHandler$FieldSetting$Explicit;->fieldDescription:Lnet/bytebuddy/description/field/FieldDescription;

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
    iget-object v2, p0, Lnet/bytebuddy/implementation/MethodCall$TerminationHandler$FieldSetting$Explicit;->fieldDescription:Lnet/bytebuddy/description/field/FieldDescription;

    check-cast p1, Lnet/bytebuddy/implementation/MethodCall$TerminationHandler$FieldSetting$Explicit;

    iget-object p1, p1, Lnet/bytebuddy/implementation/MethodCall$TerminationHandler$FieldSetting$Explicit;->fieldDescription:Lnet/bytebuddy/description/field/FieldDescription;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v1

    :cond_3
    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/implementation/MethodCall$TerminationHandler$FieldSetting$Explicit;->fieldDescription:Lnet/bytebuddy/description/field/FieldDescription;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    return v1
.end method

.method public make(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/implementation/MethodCall$TerminationHandler;
    .locals 4

    iget-object v0, p0, Lnet/bytebuddy/implementation/MethodCall$TerminationHandler$FieldSetting$Explicit;->fieldDescription:Lnet/bytebuddy/description/field/FieldDescription;

    .line 3109
    invoke-interface {v0}, Lnet/bytebuddy/description/field/FieldDescription;->isStatic()Z

    move-result v0

    const-string v1, " from "

    if-nez v0, :cond_1

    iget-object v0, p0, Lnet/bytebuddy/implementation/MethodCall$TerminationHandler$FieldSetting$Explicit;->fieldDescription:Lnet/bytebuddy/description/field/FieldDescription;

    invoke-interface {v0}, Lnet/bytebuddy/description/field/FieldDescription;->getDeclaringType()Lnet/bytebuddy/description/type/TypeDefinition;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDefinition;->asErasure()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    invoke-interface {p1, v0}, Lnet/bytebuddy/description/type/TypeDescription;->isAssignableTo(Lnet/bytebuddy/description/type/TypeDescription;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3110
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Cannot set "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lnet/bytebuddy/implementation/MethodCall$TerminationHandler$FieldSetting$Explicit;->fieldDescription:Lnet/bytebuddy/description/field/FieldDescription;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lnet/bytebuddy/implementation/MethodCall$TerminationHandler$FieldSetting$Explicit;->fieldDescription:Lnet/bytebuddy/description/field/FieldDescription;

    .line 3111
    invoke-interface {v0, p1}, Lnet/bytebuddy/description/field/FieldDescription;->isAccessibleTo(Lnet/bytebuddy/description/type/TypeDescription;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3114
    new-instance p1, Lnet/bytebuddy/implementation/MethodCall$TerminationHandler$FieldSetting;

    iget-object v0, p0, Lnet/bytebuddy/implementation/MethodCall$TerminationHandler$FieldSetting$Explicit;->fieldDescription:Lnet/bytebuddy/description/field/FieldDescription;

    invoke-direct {p1, v0}, Lnet/bytebuddy/implementation/MethodCall$TerminationHandler$FieldSetting;-><init>(Lnet/bytebuddy/description/field/FieldDescription;)V

    return-object p1

    .line 3112
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Cannot access "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lnet/bytebuddy/implementation/MethodCall$TerminationHandler$FieldSetting$Explicit;->fieldDescription:Lnet/bytebuddy/description/field/FieldDescription;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
