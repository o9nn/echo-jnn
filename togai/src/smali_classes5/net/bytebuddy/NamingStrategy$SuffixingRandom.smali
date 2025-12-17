.class public Lnet/bytebuddy/NamingStrategy$SuffixingRandom;
.super Lnet/bytebuddy/NamingStrategy$AbstractBase;
.source "NamingStrategy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/NamingStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SuffixingRandom"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/NamingStrategy$SuffixingRandom$BaseNameResolver;
    }
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# static fields
.field public static final BYTE_BUDDY_RENAME_PACKAGE:Ljava/lang/String; = "net.bytebuddy.renamed"

.field private static final JAVA_PACKAGE:Ljava/lang/String; = "java."

.field public static final NO_PREFIX:Ljava/lang/String; = ""


# instance fields
.field private final baseNameResolver:Lnet/bytebuddy/NamingStrategy$SuffixingRandom$BaseNameResolver;

.field private final javaLangPackagePrefix:Ljava/lang/String;

.field private final randomString:Lnet/bytebuddy/utility/RandomString;
    .annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$ValueHandling;
        value = .enum Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$ValueHandling$Sort;->IGNORE:Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$ValueHandling$Sort;
    .end annotation
.end field

.field private final suffix:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 153
    sget-object v0, Lnet/bytebuddy/NamingStrategy$SuffixingRandom$BaseNameResolver$ForUnnamedType;->INSTANCE:Lnet/bytebuddy/NamingStrategy$SuffixingRandom$BaseNameResolver$ForUnnamedType;

    invoke-direct {p0, p1, v0}, Lnet/bytebuddy/NamingStrategy$SuffixingRandom;-><init>(Ljava/lang/String;Lnet/bytebuddy/NamingStrategy$SuffixingRandom$BaseNameResolver;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 166
    sget-object v0, Lnet/bytebuddy/NamingStrategy$SuffixingRandom$BaseNameResolver$ForUnnamedType;->INSTANCE:Lnet/bytebuddy/NamingStrategy$SuffixingRandom$BaseNameResolver$ForUnnamedType;

    invoke-direct {p0, p1, v0, p2}, Lnet/bytebuddy/NamingStrategy$SuffixingRandom;-><init>(Ljava/lang/String;Lnet/bytebuddy/NamingStrategy$SuffixingRandom$BaseNameResolver;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lnet/bytebuddy/NamingStrategy$SuffixingRandom$BaseNameResolver;)V
    .locals 1

    const-string v0, "net.bytebuddy.renamed"

    .line 177
    invoke-direct {p0, p1, p2, v0}, Lnet/bytebuddy/NamingStrategy$SuffixingRandom;-><init>(Ljava/lang/String;Lnet/bytebuddy/NamingStrategy$SuffixingRandom$BaseNameResolver;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lnet/bytebuddy/NamingStrategy$SuffixingRandom$BaseNameResolver;Ljava/lang/String;)V
    .locals 0

    .line 190
    invoke-direct {p0}, Lnet/bytebuddy/NamingStrategy$AbstractBase;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/NamingStrategy$SuffixingRandom;->suffix:Ljava/lang/String;

    iput-object p2, p0, Lnet/bytebuddy/NamingStrategy$SuffixingRandom;->baseNameResolver:Lnet/bytebuddy/NamingStrategy$SuffixingRandom$BaseNameResolver;

    iput-object p3, p0, Lnet/bytebuddy/NamingStrategy$SuffixingRandom;->javaLangPackagePrefix:Ljava/lang/String;

    .line 194
    new-instance p1, Lnet/bytebuddy/utility/RandomString;

    invoke-direct {p1}, Lnet/bytebuddy/utility/RandomString;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/NamingStrategy$SuffixingRandom;->randomString:Lnet/bytebuddy/utility/RandomString;

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
    iget-object v2, p0, Lnet/bytebuddy/NamingStrategy$SuffixingRandom;->suffix:Ljava/lang/String;

    check-cast p1, Lnet/bytebuddy/NamingStrategy$SuffixingRandom;

    iget-object v3, p1, Lnet/bytebuddy/NamingStrategy$SuffixingRandom;->suffix:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    :cond_3
    iget-object v2, p0, Lnet/bytebuddy/NamingStrategy$SuffixingRandom;->javaLangPackagePrefix:Ljava/lang/String;

    iget-object v3, p1, Lnet/bytebuddy/NamingStrategy$SuffixingRandom;->javaLangPackagePrefix:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    :cond_4
    iget-object v2, p0, Lnet/bytebuddy/NamingStrategy$SuffixingRandom;->baseNameResolver:Lnet/bytebuddy/NamingStrategy$SuffixingRandom$BaseNameResolver;

    iget-object p1, p1, Lnet/bytebuddy/NamingStrategy$SuffixingRandom;->baseNameResolver:Lnet/bytebuddy/NamingStrategy$SuffixingRandom$BaseNameResolver;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    return v1

    :cond_5
    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/NamingStrategy$SuffixingRandom;->suffix:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lnet/bytebuddy/NamingStrategy$SuffixingRandom;->javaLangPackagePrefix:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lnet/bytebuddy/NamingStrategy$SuffixingRandom;->baseNameResolver:Lnet/bytebuddy/NamingStrategy$SuffixingRandom$BaseNameResolver;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method protected name(Lnet/bytebuddy/description/type/TypeDescription;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/NamingStrategy$SuffixingRandom;->baseNameResolver:Lnet/bytebuddy/NamingStrategy$SuffixingRandom$BaseNameResolver;

    .line 199
    invoke-interface {v0, p1}, Lnet/bytebuddy/NamingStrategy$SuffixingRandom$BaseNameResolver;->resolve(Lnet/bytebuddy/description/type/TypeDescription;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "java."

    .line 200
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/bytebuddy/NamingStrategy$SuffixingRandom;->javaLangPackagePrefix:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 201
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lnet/bytebuddy/NamingStrategy$SuffixingRandom;->javaLangPackagePrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 203
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "$"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v1, p0, Lnet/bytebuddy/NamingStrategy$SuffixingRandom;->suffix:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lnet/bytebuddy/NamingStrategy$SuffixingRandom;->randomString:Lnet/bytebuddy/utility/RandomString;

    invoke-virtual {v0}, Lnet/bytebuddy/utility/RandomString;->nextString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
