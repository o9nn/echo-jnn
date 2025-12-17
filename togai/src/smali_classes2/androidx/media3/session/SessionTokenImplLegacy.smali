.class final Landroidx/media3/session/SessionTokenImplLegacy;
.super Ljava/lang/Object;
.source "SessionTokenImplLegacy.java"

# interfaces
.implements Landroidx/media3/session/SessionToken$SessionTokenImpl;


# static fields
.field public static final CREATOR:Landroidx/media3/common/Bundleable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/media3/common/Bundleable$Creator<",
            "Landroidx/media3/session/SessionTokenImplLegacy;",
            ">;"
        }
    .end annotation
.end field

.field private static final FIELD_COMPONENT_NAME:Ljava/lang/String;

.field private static final FIELD_EXTRAS:Ljava/lang/String;

.field private static final FIELD_LEGACY_TOKEN:Ljava/lang/String;

.field private static final FIELD_PACKAGE_NAME:Ljava/lang/String;

.field private static final FIELD_TYPE:Ljava/lang/String;

.field private static final FIELD_UID:Ljava/lang/String;


# instance fields
.field private final componentName:Landroid/content/ComponentName;

.field private final extras:Landroid/os/Bundle;

.field private final legacyToken:Landroid/support/v4/media/session/MediaSessionCompat$Token;

.field private final packageName:Ljava/lang/String;

.field private final type:I

.field private final uid:I


