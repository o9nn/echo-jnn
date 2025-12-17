.class public Lnet/openid/appauth/browser/VersionRange;
.super Ljava/lang/Object;
.source "VersionRange.java"


# static fields
.field public static final ANY_VERSION:Lnet/openid/appauth/browser/VersionRange;


# instance fields
.field private mLowerBound:Lnet/openid/appauth/browser/DelimitedVersion;

.field private mUpperBound:Lnet/openid/appauth/browser/DelimitedVersion;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 29
    new-instance v0, Lnet/openid/appauth/browser/VersionRange;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lnet/openid/appauth/browser/VersionRange;-><init>(Lnet/openid/appauth/browser/DelimitedVersion;Lnet/openid/appauth/browser/DelimitedVersion;)V

    sput-object v0, Lnet/openid/appauth/browser/VersionRange;->ANY_VERSION:Lnet/openid/appauth/browser/VersionRange;

    return-void
.end method

.method public constructor <init>(Lnet/openid/appauth/browser/DelimitedVersion;Lnet/openid/appauth/browser/DelimitedVersion;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "lowerBound",
            "upperBound"
        }
    .end annotation

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/openid/appauth/browser/VersionRange;->mLowerBound:Lnet/openid/appauth/browser/DelimitedVersion;

    iput-object p2, p0, Lnet/openid/appauth/browser/VersionRange;->mUpperBound:Lnet/openid/appauth/browser/DelimitedVersion;

    return-void
.end method

.method public static atLeast(Ljava/lang/String;)Lnet/openid/appauth/browser/VersionRange;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "version"
        }
    .end annotation

    .line 39
    invoke-static {p0}, Lnet/openid/appauth/browser/DelimitedVersion;->parse(Ljava/lang/String;)Lnet/openid/appauth/browser/DelimitedVersion;

    move-result-object p0

    invoke-static {p0}, Lnet/openid/appauth/browser/VersionRange;->atLeast(Lnet/openid/appauth/browser/DelimitedVersion;)Lnet/openid/appauth/browser/VersionRange;

    move-result-object p0

    return-object p0
.end method

.method public static atLeast(Lnet/openid/appauth/browser/DelimitedVersion;)Lnet/openid/appauth/browser/VersionRange;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "version"
        }
    .end annotation

    .line 46
    new-instance v0, Lnet/openid/appauth/browser/VersionRange;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lnet/openid/appauth/browser/VersionRange;-><init>(Lnet/openid/appauth/browser/DelimitedVersion;Lnet/openid/appauth/browser/DelimitedVersion;)V

    return-object v0
.end method

.method public static atMost(Ljava/lang/String;)Lnet/openid/appauth/browser/VersionRange;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "version"
        }
    .end annotation

    .line 54
    invoke-static {p0}, Lnet/openid/appauth/browser/DelimitedVersion;->parse(Ljava/lang/String;)Lnet/openid/appauth/browser/DelimitedVersion;

    move-result-object p0

    invoke-static {p0}, Lnet/openid/appauth/browser/VersionRange;->atMost(Lnet/openid/appauth/browser/DelimitedVersion;)Lnet/openid/appauth/browser/VersionRange;

    move-result-object p0

    return-object p0
.end method

.method public static atMost(Lnet/openid/appauth/browser/DelimitedVersion;)Lnet/openid/appauth/browser/VersionRange;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "version"
        }
    .end annotation

    .line 61
    new-instance v0, Lnet/openid/appauth/browser/VersionRange;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lnet/openid/appauth/browser/VersionRange;-><init>(Lnet/openid/appauth/browser/DelimitedVersion;Lnet/openid/appauth/browser/DelimitedVersion;)V

    return-object v0
.end method

.method public static between(Ljava/lang/String;Ljava/lang/String;)Lnet/openid/appauth/browser/VersionRange;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "lowerBound",
            "upperBound"
        }
    .end annotation

    .line 69
    new-instance v0, Lnet/openid/appauth/browser/VersionRange;

    .line 70
    invoke-static {p0}, Lnet/openid/appauth/browser/DelimitedVersion;->parse(Ljava/lang/String;)Lnet/openid/appauth/browser/DelimitedVersion;

    move-result-object p0

    .line 71
    invoke-static {p1}, Lnet/openid/appauth/browser/DelimitedVersion;->parse(Ljava/lang/String;)Lnet/openid/appauth/browser/DelimitedVersion;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lnet/openid/appauth/browser/VersionRange;-><init>(Lnet/openid/appauth/browser/DelimitedVersion;Lnet/openid/appauth/browser/DelimitedVersion;)V

    return-object v0
.end method


# virtual methods
.method public matches(Ljava/lang/String;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "version"
        }
    .end annotation

    .line 90
    invoke-static {p1}, Lnet/openid/appauth/browser/DelimitedVersion;->parse(Ljava/lang/String;)Lnet/openid/appauth/browser/DelimitedVersion;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/openid/appauth/browser/VersionRange;->matches(Lnet/openid/appauth/browser/DelimitedVersion;)Z

    move-result p1

    return p1
.end method

.method public matches(Lnet/openid/appauth/browser/DelimitedVersion;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "version"
        }
    .end annotation

    iget-object v0, p0, Lnet/openid/appauth/browser/VersionRange;->mLowerBound:Lnet/openid/appauth/browser/DelimitedVersion;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 97
    invoke-virtual {v0, p1}, Lnet/openid/appauth/browser/DelimitedVersion;->compareTo(Lnet/openid/appauth/browser/DelimitedVersion;)I

    move-result v0

    if-lez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lnet/openid/appauth/browser/VersionRange;->mUpperBound:Lnet/openid/appauth/browser/DelimitedVersion;

    if-eqz v0, :cond_1

    .line 101
    invoke-virtual {v0, p1}, Lnet/openid/appauth/browser/DelimitedVersion;->compareTo(Lnet/openid/appauth/browser/DelimitedVersion;)I

    move-result p1

    if-gez p1, :cond_1

    return v1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lnet/openid/appauth/browser/VersionRange;->mLowerBound:Lnet/openid/appauth/browser/DelimitedVersion;

    if-nez v0, :cond_1

    iget-object v0, p0, Lnet/openid/appauth/browser/VersionRange;->mUpperBound:Lnet/openid/appauth/browser/DelimitedVersion;

    if-nez v0, :cond_0

    const-string v0, "any version"

    return-object v0

    .line 115
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lnet/openid/appauth/browser/VersionRange;->mUpperBound:Lnet/openid/appauth/browser/DelimitedVersion;

    invoke-virtual {v1}, Lnet/openid/appauth/browser/DelimitedVersion;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " or lower"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    iget-object v0, p0, Lnet/openid/appauth/browser/VersionRange;->mUpperBound:Lnet/openid/appauth/browser/DelimitedVersion;

    if-eqz v0, :cond_2

    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "between "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lnet/openid/appauth/browser/VersionRange;->mLowerBound:Lnet/openid/appauth/browser/DelimitedVersion;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " and "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lnet/openid/appauth/browser/VersionRange;->mUpperBound:Lnet/openid/appauth/browser/DelimitedVersion;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 122
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lnet/openid/appauth/browser/VersionRange;->mLowerBound:Lnet/openid/appauth/browser/DelimitedVersion;

    invoke-virtual {v1}, Lnet/openid/appauth/browser/DelimitedVersion;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " or higher"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
