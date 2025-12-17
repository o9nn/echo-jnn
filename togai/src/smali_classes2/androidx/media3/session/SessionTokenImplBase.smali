.class final Landroidx/media3/session/SessionTokenImplBase;
.super Ljava/lang/Object;
.source "SessionTokenImplBase.java"

# interfaces
.implements Landroidx/media3/session/SessionToken$SessionTokenImpl;


# static fields
.field public static final CREATOR:Landroidx/media3/common/Bundleable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/media3/common/Bundleable$Creator<",
            "Landroidx/media3/session/SessionTokenImplBase;",
            ">;"
        }
    .end annotation
.end field

.field private static final FIELD_COMPONENT_NAME:Ljava/lang/String;

.field private static final FIELD_EXTRAS:Ljava/lang/String;

.field private static final FIELD_INTERFACE_VERSION:Ljava/lang/String;

.field private static final FIELD_ISESSION:Ljava/lang/String;

.field private static final FIELD_LIBRARY_VERSION:Ljava/lang/String;

.field private static final FIELD_PACKAGE_NAME:Ljava/lang/String;

.field private static final FIELD_SERVICE_NAME:Ljava/lang/String;

.field private static final FIELD_TYPE:Ljava/lang/String;

.field private static final FIELD_UID:Ljava/lang/String;


# instance fields
.field private final componentName:Landroid/content/ComponentName;

.field private final extras:Landroid/os/Bundle;

.field private final iSession:Landroid/os/IBinder;

.field private final interfaceVersion:I

.field private final libraryVersion:I

.field private final packageName:Ljava/lang/String;

.field private final serviceName:Ljava/lang/String;

.field private final type:I

.field private final uid:I


# direct methods
.method public static synthetic $r8$lambda$0Yobl7Eg_IcBOpJQiHmGfUaGj2M(Landroid/os/Bundle;)Landroidx/media3/session/SessionTokenImplBase;
    .locals 0

    invoke-static {p0}, Landroidx/media3/session/SessionTokenImplBase;->fromBundle(Landroid/os/Bundle;)Landroidx/media3/session/SessionTokenImplBase;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    .line 208
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/session/SessionTokenImplBase;->FIELD_UID:Ljava/lang/String;

    const/4 v0, 0x1

    .line 209
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/session/SessionTokenImplBase;->FIELD_TYPE:Ljava/lang/String;

    const/4 v0, 0x2

    .line 210
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/session/SessionTokenImplBase;->FIELD_LIBRARY_VERSION:Ljava/lang/String;

    const/4 v0, 0x3

    .line 211
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/session/SessionTokenImplBase;->FIELD_PACKAGE_NAME:Ljava/lang/String;

    const/4 v0, 0x4

    .line 212
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/session/SessionTokenImplBase;->FIELD_SERVICE_NAME:Ljava/lang/String;

    const/4 v0, 0x5

    .line 213
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/session/SessionTokenImplBase;->FIELD_COMPONENT_NAME:Ljava/lang/String;

    const/4 v0, 0x6

    .line 214
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/session/SessionTokenImplBase;->FIELD_ISESSION:Ljava/lang/String;

    const/4 v0, 0x7

    .line 215
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/session/SessionTokenImplBase;->FIELD_EXTRAS:Ljava/lang/String;

    const/16 v0, 0x8

    .line 216
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/session/SessionTokenImplBase;->FIELD_INTERFACE_VERSION:Ljava/lang/String;

    .line 235
    new-instance v0, Landroidx/media3/session/SessionTokenImplBase$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroidx/media3/session/SessionTokenImplBase$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Landroidx/media3/session/SessionTokenImplBase;->CREATOR:Landroidx/media3/common/Bundleable$Creator;

    return-void
.end method

