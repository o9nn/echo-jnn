.class public abstract Lnet/bytebuddy/asm/Advice$OffsetMapping$ForField$Unresolved;
.super Lnet/bytebuddy/asm/Advice$OffsetMapping$ForField;
.source "Advice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/asm/Advice$OffsetMapping$ForField;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Unresolved"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/asm/Advice$OffsetMapping$ForField$Unresolved$Factory;,
        Lnet/bytebuddy/asm/Advice$OffsetMapping$ForField$Unresolved$WithExplicitType;,
        Lnet/bytebuddy/asm/Advice$OffsetMapping$ForField$Unresolved$WithImplicitType;
    }
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lnet/bytebuddy/description/type/TypeDescription$Generic;ZLnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;Ljava/lang/String;)V
    .locals 0

    .line 2169
    invoke-direct {p0, p1, p2, p3}, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForField;-><init>(Lnet/bytebuddy/description/type/TypeDescription$Generic;ZLnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;)V

    iput-object p4, p0, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForField$Unresolved;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    invoke-super {p0, p1}, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForField;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_1

    return v0

    :cond_1
    if-nez p1, :cond_2

    return v1

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    return v1

    :cond_3
    iget-object v2, p0, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForField$Unresolved;->name:Ljava/lang/String;

    check-cast p1, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForField$Unresolved;

    iget-object p1, p1, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForField$Unresolved;->name:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v1

    :cond_4
    return v0
.end method

.method protected abstract fieldLocator(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/dynamic/scaffold/FieldLocator;
.end method

.method public hashCode()I
    .locals 2

    invoke-super {p0}, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForField;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForField$Unresolved;->name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method protected resolve(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/description/field/FieldDescription;
    .locals 3

    .line 2175
    invoke-virtual {p0, p1}, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForField$Unresolved;->fieldLocator(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/dynamic/scaffold/FieldLocator;

    move-result-object v0

    iget-object v1, p0, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForField$Unresolved;->name:Ljava/lang/String;

    invoke-interface {v0, v1}, Lnet/bytebuddy/dynamic/scaffold/FieldLocator;->locate(Ljava/lang/String;)Lnet/bytebuddy/dynamic/scaffold/FieldLocator$Resolution;

    move-result-object v0

    .line 2176
    invoke-interface {v0}, Lnet/bytebuddy/dynamic/scaffold/FieldLocator$Resolution;->isResolved()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2179
    invoke-interface {v0}, Lnet/bytebuddy/dynamic/scaffold/FieldLocator$Resolution;->getField()Lnet/bytebuddy/description/field/FieldDescription;

    move-result-object p1

    return-object p1

    .line 2177
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot locate field named "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForField$Unresolved;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
