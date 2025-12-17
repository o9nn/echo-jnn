.class public final Lexpo/modules/medialibrary/MediaLibraryPermissionPromiseWrapper;
.super Ljava/lang/Object;
.source "MediaLibraryPermissionPromiseWrapper.kt"

# interfaces
.implements Lexpo/modules/kotlin/Promise;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lexpo/modules/medialibrary/MediaLibraryPermissionPromiseWrapper$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0003\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\u0018\u0000 \u00172\u00020\u0001:\u0001\u0017B)\u0012\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0001\u0012\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007\u00a2\u0006\u0002\u0010\tJ\u001e\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u000b2\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003H\u0002J$\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u00102\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u0016J\u0012\u0010\u0014\u001a\u00020\u000e2\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0016H\u0016R\u0014\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0018"
    }
    d2 = {
        "Lexpo/modules/medialibrary/MediaLibraryPermissionPromiseWrapper;",
        "Lexpo/modules/kotlin/Promise;",
        "granularPermissions",
        "",
        "Lexpo/modules/medialibrary/GranularPermission;",
        "promise",
        "contextHolder",
        "Ljava/lang/ref/WeakReference;",
        "Landroid/content/Context;",
        "(Ljava/util/List;Lexpo/modules/kotlin/Promise;Ljava/lang/ref/WeakReference;)V",
        "addOnlySelectedInfoToPermissionsBundle",
        "Landroid/os/Bundle;",
        "permissionsBundle",
        "reject",
        "",
        "code",
        "",
        "message",
        "cause",
        "",
        "resolve",
        "value",
        "",
        "Companion",
        "expo-media-library_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final ACCESS_PRIVILEGES_PERMISSION_KEY:Ljava/lang/String; = "accessPrivileges"

.field public static final Companion:Lexpo/modules/medialibrary/MediaLibraryPermissionPromiseWrapper$Companion;


# instance fields
.field private final contextHolder:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final granularPermissions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lexpo/modules/medialibrary/GranularPermission;",
            ">;"
        }
    .end annotation
.end field

