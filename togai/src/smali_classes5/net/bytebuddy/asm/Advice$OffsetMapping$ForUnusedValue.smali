.class public Lnet/bytebuddy/asm/Advice$OffsetMapping$ForUnusedValue;
.super Ljava/lang/Object;
.source "Advice.java"

# interfaces
.implements Lnet/bytebuddy/asm/Advice$OffsetMapping;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/asm/Advice$OffsetMapping;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ForUnusedValue"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/asm/Advice$OffsetMapping$ForUnusedValue$Factory;
    }
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# instance fields
.field private final target:Lnet/bytebuddy/description/type/TypeDefinition;


# direct methods
.method public constructor <init>(Lnet/bytebuddy/description/type/TypeDefinition;)V
    .locals 0

    .line 2757
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForUnusedValue;->target:Lnet/bytebuddy/description/type/TypeDefinition;

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
    iget-object v2, p0, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForUnusedValue;->target:Lnet/bytebuddy/description/type/TypeDefinition;

    check-cast p1, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForUnusedValue;

    iget-object p1, p1, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForUnusedValue;->target:Lnet/bytebuddy/description/type/TypeDefinition;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v1

    :cond_3
    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForUnusedValue;->target:Lnet/bytebuddy/description/type/TypeDefinition;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    return v1
.end method

.method public resolve(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/asm/Advice$ArgumentHandler;Lnet/bytebuddy/asm/Advice$OffsetMapping$Sort;)Lnet/bytebuddy/asm/Advice$OffsetMapping$Target;
    .locals 0

    .line 2769
    new-instance p1, Lnet/bytebuddy/asm/Advice$OffsetMapping$Target$ForDefaultValue$ReadWrite;

    iget-object p2, p0, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForUnusedValue;->target:Lnet/bytebuddy/description/type/TypeDefinition;

    invoke-direct {p1, p2}, Lnet/bytebuddy/asm/Advice$OffsetMapping$Target$ForDefaultValue$ReadWrite;-><init>(Lnet/bytebuddy/description/type/TypeDefinition;)V

    return-object p1
.end method