# direct methods
.method public static synthetic $r8$lambda$qeDi1lDTUHahPZBMRcaSuLlg43g(Landroid/os/Bundle;)Landroidx/media3/session/SessionTokenImplLegacy;
    .locals 0

    invoke-static {p0}, Landroidx/media3/session/SessionTokenImplLegacy;->fromBundle(Landroid/os/Bundle;)Landroidx/media3/session/SessionTokenImplLegacy;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    .line 173
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/session/SessionTokenImplLegacy;->FIELD_LEGACY_TOKEN:Ljava/lang/String;

    const/4 v0, 0x1

    .line 174
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/session/SessionTokenImplLegacy;->FIELD_UID:Ljava/lang/String;

    const/4 v0, 0x2

    .line 175
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/session/SessionTokenImplLegacy;->FIELD_TYPE:Ljava/lang/String;

    const/4 v0, 0x3

    .line 176
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/session/SessionTokenImplLegacy;->FIELD_COMPONENT_NAME:Ljava/lang/String;

    const/4 v0, 0x4

    .line 177
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/session/SessionTokenImplLegacy;->FIELD_PACKAGE_NAME:Ljava/lang/String;

    const/4 v0, 0x5

    .line 178
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/session/SessionTokenImplLegacy;->FIELD_EXTRAS:Ljava/lang/String;

    .line 193
    new-instance v0, Landroidx/media3/session/SessionTokenImplLegacy$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroidx/media3/session/SessionTokenImplLegacy$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Landroidx/media3/session/SessionTokenImplLegacy;->CREATOR:Landroidx/media3/common/Bundleable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/content/ComponentName;I)V
    .locals 7

    const/4 v1, 0x0

    const/16 v3, 0x65

    .line 64
    invoke-static {p1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/content/ComponentName;

    .line 65
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    move-object v0, p0

    move v2, p2

    .line 60
    invoke-direct/range {v0 .. v6}, Landroidx/media3/session/SessionTokenImplLegacy;-><init>(Landroid/support/v4/media/session/MediaSessionCompat$Token;IILandroid/content/ComponentName;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method private constructor <init>(Landroid/support/v4/media/session/MediaSessionCompat$Token;IILandroid/content/ComponentName;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/session/SessionTokenImplLegacy;->legacyToken:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    iput p2, p0, Landroidx/media3/session/SessionTokenImplLegacy;->uid:I

    iput p3, p0, Landroidx/media3/session/SessionTokenImplLegacy;->type:I

    iput-object p4, p0, Landroidx/media3/session/SessionTokenImplLegacy;->componentName:Landroid/content/ComponentName;

    iput-object p5, p0, Landroidx/media3/session/SessionTokenImplLegacy;->packageName:Ljava/lang/String;

    iput-object p6, p0, Landroidx/media3/session/SessionTokenImplLegacy;->extras:Landroid/os/Bundle;

    return-void
.end method

.method public constructor <init>(Landroid/support/v4/media/session/MediaSessionCompat$Token;Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 7

    .line 51
    invoke-static {p1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Landroid/support/v4/media/session/MediaSessionCompat$Token;

    const/16 v3, 0x64

    const/4 v4, 0x0

    .line 55
    invoke-static {p2}, Landroidx/media3/common/util/Assertions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 56
    invoke-static {p4}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v6, p1

    check-cast v6, Landroid/os/Bundle;

    move-object v0, p0

    move v2, p3

    .line 50
    invoke-direct/range {v0 .. v6}, Landroidx/media3/session/SessionTokenImplLegacy;-><init>(Landroid/support/v4/media/session/MediaSessionCompat$Token;IILandroid/content/ComponentName;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method private static fromBundle(Landroid/os/Bundle;)Landroidx/media3/session/SessionTokenImplLegacy;
    .locals 8

    sget-object v0, Landroidx/media3/session/SessionTokenImplLegacy;->FIELD_LEGACY_TOKEN:Ljava/lang/String;

    .line 196
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 199
    :cond_0
    invoke-static {v0}, Landroid/support/v4/media/session/MediaSessionCompat$Token;->fromBundle(Landroid/os/Bundle;)Landroid/support/v4/media/session/MediaSessionCompat$Token;

    move-result-object v0

    :goto_0
    move-object v2, v0

    sget-object v0, Landroidx/media3/session/SessionTokenImplLegacy;->FIELD_UID:Ljava/lang/String;

    .line 200
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    const-string/jumbo v3, "uid should be set."

    invoke-static {v1, v3}, Landroidx/media3/common/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    .line 201
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    sget-object v0, Landroidx/media3/session/SessionTokenImplLegacy;->FIELD_TYPE:Ljava/lang/String;

    .line 202
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    const-string/jumbo v4, "type should be set."

    invoke-static {v1, v4}, Landroidx/media3/common/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    .line 203
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    sget-object v0, Landroidx/media3/session/SessionTokenImplLegacy;->FIELD_COMPONENT_NAME:Ljava/lang/String;

    .line 204
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/content/ComponentName;

    sget-object v0, Landroidx/media3/session/SessionTokenImplLegacy;->FIELD_PACKAGE_NAME:Ljava/lang/String;

    .line 206
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "package name should be set."

    invoke-static {v0, v1}, Landroidx/media3/common/util/Assertions;->checkNotEmpty(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    sget-object v0, Landroidx/media3/session/SessionTokenImplLegacy;->FIELD_EXTRAS:Ljava/lang/String;

    .line 207
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    .line 208
    new-instance v0, Landroidx/media3/session/SessionTokenImplLegacy;

    if-nez p0, :cond_1

    .line 209
    sget-object p0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    :cond_1
    move-object v7, p0

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Landroidx/media3/session/SessionTokenImplLegacy;-><init>(Landroid/support/v4/media/session/MediaSessionCompat$Token;IILandroid/content/ComponentName;Ljava/lang/String;Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 91
    instance-of v0, p1, Landroidx/media3/session/SessionTokenImplLegacy;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 94
    :cond_0
    check-cast p1, Landroidx/media3/session/SessionTokenImplLegacy;

    iget v0, p0, Landroidx/media3/session/SessionTokenImplLegacy;->type:I

    .line 95
    iget v2, p1, Landroidx/media3/session/SessionTokenImplLegacy;->type:I

    if-eq v0, v2, :cond_1

    return v1

    :cond_1
    const/16 v2, 0x64

    if-eq v0, v2, :cond_3

    const/16 v2, 0x65

    if-eq v0, v2, :cond_2

    return v1

    :cond_2
    iget-object v0, p0, Landroidx/media3/session/SessionTokenImplLegacy;->componentName:Landroid/content/ComponentName;

    .line 102
    iget-object p1, p1, Landroidx/media3/session/SessionTokenImplLegacy;->componentName:Landroid/content/ComponentName;

    invoke-static {v0, p1}, Landroidx/media3/common/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_3
    iget-object v0, p0, Landroidx/media3/session/SessionTokenImplLegacy;->legacyToken:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    .line 100
    iget-object p1, p1, Landroidx/media3/session/SessionTokenImplLegacy;->legacyToken:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    invoke-static {v0, p1}, Landroidx/media3/common/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getBinder()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroidx/media3/session/SessionTokenImplLegacy;->legacyToken:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    return-object v0
.end method

.method public getComponentName()Landroid/content/ComponentName;
    .locals 1

    iget-object v0, p0, Landroidx/media3/session/SessionTokenImplLegacy;->componentName:Landroid/content/ComponentName;

    return-object v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 2

    .line 162
    new-instance v0, Landroid/os/Bundle;

    iget-object v1, p0, Landroidx/media3/session/SessionTokenImplLegacy;->extras:Landroid/os/Bundle;

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    return-object v0
.end method

.method public getInterfaceVersion()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getLibraryVersion()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroidx/media3/session/SessionTokenImplLegacy;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getServiceName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroidx/media3/session/SessionTokenImplLegacy;->componentName:Landroid/content/ComponentName;

    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0

    .line 129
    :cond_0
    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getType()I
    .locals 2

    iget v0, p0, Landroidx/media3/session/SessionTokenImplLegacy;->type:I

    const/16 v1, 0x65

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x2

    return v0
.end method

.method public getUid()I
    .locals 1

    iget v0, p0, Landroidx/media3/session/SessionTokenImplLegacy;->uid:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Landroidx/media3/session/SessionTokenImplLegacy;->type:I

    .line 86
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Landroidx/media3/session/SessionTokenImplLegacy;->componentName:Landroid/content/ComponentName;

    iget-object v2, p0, Landroidx/media3/session/SessionTokenImplLegacy;->legacyToken:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isLegacySession()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 3

    .line 182
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    sget-object v1, Landroidx/media3/session/SessionTokenImplLegacy;->FIELD_LEGACY_TOKEN:Ljava/lang/String;

    iget-object v2, p0, Landroidx/media3/session/SessionTokenImplLegacy;->legacyToken:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    .line 183
    :cond_0
    invoke-virtual {v2}, Landroid/support/v4/media/session/MediaSessionCompat$Token;->toBundle()Landroid/os/Bundle;

    move-result-object v2

    :goto_0
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    sget-object v1, Landroidx/media3/session/SessionTokenImplLegacy;->FIELD_UID:Ljava/lang/String;

    iget v2, p0, Landroidx/media3/session/SessionTokenImplLegacy;->uid:I

    .line 184
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    sget-object v1, Landroidx/media3/session/SessionTokenImplLegacy;->FIELD_TYPE:Ljava/lang/String;

    iget v2, p0, Landroidx/media3/session/SessionTokenImplLegacy;->type:I

    .line 185
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    sget-object v1, Landroidx/media3/session/SessionTokenImplLegacy;->FIELD_COMPONENT_NAME:Ljava/lang/String;

    iget-object v2, p0, Landroidx/media3/session/SessionTokenImplLegacy;->componentName:Landroid/content/ComponentName;

    .line 186
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    sget-object v1, Landroidx/media3/session/SessionTokenImplLegacy;->FIELD_PACKAGE_NAME:Ljava/lang/String;

    iget-object v2, p0, Landroidx/media3/session/SessionTokenImplLegacy;->packageName:Ljava/lang/String;

    .line 187
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Landroidx/media3/session/SessionTokenImplLegacy;->FIELD_EXTRAS:Ljava/lang/String;

    iget-object v2, p0, Landroidx/media3/session/SessionTokenImplLegacy;->extras:Landroid/os/Bundle;

    .line 188
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SessionToken {legacyToken="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/media3/session/SessionTokenImplLegacy;->legacyToken:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
