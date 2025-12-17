.class public Lnet/bytebuddy/asm/MemberSubstitution$TypePoolResolver$ForExplicitPool;
.super Ljava/lang/Object;
.source "MemberSubstitution.java"

# interfaces
.implements Lnet/bytebuddy/asm/MemberSubstitution$TypePoolResolver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/asm/MemberSubstitution$TypePoolResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ForExplicitPool"
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# instance fields
.field private final typePool:Lnet/bytebuddy/pool/TypePool;


# direct methods
.method public constructor <init>(Lnet/bytebuddy/pool/TypePool;)V
    .locals 0

    .line 705
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/asm/MemberSubstitution$TypePoolResolver$ForExplicitPool;->typePool:Lnet/bytebuddy/pool/TypePool;

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
    iget-object v2, p0, Lnet/bytebuddy/asm/MemberSubstitution$TypePoolResolver$ForExplicitPool;->typePool:Lnet/bytebuddy/pool/TypePool;

    check-cast p1, Lnet/bytebuddy/asm/MemberSubstitution$TypePoolResolver$ForExplicitPool;

    iget-object p1, p1, Lnet/bytebuddy/asm/MemberSubstitution$TypePoolResolver$ForExplicitPool;->typePool:Lnet/bytebuddy/pool/TypePool;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v1

    :cond_3
    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/asm/MemberSubstitution$TypePoolResolver$ForExplicitPool;->typePool:Lnet/bytebuddy/pool/TypePool;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    return v1
.end method

.method public resolve(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/pool/TypePool;)Lnet/bytebuddy/pool/TypePool;
    .locals 0

    iget-object p1, p0, Lnet/bytebuddy/asm/MemberSubstitution$TypePoolResolver$ForExplicitPool;->typePool:Lnet/bytebuddy/pool/TypePool;

    return-object p1
.end method