.method public constructor <init>(IIIILjava/lang/String;Landroidx/media3/session/IMediaSession;Landroid/os/Bundle;)V
    .locals 11

    .line 77
    invoke-static/range {p5 .. p5}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/lang/String;

    const-string v7, ""

    const/4 v8, 0x0

    .line 80
    invoke-interface/range {p6 .. p6}, Landroidx/media3/session/IMediaSession;->asBinder()Landroid/os/IBinder;

    move-result-object v9

    .line 81
    invoke-static/range {p7 .. p7}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroid/os/Bundle;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .line 72
    invoke-direct/range {v1 .. v10}, Landroidx/media3/session/SessionTokenImplBase;-><init>(IIIILjava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;Landroid/os/IBinder;Landroid/os/Bundle;)V

    return-void
.end method

.method private constructor <init>(IIIILjava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;Landroid/os/IBinder;Landroid/os/Bundle;)V
    .locals 0

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/media3/session/SessionTokenImplBase;->uid:I

    iput p2, p0, Landroidx/media3/session/SessionTokenImplBase;->type:I

    iput p3, p0, Landroidx/media3/session/SessionTokenImplBase;->libraryVersion:I

    iput p4, p0, Landroidx/media3/session/SessionTokenImplBase;->interfaceVersion:I

    iput-object p5, p0, Landroidx/media3/session/SessionTokenImplBase;->packageName:Ljava/lang/String;

    iput-object p6, p0, Landroidx/media3/session/SessionTokenImplBase;->serviceName:Ljava/lang/String;

    iput-object p7, p0, Landroidx/media3/session/SessionTokenImplBase;->componentName:Landroid/content/ComponentName;

    iput-object p8, p0, Landroidx/media3/session/SessionTokenImplBase;->iSession:Landroid/os/IBinder;

    iput-object p9, p0, Landroidx/media3/session/SessionTokenImplBase;->extras:Landroid/os/Bundle;

    return-void
.end method

