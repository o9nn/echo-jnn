.class public final Lcom/auth0/android/result/UserProfile;
.super Ljava/lang/Object;
.source "UserProfile.kt"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u0000\n\u0002\u0008\u0015\u0018\u00002\u00020\u0001B\u00b1\u0001\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\t\u0012\u0008\u0010\n\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000c\u0012\u000e\u0010\r\u001a\n\u0012\u0004\u0012\u00020\u000f\u0018\u00010\u000e\u0012\u0014\u0010\u0010\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0012\u0018\u00010\u0011\u0012\u0014\u0010\u0013\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0012\u0018\u00010\u0011\u0012\u0014\u0010\u0014\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0012\u0018\u00010\u0011\u0012\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0002\u0010\u0016J\u0012\u0010\"\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00120\u0011J\u0012\u0010#\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00120\u0011J\u0008\u0010$\u001a\u0004\u0018\u00010\u0003J\u000c\u0010%\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u000eJ\u0012\u0010&\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00120\u0011R\u001c\u0010\u0014\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0012\u0018\u00010\u0011X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0013\u0010\u000b\u001a\u0004\u0018\u00010\u000c\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018R\u0013\u0010\u0007\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0019\u0010\u001aR\u001c\u0010\u0010\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0012\u0018\u00010\u0011X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0013\u0010\n\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001b\u0010\u001aR\u0013\u0010\u0015\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001c\u0010\u001aR\u0010\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\r\u001a\n\u0012\u0004\u0012\u00020\u000f\u0018\u00010\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0015\u0010\u0008\u001a\u0004\u0018\u00010\t\u00a2\u0006\n\n\u0002\u0010\u001e\u001a\u0004\u0008\u0008\u0010\u001dR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001f\u0010\u001aR\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008 \u0010\u001aR\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008!\u0010\u001aR\u001c\u0010\u0013\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0012\u0018\u00010\u0011X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\'"
    }
    d2 = {
        "Lcom/auth0/android/result/UserProfile;",
        "Ljava/io/Serializable;",
        "id",
        "",
        "name",
        "nickname",
        "pictureURL",
        "email",
        "isEmailVerified",
        "",
        "familyName",
        "createdAt",
        "Ljava/util/Date;",
        "identities",
        "",
        "Lcom/auth0/android/result/UserIdentity;",
        "extraInfo",
        "",
        "",
        "userMetadata",
        "appMetadata",
        "givenName",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/util/Date;Ljava/util/List;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;)V",
        "getCreatedAt",
        "()Ljava/util/Date;",
        "getEmail",
        "()Ljava/lang/String;",
        "getFamilyName",
        "getGivenName",
        "()Ljava/lang/Boolean;",
        "Ljava/lang/Boolean;",
        "getName",
        "getNickname",
        "getPictureURL",
        "getAppMetadata",
        "getExtraInfo",
        "getId",
        "getIdentities",
        "getUserMetadata",
        "auth0_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final appMetadata:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final createdAt:Ljava/util/Date;

.field private final email:Ljava/lang/String;

.field private final extraInfo:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final familyName:Ljava/lang/String;

.field private final givenName:Ljava/lang/String;

.field private final id:Ljava/lang/String;

.field private final identities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/auth0/android/result/UserIdentity;",
            ">;"
        }
    .end annotation
.end field

.field private final isEmailVerified:Ljava/lang/Boolean;

.field private final name:Ljava/lang/String;

.field private final nickname:Ljava/lang/String;

.field private final pictureURL:Ljava/lang/String;

.field private final userMetadata:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/util/Date;Ljava/util/List;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            "Ljava/util/Date;",
            "Ljava/util/List<",
            "Lcom/auth0/android/result/UserIdentity;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/auth0/android/result/UserProfile;->id:Ljava/lang/String;

    iput-object p2, p0, Lcom/auth0/android/result/UserProfile;->name:Ljava/lang/String;

    iput-object p3, p0, Lcom/auth0/android/result/UserProfile;->nickname:Ljava/lang/String;

    iput-object p4, p0, Lcom/auth0/android/result/UserProfile;->pictureURL:Ljava/lang/String;

    iput-object p5, p0, Lcom/auth0/android/result/UserProfile;->email:Ljava/lang/String;

    iput-object p6, p0, Lcom/auth0/android/result/UserProfile;->isEmailVerified:Ljava/lang/Boolean;

    iput-object p7, p0, Lcom/auth0/android/result/UserProfile;->familyName:Ljava/lang/String;

    iput-object p8, p0, Lcom/auth0/android/result/UserProfile;->createdAt:Ljava/util/Date;

    iput-object p9, p0, Lcom/auth0/android/result/UserProfile;->identities:Ljava/util/List;

    iput-object p10, p0, Lcom/auth0/android/result/UserProfile;->extraInfo:Ljava/util/Map;

    iput-object p11, p0, Lcom/auth0/android/result/UserProfile;->userMetadata:Ljava/util/Map;

    iput-object p12, p0, Lcom/auth0/android/result/UserProfile;->appMetadata:Ljava/util/Map;

    iput-object p13, p0, Lcom/auth0/android/result/UserProfile;->givenName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getAppMetadata()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/auth0/android/result/UserProfile;->appMetadata:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 49
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final getCreatedAt()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lcom/auth0/android/result/UserProfile;->createdAt:Ljava/util/Date;

    return-object v0
.end method

.method public final getEmail()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/auth0/android/result/UserProfile;->email:Ljava/lang/String;

    return-object v0
.end method

.method public final getExtraInfo()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/auth0/android/result/UserProfile;->extraInfo:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 62
    invoke-static {v0}, Lkotlin/collections/MapsKt;->toMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public final getFamilyName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/auth0/android/result/UserProfile;->familyName:Ljava/lang/String;

    return-object v0
.end method

.method public final getGivenName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/auth0/android/result/UserProfile;->givenName:Ljava/lang/String;

    return-object v0
.end method

.method public final getId()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/auth0/android/result/UserProfile;->id:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    .line 41
    :cond_0
    invoke-virtual {p0}, Lcom/auth0/android/result/UserProfile;->getExtraInfo()Ljava/util/Map;

    move-result-object v0

    const-string v1, "sub"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/auth0/android/result/UserProfile;->getExtraInfo()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final getIdentities()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/auth0/android/result/UserIdentity;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/auth0/android/result/UserProfile;->identities:Ljava/util/List;

    if-nez v0, :cond_0

    .line 53
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/auth0/android/result/UserProfile;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final getNickname()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/auth0/android/result/UserProfile;->nickname:Ljava/lang/String;

    return-object v0
.end method

.method public final getPictureURL()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/auth0/android/result/UserProfile;->pictureURL:Ljava/lang/String;

    return-object v0
.end method

.method public final getUserMetadata()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/auth0/android/result/UserProfile;->userMetadata:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 45
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final isEmailVerified()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/auth0/android/result/UserProfile;->isEmailVerified:Ljava/lang/Boolean;

    return-object v0
.end method