.field private final promise:Lexpo/modules/kotlin/Promise;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lexpo/modules/medialibrary/MediaLibraryPermissionPromiseWrapper$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lexpo/modules/medialibrary/MediaLibraryPermissionPromiseWrapper$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lexpo/modules/medialibrary/MediaLibraryPermissionPromiseWrapper;->Companion:Lexpo/modules/medialibrary/MediaLibraryPermissionPromiseWrapper$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Lexpo/modules/kotlin/Promise;Ljava/lang/ref/WeakReference;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lexpo/modules/medialibrary/GranularPermission;",
            ">;",
            "Lexpo/modules/kotlin/Promise;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;)V"
        }
    .end annotation

    const-string v0, "granularPermissions"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "promise"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contextHolder"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lexpo/modules/medialibrary/MediaLibraryPermissionPromiseWrapper;->granularPermissions:Ljava/util/List;

    iput-object p2, p0, Lexpo/modules/medialibrary/MediaLibraryPermissionPromiseWrapper;->promise:Lexpo/modules/kotlin/Promise;

    iput-object p3, p0, Lexpo/modules/medialibrary/MediaLibraryPermissionPromiseWrapper;->contextHolder:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private final addOnlySelectedInfoToPermissionsBundle(Landroid/os/Bundle;Ljava/util/List;)Landroid/os/Bundle;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/util/List<",
            "+",
            "Lexpo/modules/medialibrary/GranularPermission;",
            ">;)",
            "Landroid/os/Bundle;"
        }
    .end annotation

    iget-object v0, p0, Lexpo/modules/medialibrary/MediaLibraryPermissionPromiseWrapper;->contextHolder:Ljava/lang/ref/WeakReference;

    .line 33
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-nez v0, :cond_0

    move-object p2, p0

    check-cast p2, Lexpo/modules/medialibrary/MediaLibraryPermissionPromiseWrapper;

    return-object p1

    :cond_0
    const-string v1, "granted"

    .line 36
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x22

    const-string v5, "accessPrivileges"

    if-ge v3, v4, :cond_2

    if-eqz v2, :cond_1

    .line 41
    sget-object p2, Lexpo/modules/medialibrary/AccessPrivileges;->ALL:Lexpo/modules/medialibrary/AccessPrivileges;

    goto :goto_0

    .line 43
    :cond_1
    sget-object p2, Lexpo/modules/medialibrary/AccessPrivileges;->NONE:Lexpo/modules/medialibrary/AccessPrivileges;

    .line 45
    :goto_0
    invoke-virtual {p2}, Lexpo/modules/medialibrary/AccessPrivileges;->getValue()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v5, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    :cond_2
    if-eqz v2, :cond_3

    .line 51
    sget-object p2, Lexpo/modules/medialibrary/AccessPrivileges;->ALL:Lexpo/modules/medialibrary/AccessPrivileges;

    invoke-virtual {p2}, Lexpo/modules/medialibrary/AccessPrivileges;->getValue()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v5, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    .line 57
    :cond_3
    sget-object v2, Lexpo/modules/medialibrary/GranularPermission;->AUDIO:Lexpo/modules/medialibrary/GranularPermission;

    invoke-interface {p2, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    const-string v2, "android.permission.READ_MEDIA_AUDIO"

    .line 58
    invoke-static {v0, v2}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_4

    move v2, v4

    goto :goto_1

    :cond_4
    move v2, v3

    :goto_1
    const-string v6, "android.permission.READ_MEDIA_VISUAL_USER_SELECTED"

    .line 59
    invoke-static {v0, v6}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_5

    move v3, v4

    :cond_5
    if-eqz p2, :cond_6

    if-eqz v2, :cond_7

    :cond_6
    if-eqz v3, :cond_7

    .line 64
    invoke-virtual {p1, v1, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p2, "canAskAgain"

    .line 65
    invoke-virtual {p1, p2, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 66
    sget-object p2, Lexpo/modules/interfaces/permissions/PermissionsStatus;->GRANTED:Lexpo/modules/interfaces/permissions/PermissionsStatus;

    invoke-virtual {p2}, Lexpo/modules/interfaces/permissions/PermissionsStatus;->getStatus()Ljava/lang/String;

    move-result-object p2

    const-string v0, "status"

    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    sget-object p2, Lexpo/modules/medialibrary/AccessPrivileges;->LIMITED:Lexpo/modules/medialibrary/AccessPrivileges;

    invoke-virtual {p2}, Lexpo/modules/medialibrary/AccessPrivileges;->getValue()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v5, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 69
    :cond_7
    sget-object p2, Lexpo/modules/medialibrary/AccessPrivileges;->NONE:Lexpo/modules/medialibrary/AccessPrivileges;

    invoke-virtual {p2}, Lexpo/modules/medialibrary/AccessPrivileges;->getValue()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v5, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-object p1
.end method


# virtual methods
.method public reject(Lexpo/modules/kotlin/exception/CodedException;)V
    .locals 0

    .line 14
    invoke-static {p0, p1}, Lexpo/modules/kotlin/Promise$DefaultImpls;->reject(Lexpo/modules/kotlin/Promise;Lexpo/modules/kotlin/exception/CodedException;)V

    return-void
.end method

.method public reject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "code"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lexpo/modules/medialibrary/MediaLibraryPermissionPromiseWrapper;->promise:Lexpo/modules/kotlin/Promise;

    .line 29
    invoke-interface {v0, p1, p2, p3}, Lexpo/modules/kotlin/Promise;->reject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public resolve()V
    .locals 0

    .line 14
    invoke-static {p0}, Lexpo/modules/kotlin/Promise$DefaultImpls;->resolve(Lexpo/modules/kotlin/Promise;)V

    return-void
.end method

.method public resolve(D)V
    .locals 0

    .line 14
    invoke-static {p0, p1, p2}, Lexpo/modules/kotlin/Promise$DefaultImpls;->resolve(Lexpo/modules/kotlin/Promise;D)V

    return-void
.end method

.method public resolve(F)V
    .locals 0

    .line 14
    invoke-static {p0, p1}, Lexpo/modules/kotlin/Promise$DefaultImpls;->resolve(Lexpo/modules/kotlin/Promise;F)V

    return-void
.end method

.method public resolve(I)V
    .locals 0

    .line 14
    invoke-static {p0, p1}, Lexpo/modules/kotlin/Promise$DefaultImpls;->resolve(Lexpo/modules/kotlin/Promise;I)V

    return-void
.end method

.method public resolve(Ljava/lang/Object;)V
    .locals 2

    .line 20
    instance-of v0, p1, Landroid/os/Bundle;

    if-nez v0, :cond_0

    iget-object v0, p0, Lexpo/modules/medialibrary/MediaLibraryPermissionPromiseWrapper;->promise:Lexpo/modules/kotlin/Promise;

    .line 21
    invoke-interface {v0, p1}, Lexpo/modules/kotlin/Promise;->resolve(Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-object v0, p0, Lexpo/modules/medialibrary/MediaLibraryPermissionPromiseWrapper;->promise:Lexpo/modules/kotlin/Promise;

    .line 25
    check-cast p1, Landroid/os/Bundle;

    iget-object v1, p0, Lexpo/modules/medialibrary/MediaLibraryPermissionPromiseWrapper;->granularPermissions:Ljava/util/List;

    invoke-direct {p0, p1, v1}, Lexpo/modules/medialibrary/MediaLibraryPermissionPromiseWrapper;->addOnlySelectedInfoToPermissionsBundle(Landroid/os/Bundle;Ljava/util/List;)Landroid/os/Bundle;

    move-result-object p1

    invoke-interface {v0, p1}, Lexpo/modules/kotlin/Promise;->resolve(Ljava/lang/Object;)V

    return-void
.end method

.method public resolve(Ljava/lang/String;)V
    .locals 0

    .line 14
    invoke-static {p0, p1}, Lexpo/modules/kotlin/Promise$DefaultImpls;->resolve(Lexpo/modules/kotlin/Promise;Ljava/lang/String;)V

    return-void
.end method

.method public resolve(Z)V
    .locals 0

    .line 14
    invoke-static {p0, p1}, Lexpo/modules/kotlin/Promise$DefaultImpls;->resolve(Lexpo/modules/kotlin/Promise;Z)V

    return-void
.end method
