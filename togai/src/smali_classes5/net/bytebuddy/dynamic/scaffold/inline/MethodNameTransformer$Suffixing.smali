.class public Lnet/bytebuddy/dynamic/scaffold/inline/MethodNameTransformer$Suffixing;
.super Ljava/lang/Object;
.source "MethodNameTransformer.java"

# interfaces
.implements Lnet/bytebuddy/dynamic/scaffold/inline/MethodNameTransformer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/dynamic/scaffold/inline/MethodNameTransformer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Suffixing"
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# static fields
.field private static final DEFAULT_SUFFIX:Ljava/lang/String; = "original$"


# instance fields
.field private final suffix:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/dynamic/scaffold/inline/MethodNameTransformer$Suffixing;->suffix:Ljava/lang/String;

    return-void
.end method

.method public static withRandomSuffix()Lnet/bytebuddy/dynamic/scaffold/inline/MethodNameTransformer;
    .locals 3

    .line 60
    new-instance v0, Lnet/bytebuddy/dynamic/scaffold/inline/MethodNameTransformer$Suffixing;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "original$"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lnet/bytebuddy/utility/RandomString;->make()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/bytebuddy/dynamic/scaffold/inline/MethodNameTransformer$Suffixing;-><init>(Ljava/lang/String;)V

    return-object v0
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
    iget-object v2, p0, Lnet/bytebuddy/dynamic/scaffold/inline/MethodNameTransformer$Suffixing;->suffix:Ljava/lang/String;

    check-cast p1, Lnet/bytebuddy/dynamic/scaffold/inline/MethodNameTransformer$Suffixing;

    iget-object p1, p1, Lnet/bytebuddy/dynamic/scaffold/inline/MethodNameTransformer$Suffixing;->suffix:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v1

    :cond_3
    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/inline/MethodNameTransformer$Suffixing;->suffix:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    return v1
.end method

.method public transform(Lnet/bytebuddy/description/method/MethodDescription;)Ljava/lang/String;
    .locals 1

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Lnet/bytebuddy/description/method/MethodDescription;->getInternalName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "$"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/inline/MethodNameTransformer$Suffixing;->suffix:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
