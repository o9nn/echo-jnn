.class public Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$MethodToken$ParameterToken;
.super Ljava/lang/Object;
.source "TypePool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$MethodToken;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "ParameterToken"
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# static fields
.field protected static final NO_MODIFIERS:Ljava/lang/Integer;

.field protected static final NO_NAME:Ljava/lang/String;


# instance fields
.field private final modifiers:Ljava/lang/Integer;
    .annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$ValueHandling;
        value = .enum Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$ValueHandling$Sort;->REVERSE_NULLABILITY:Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$ValueHandling$Sort;
    .end annotation
.end field

.field private final name:Ljava/lang/String;
    .annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$ValueHandling;
        value = .enum Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$ValueHandling$Sort;->REVERSE_NULLABILITY:Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$ValueHandling$Sort;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    sget-object v0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$MethodToken$ParameterToken;->NO_NAME:Ljava/lang/String;

    .line 6050
    invoke-direct {p0, v0}, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$MethodToken$ParameterToken;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$MethodToken$ParameterToken;->NO_MODIFIERS:Ljava/lang/Integer;

    .line 6059
    invoke-direct {p0, p1, v0}, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$MethodToken$ParameterToken;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 0

    .line 6068
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$MethodToken$ParameterToken;->name:Ljava/lang/String;

    iput-object p2, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$MethodToken$ParameterToken;->modifiers:Ljava/lang/Integer;

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
    iget-object v2, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$MethodToken$ParameterToken;->modifiers:Ljava/lang/Integer;

    check-cast p1, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$MethodToken$ParameterToken;

    iget-object v3, p1, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$MethodToken$ParameterToken;->modifiers:Ljava/lang/Integer;

    if-eqz v3, :cond_3

    if-eqz v2, :cond_4

    invoke-virtual {v2, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    return v1

    :cond_3
    if-eqz v2, :cond_5

    :cond_4
    return v1

    :cond_5
    iget-object v2, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$MethodToken$ParameterToken;->name:Ljava/lang/String;

    iget-object p1, p1, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$MethodToken$ParameterToken;->name:Ljava/lang/String;

    if-eqz p1, :cond_6

    if-eqz v2, :cond_7

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    return v1

    :cond_6
    if-eqz v2, :cond_8

    :cond_7
    return v1

    :cond_8
    return v0
.end method

.method protected getModifiers()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$MethodToken$ParameterToken;->modifiers:Ljava/lang/Integer;

    return-object v0
.end method

.method protected getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$MethodToken$ParameterToken;->name:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$MethodToken$ParameterToken;->name:Ljava/lang/String;

    const/16 v1, 0x20f

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    :cond_0
    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$MethodToken$ParameterToken;->modifiers:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    :cond_1
    return v1
.end method
