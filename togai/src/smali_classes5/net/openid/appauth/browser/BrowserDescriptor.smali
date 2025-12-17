.class public Lnet/openid/appauth/browser/BrowserDescriptor;
.super Ljava/lang/Object;
.source "BrowserDescriptor.java"


# static fields
.field private static final DIGEST_SHA_512:Ljava/lang/String; = "SHA-512"

.field private static final PRIME_HASH_FACTOR:I = 0x16a95


# instance fields
.field public final packageName:Ljava/lang/String;

.field public final signatureHashes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final useCustomTab:Ljava/lang/Boolean;

.field public final version:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/pm/PackageInfo;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "packageInfo",
            "useCustomTab"
        }
    .end annotation

    .line 66
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget-object v1, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 68
    invoke-static {v1}, Lnet/openid/appauth/browser/BrowserDescriptor;->generateSignatureHashes([Landroid/content/pm/Signature;)Ljava/util/Set;

    move-result-object v1

    iget-object p1, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 66
    invoke-direct {p0, v0, v1, p1, p2}, Lnet/openid/appauth/browser/BrowserDescriptor;-><init>(Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "packageName",
            "signatureHashes",
            "version",
            "useCustomTab"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/openid/appauth/browser/BrowserDescriptor;->packageName:Ljava/lang/String;

    iput-object p2, p0, Lnet/openid/appauth/browser/BrowserDescriptor;->signatureHashes:Ljava/util/Set;

    iput-object p3, p0, Lnet/openid/appauth/browser/BrowserDescriptor;->version:Ljava/lang/String;

    .line 97
    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lnet/openid/appauth/browser/BrowserDescriptor;->useCustomTab:Ljava/lang/Boolean;

    return-void
.end method

.method public static generateSignatureHash(Landroid/content/pm/Signature;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "signature"
        }
    .end annotation

    :try_start_0
    const-string v0, "SHA-512"

    .line 150
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 151
    invoke-virtual {p0}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0

    const/16 v0, 0xa

    .line 152
    invoke-static {p0, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 154
    :catch_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Platform does not supportSHA-512 hashing"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static generateSignatureHashes([Landroid/content/pm/Signature;)Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "signatures"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/content/pm/Signature;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 165
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 166
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p0, v2

    .line 167
    invoke-static {v3}, Lnet/openid/appauth/browser/BrowserDescriptor;->generateSignatureHash(Landroid/content/pm/Signature;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public changeUseCustomTab(Z)Lnet/openid/appauth/browser/BrowserDescriptor;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "newUseCustomTabValue"
        }
    .end annotation

    .line 106
    new-instance v0, Lnet/openid/appauth/browser/BrowserDescriptor;

    iget-object v1, p0, Lnet/openid/appauth/browser/BrowserDescriptor;->packageName:Ljava/lang/String;

    iget-object v2, p0, Lnet/openid/appauth/browser/BrowserDescriptor;->signatureHashes:Ljava/util/Set;

    iget-object v3, p0, Lnet/openid/appauth/browser/BrowserDescriptor;->version:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, p1}, Lnet/openid/appauth/browser/BrowserDescriptor;-><init>(Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;Z)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "obj"
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 119
    instance-of v2, p1, Lnet/openid/appauth/browser/BrowserDescriptor;

    if-nez v2, :cond_1

    goto :goto_1

    .line 123
    :cond_1
    check-cast p1, Lnet/openid/appauth/browser/BrowserDescriptor;

    iget-object v2, p0, Lnet/openid/appauth/browser/BrowserDescriptor;->packageName:Ljava/lang/String;

    .line 124
    iget-object v3, p1, Lnet/openid/appauth/browser/BrowserDescriptor;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lnet/openid/appauth/browser/BrowserDescriptor;->version:Ljava/lang/String;

    iget-object v3, p1, Lnet/openid/appauth/browser/BrowserDescriptor;->version:Ljava/lang/String;

    .line 125
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lnet/openid/appauth/browser/BrowserDescriptor;->useCustomTab:Ljava/lang/Boolean;

    iget-object v3, p1, Lnet/openid/appauth/browser/BrowserDescriptor;->useCustomTab:Ljava/lang/Boolean;

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lnet/openid/appauth/browser/BrowserDescriptor;->signatureHashes:Ljava/util/Set;

    iget-object p1, p1, Lnet/openid/appauth/browser/BrowserDescriptor;->signatureHashes:Ljava/util/Set;

    .line 127
    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 4

    iget-object v0, p0, Lnet/openid/appauth/browser/BrowserDescriptor;->packageName:Ljava/lang/String;

    .line 132
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0x16a95

    mul-int/2addr v0, v1

    iget-object v2, p0, Lnet/openid/appauth/browser/BrowserDescriptor;->version:Ljava/lang/String;

    .line 134
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lnet/openid/appauth/browser/BrowserDescriptor;->useCustomTab:Ljava/lang/Boolean;

    .line 135
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    add-int/2addr v0, v2

    iget-object v2, p0, Lnet/openid/appauth/browser/BrowserDescriptor;->signatureHashes:Ljava/util/Set;

    .line 137
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    mul-int/2addr v0, v1

    .line 138
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    add-int/2addr v0, v3

    goto :goto_0

    :cond_0
    return v0
.end method
