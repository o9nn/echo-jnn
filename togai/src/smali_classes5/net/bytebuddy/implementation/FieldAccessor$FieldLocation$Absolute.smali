.class public Lnet/bytebuddy/implementation/FieldAccessor$FieldLocation$Absolute;
.super Ljava/lang/Object;
.source "FieldAccessor.java"

# interfaces
.implements Lnet/bytebuddy/implementation/FieldAccessor$FieldLocation;
.implements Lnet/bytebuddy/implementation/FieldAccessor$FieldLocation$Prepared;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/FieldAccessor$FieldLocation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Absolute"
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# instance fields
.field private final fieldDescription:Lnet/bytebuddy/description/field/FieldDescription;


# direct methods
.method protected constructor <init>(Lnet/bytebuddy/description/field/FieldDescription;)V
    .locals 0

    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/implementation/FieldAccessor$FieldLocation$Absolute;->fieldDescription:Lnet/bytebuddy/description/field/FieldDescription;

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
    iget-object v2, p0, Lnet/bytebuddy/implementation/FieldAccessor$FieldLocation$Absolute;->fieldDescription:Lnet/bytebuddy/description/field/FieldDescription;

    check-cast p1, Lnet/bytebuddy/implementation/FieldAccessor$FieldLocation$Absolute;

    iget-object p1, p1, Lnet/bytebuddy/implementation/FieldAccessor$FieldLocation$Absolute;->fieldDescription:Lnet/bytebuddy/description/field/FieldDescription;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v1

    :cond_3
    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/implementation/FieldAccessor$FieldLocation$Absolute;->fieldDescription:Lnet/bytebuddy/description/field/FieldDescription;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    return v1
.end method

.method public prepare(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/implementation/FieldAccessor$FieldLocation$Prepared;
    .locals 3

    iget-object v0, p0, Lnet/bytebuddy/implementation/FieldAccessor$FieldLocation$Absolute;->fieldDescription:Lnet/bytebuddy/description/field/FieldDescription;

    .line 208
    invoke-interface {v0}, Lnet/bytebuddy/description/field/FieldDescription;->isStatic()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lnet/bytebuddy/implementation/FieldAccessor$FieldLocation$Absolute;->fieldDescription:Lnet/bytebuddy/description/field/FieldDescription;

    invoke-interface {v0}, Lnet/bytebuddy/description/field/FieldDescription;->getDeclaringType()Lnet/bytebuddy/description/type/TypeDefinition;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDefinition;->asErasure()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    invoke-interface {p1, v0}, Lnet/bytebuddy/description/type/TypeDescription;->isAssignableTo(Lnet/bytebuddy/description/type/TypeDescription;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 209
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lnet/bytebuddy/implementation/FieldAccessor$FieldLocation$Absolute;->fieldDescription:Lnet/bytebuddy/description/field/FieldDescription;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not declared by "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lnet/bytebuddy/implementation/FieldAccessor$FieldLocation$Absolute;->fieldDescription:Lnet/bytebuddy/description/field/FieldDescription;

    .line 210
    invoke-interface {v0, p1}, Lnet/bytebuddy/description/field/FieldDescription;->isAccessibleTo(Lnet/bytebuddy/description/type/TypeDescription;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-object p0

    .line 211
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot access "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lnet/bytebuddy/implementation/FieldAccessor$FieldLocation$Absolute;->fieldDescription:Lnet/bytebuddy/description/field/FieldDescription;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public resolve(Lnet/bytebuddy/description/method/MethodDescription;)Lnet/bytebuddy/description/field/FieldDescription;
    .locals 0

    iget-object p1, p0, Lnet/bytebuddy/implementation/FieldAccessor$FieldLocation$Absolute;->fieldDescription:Lnet/bytebuddy/description/field/FieldDescription;

    return-object p1
.end method

.method public with(Lnet/bytebuddy/dynamic/scaffold/FieldLocator$Factory;)Lnet/bytebuddy/implementation/FieldAccessor$FieldLocation;
    .locals 1

    .line 201
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot specify a field locator factory for an absolute field location"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