.method public constructor <init>(Landroid/content/ComponentName;II)V
    .locals 10

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 57
    invoke-static {p1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 58
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    sget-object v9, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    move-object v0, p0

    move v1, p2

    move v2, p3

    move-object v7, p1

    .line 52
    invoke-direct/range {v0 .. v9}, Landroidx/media3/session/SessionTokenImplBase;-><init>(IIIILjava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;Landroid/os/IBinder;Landroid/os/Bundle;)V

    return-void
.end method

.method private static fromBundle(Landroid/os/Bundle;)Landroidx/media3/session/SessionTokenImplBase;
    .locals 13

    sget-object v0, Landroidx/media3/session/SessionTokenImplBase;->FIELD_UID:Ljava/lang/String;

    .line 238
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    const-string/jumbo v2, "uid should be set."

    invoke-static {v1, v2}, Landroidx/media3/common/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    .line 239
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    sget-object v0, Landroidx/media3/session/SessionTokenImplBase;->FIELD_TYPE:Ljava/lang/String;

    .line 240
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    const-string/jumbo v2, "type should be set."

    invoke-static {v1, v2}, Landroidx/media3/common/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    .line 241
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    sget-object v0, Landroidx/media3/session/SessionTokenImplBase;->FIELD_LIBRARY_VERSION:Ljava/lang/String;

    const/4 v1, 0x0

    .line 242
    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    sget-object v0, Landroidx/media3/session/SessionTokenImplBase;->FIELD_INTERFACE_VERSION:Ljava/lang/String;

    .line 243
    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    sget-object v0, Landroidx/media3/session/SessionTokenImplBase;->FIELD_PACKAGE_NAME:Ljava/lang/String;

    .line 245
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "package name should be set."

    invoke-static {v0, v1}, Landroidx/media3/common/util/Assertions;->checkNotEmpty(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    sget-object v0, Landroidx/media3/session/SessionTokenImplBase;->FIELD_SERVICE_NAME:Ljava/lang/String;

    const-string v1, ""

    .line 246
    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    sget-object v0, Landroidx/media3/session/SessionTokenImplBase;->FIELD_ISESSION:Ljava/lang/String;

    .line 247
    invoke-static {p0, v0}, Landroidx/core/app/BundleCompat;->getBinder(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v11

    sget-object v0, Landroidx/media3/session/SessionTokenImplBase;->FIELD_COMPONENT_NAME:Ljava/lang/String;

    .line 248
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroid/content/ComponentName;

    sget-object v0, Landroidx/media3/session/SessionTokenImplBase;->FIELD_EXTRAS:Ljava/lang/String;

    .line 249
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    .line 250
    new-instance v0, Landroidx/media3/session/SessionTokenImplBase;

    if-nez p0, :cond_0

    .line 259
    sget-object p0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    :cond_0
    move-object v12, p0

    move-object v3, v0

    invoke-direct/range {v3 .. v12}, Landroidx/media3/session/SessionTokenImplBase;-><init>(IIIILjava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;Landroid/os/IBinder;Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 120
    instance-of v0, p1, Landroidx/media3/session/SessionTokenImplBase;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 123
    :cond_0
    check-cast p1, Landroidx/media3/session/SessionTokenImplBase;

    iget v0, p0, Landroidx/media3/session/SessionTokenImplBase;->uid:I

    .line 124
    iget v2, p1, Landroidx/media3/session/SessionTokenImplBase;->uid:I

    if-ne v0, v2, :cond_1

    iget v0, p0, Landroidx/media3/session/SessionTokenImplBase;->type:I

    iget v2, p1, Landroidx/media3/session/SessionTokenImplBase;->type:I

    if-ne v0, v2, :cond_1

    iget v0, p0, Landroidx/media3/session/SessionTokenImplBase;->libraryVersion:I

    iget v2, p1, Landroidx/media3/session/SessionTokenImplBase;->libraryVersion:I

    if-ne v0, v2, :cond_1

    iget v0, p0, Landroidx/media3/session/SessionTokenImplBase;->interfaceVersion:I

    iget v2, p1, Landroidx/media3/session/SessionTokenImplBase;->interfaceVersion:I

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Landroidx/media3/session/SessionTokenImplBase;->packageName:Ljava/lang/String;

    iget-object v2, p1, Landroidx/media3/session/SessionTokenImplBase;->packageName:Ljava/lang/String;

    .line 128
    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/media3/session/SessionTokenImplBase;->serviceName:Ljava/lang/String;

    iget-object v2, p1, Landroidx/media3/session/SessionTokenImplBase;->serviceName:Ljava/lang/String;

    .line 129
    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/media3/session/SessionTokenImplBase;->componentName:Landroid/content/ComponentName;

    iget-object v2, p1, Landroidx/media3/session/SessionTokenImplBase;->componentName:Landroid/content/ComponentName;

    .line 130
    invoke-static {v0, v2}, Landroidx/media3/common/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/media3/session/SessionTokenImplBase;->iSession:Landroid/os/IBinder;

    iget-object p1, p1, Landroidx/media3/session/SessionTokenImplBase;->iSession:Landroid/os/IBinder;

    .line 131
    invoke-static {v0, p1}, Landroidx/media3/common/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getBinder()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroidx/media3/session/SessionTokenImplBase;->iSession:Landroid/os/IBinder;

    return-object v0
.end method

.method public getComponentName()Landroid/content/ComponentName;
    .locals 1

    iget-object v0, p0, Landroidx/media3/session/SessionTokenImplBase;->componentName:Landroid/content/ComponentName;

    return-object v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 2

    .line 197
    new-instance v0, Landroid/os/Bundle;

    iget-object v1, p0, Landroidx/media3/session/SessionTokenImplBase;->extras:Landroid/os/Bundle;

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    return-object v0
.end method

.method public getInterfaceVersion()I
    .locals 1

    iget v0, p0, Landroidx/media3/session/SessionTokenImplBase;->interfaceVersion:I

    return v0
.end method

.method public getLibraryVersion()I
    .locals 1

    iget v0, p0, Landroidx/media3/session/SessionTokenImplBase;->libraryVersion:I

    return v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroidx/media3/session/SessionTokenImplBase;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getServiceName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroidx/media3/session/SessionTokenImplBase;->serviceName:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Landroidx/media3/session/SessionTokenImplBase;->type:I

    return v0
.end method

.method public getUid()I
    .locals 1

    iget v0, p0, Landroidx/media3/session/SessionTokenImplBase;->uid:I

    return v0
.end method

.method public hashCode()I
    .locals 9

    iget v0, p0, Landroidx/media3/session/SessionTokenImplBase;->uid:I

    .line 108
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v0, p0, Landroidx/media3/session/SessionTokenImplBase;->type:I

    .line 109
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v0, p0, Landroidx/media3/session/SessionTokenImplBase;->libraryVersion:I

    .line 110
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v0, p0, Landroidx/media3/session/SessionTokenImplBase;->interfaceVersion:I

    .line 111
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, p0, Landroidx/media3/session/SessionTokenImplBase;->packageName:Ljava/lang/String;

    iget-object v6, p0, Landroidx/media3/session/SessionTokenImplBase;->serviceName:Ljava/lang/String;

    iget-object v7, p0, Landroidx/media3/session/SessionTokenImplBase;->componentName:Landroid/content/ComponentName;

    iget-object v8, p0, Landroidx/media3/session/SessionTokenImplBase;->iSession:Landroid/os/IBinder;

    filled-new-array/range {v1 .. v8}, [Ljava/lang/Object;

    move-result-object v0

    .line 107
    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isLegacySession()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 3

    .line 221
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    sget-object v1, Landroidx/media3/session/SessionTokenImplBase;->FIELD_UID:Ljava/lang/String;

    iget v2, p0, Landroidx/media3/session/SessionTokenImplBase;->uid:I

    .line 222
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    sget-object v1, Landroidx/media3/session/SessionTokenImplBase;->FIELD_TYPE:Ljava/lang/String;

    iget v2, p0, Landroidx/media3/session/SessionTokenImplBase;->type:I

    .line 223
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    sget-object v1, Landroidx/media3/session/SessionTokenImplBase;->FIELD_LIBRARY_VERSION:Ljava/lang/String;

    iget v2, p0, Landroidx/media3/session/SessionTokenImplBase;->libraryVersion:I

    .line 224
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    sget-object v1, Landroidx/media3/session/SessionTokenImplBase;->FIELD_PACKAGE_NAME:Ljava/lang/String;

    iget-object v2, p0, Landroidx/media3/session/SessionTokenImplBase;->packageName:Ljava/lang/String;

    .line 225
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Landroidx/media3/session/SessionTokenImplBase;->FIELD_SERVICE_NAME:Ljava/lang/String;

    iget-object v2, p0, Landroidx/media3/session/SessionTokenImplBase;->serviceName:Ljava/lang/String;

    .line 226
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Landroidx/media3/session/SessionTokenImplBase;->FIELD_ISESSION:Ljava/lang/String;

    iget-object v2, p0, Landroidx/media3/session/SessionTokenImplBase;->iSession:Landroid/os/IBinder;

    .line 227
    invoke-static {v0, v1, v2}, Landroidx/core/app/BundleCompat;->putBinder(Landroid/os/Bundle;Ljava/lang/String;Landroid/os/IBinder;)V

    sget-object v1, Landroidx/media3/session/SessionTokenImplBase;->FIELD_COMPONENT_NAME:Ljava/lang/String;

    iget-object v2, p0, Landroidx/media3/session/SessionTokenImplBase;->componentName:Landroid/content/ComponentName;

    .line 228
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    sget-object v1, Landroidx/media3/session/SessionTokenImplBase;->FIELD_EXTRAS:Ljava/lang/String;

    iget-object v2, p0, Landroidx/media3/session/SessionTokenImplBase;->extras:Landroid/os/Bundle;

    .line 229
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    sget-object v1, Landroidx/media3/session/SessionTokenImplBase;->FIELD_INTERFACE_VERSION:Ljava/lang/String;

    iget v2, p0, Landroidx/media3/session/SessionTokenImplBase;->interfaceVersion:I

    .line 230
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SessionToken {pkg="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/media3/session/SessionTokenImplBase;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroidx/media3/session/SessionTokenImplBase;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " libraryVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroidx/media3/session/SessionTokenImplBase;->libraryVersion:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " interfaceVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroidx/media3/session/SessionTokenImplBase;->interfaceVersion:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " service="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/media3/session/SessionTokenImplBase;->serviceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " IMediaSession="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/media3/session/SessionTokenImplBase;->iSession:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " extras="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/media3/session/SessionTokenImplBase;->extras:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
