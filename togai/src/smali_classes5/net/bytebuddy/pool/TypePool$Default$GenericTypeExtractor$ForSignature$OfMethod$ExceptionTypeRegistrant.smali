.class public Lnet/bytebuddy/pool/TypePool$Default$GenericTypeExtractor$ForSignature$OfMethod$ExceptionTypeRegistrant;
.super Ljava/lang/Object;
.source "TypePool.java"

# interfaces
.implements Lnet/bytebuddy/pool/TypePool$Default$GenericTypeRegistrant;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/pool/TypePool$Default$GenericTypeExtractor$ForSignature$OfMethod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ExceptionTypeRegistrant"
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
    includeSyntheticFields = true
.end annotation


# instance fields
.field final synthetic this$0:Lnet/bytebuddy/pool/TypePool$Default$GenericTypeExtractor$ForSignature$OfMethod;


# direct methods
.method protected constructor <init>(Lnet/bytebuddy/pool/TypePool$Default$GenericTypeExtractor$ForSignature$OfMethod;)V
    .locals 0

    iput-object p1, p0, Lnet/bytebuddy/pool/TypePool$Default$GenericTypeExtractor$ForSignature$OfMethod$ExceptionTypeRegistrant;->this$0:Lnet/bytebuddy/pool/TypePool$Default$GenericTypeExtractor$ForSignature$OfMethod;

    .line 2732
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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
    iget-object v2, p0, Lnet/bytebuddy/pool/TypePool$Default$GenericTypeExtractor$ForSignature$OfMethod$ExceptionTypeRegistrant;->this$0:Lnet/bytebuddy/pool/TypePool$Default$GenericTypeExtractor$ForSignature$OfMethod;

    check-cast p1, Lnet/bytebuddy/pool/TypePool$Default$GenericTypeExtractor$ForSignature$OfMethod$ExceptionTypeRegistrant;

    iget-object p1, p1, Lnet/bytebuddy/pool/TypePool$Default$GenericTypeExtractor$ForSignature$OfMethod$ExceptionTypeRegistrant;->this$0:Lnet/bytebuddy/pool/TypePool$Default$GenericTypeExtractor$ForSignature$OfMethod;

    invoke-virtual {v2, p1}, Lnet/bytebuddy/pool/TypePool$Default$GenericTypeExtractor$ForSignature$OfMethod;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v1

    :cond_3
    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/pool/TypePool$Default$GenericTypeExtractor$ForSignature$OfMethod$ExceptionTypeRegistrant;->this$0:Lnet/bytebuddy/pool/TypePool$Default$GenericTypeExtractor$ForSignature$OfMethod;

    invoke-virtual {v0}, Lnet/bytebuddy/pool/TypePool$Default$GenericTypeExtractor$ForSignature$OfMethod;->hashCode()I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    return v1
.end method

.method public register(Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken;)V
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/pool/TypePool$Default$GenericTypeExtractor$ForSignature$OfMethod$ExceptionTypeRegistrant;->this$0:Lnet/bytebuddy/pool/TypePool$Default$GenericTypeExtractor$ForSignature$OfMethod;

    .line 2738
    invoke-static {v0}, Lnet/bytebuddy/pool/TypePool$Default$GenericTypeExtractor$ForSignature$OfMethod;->access$1100(Lnet/bytebuddy/pool/TypePool$Default$GenericTypeExtractor$ForSignature$OfMethod;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
