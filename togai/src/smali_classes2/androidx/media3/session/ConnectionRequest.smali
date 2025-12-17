.class Landroidx/media3/session/ConnectionRequest;
.super Ljava/lang/Object;
.source "ConnectionRequest.java"

# interfaces
.implements Landroidx/media3/common/Bundleable;


# static fields
.field public static final CREATOR:Landroidx/media3/common/Bundleable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/media3/common/Bundleable$Creator<",
            "Landroidx/media3/session/ConnectionRequest;",
            ">;"
        }
    .end annotation
.end field

.field private static final FIELD_CONNECTION_HINTS:Ljava/lang/String;

.field private static final FIELD_CONTROLLER_INTERFACE_VERSION:Ljava/lang/String;

.field private static final FIELD_LIBRARY_VERSION:Ljava/lang/String;

.field private static final FIELD_PACKAGE_NAME:Ljava/lang/String;

.field private static final FIELD_PID:Ljava/lang/String;


# instance fields
.field public final connectionHints:Landroid/os/Bundle;

.field public final controllerInterfaceVersion:I

.field public final libraryVersion:I

.field public final packageName:Ljava/lang/String;

.field public final pid:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    .line 67
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/session/ConnectionRequest;->FIELD_LIBRARY_VERSION:Ljava/lang/String;

    const/4 v0, 0x1

    .line 68
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/session/ConnectionRequest;->FIELD_PACKAGE_NAME:Ljava/lang/String;

    const/4 v0, 0x2

    .line 69
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/session/ConnectionRequest;->FIELD_PID:Ljava/lang/String;

    const/4 v0, 0x3

    .line 70
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/session/ConnectionRequest;->FIELD_CONNECTION_HINTS:Ljava/lang/String;

    const/4 v0, 0x4

    .line 71
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/session/ConnectionRequest;->FIELD_CONTROLLER_INTERFACE_VERSION:Ljava/lang/String;

    .line 86
    new-instance v0, Landroidx/media3/session/ConnectionRequest$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroidx/media3/session/ConnectionRequest$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Landroidx/media3/session/ConnectionRequest;->CREATOR:Landroidx/media3/common/Bundleable$Creator;

    return-void
.end method

.method private constructor <init>(IILjava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/media3/session/ConnectionRequest;->libraryVersion:I

    iput p2, p0, Landroidx/media3/session/ConnectionRequest;->controllerInterfaceVersion:I

    iput-object p3, p0, Landroidx/media3/session/ConnectionRequest;->packageName:Ljava/lang/String;

    iput p4, p0, Landroidx/media3/session/ConnectionRequest;->pid:I

    iput-object p5, p0, Landroidx/media3/session/ConnectionRequest;->connectionHints:Landroid/os/Bundle;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 6

    const v1, 0x3baa1154

    const/4 v2, 0x3

    .line 44
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5, p3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    invoke-direct/range {v0 .. v5}, Landroidx/media3/session/ConnectionRequest;-><init>(IILjava/lang/String;ILandroid/os/Bundle;)V

    return-void
.end method

.method static synthetic lambda$static$0(Landroid/os/Bundle;)Landroidx/media3/session/ConnectionRequest;
    .locals 8

    sget-object v0, Landroidx/media3/session/ConnectionRequest;->FIELD_LIBRARY_VERSION:Ljava/lang/String;

    const/4 v1, 0x0

    .line 88
    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    sget-object v0, Landroidx/media3/session/ConnectionRequest;->FIELD_CONTROLLER_INTERFACE_VERSION:Ljava/lang/String;

    .line 90
    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    sget-object v0, Landroidx/media3/session/ConnectionRequest;->FIELD_PACKAGE_NAME:Ljava/lang/String;

    .line 91
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ljava/lang/String;

    sget-object v0, Landroidx/media3/session/ConnectionRequest;->FIELD_PID:Ljava/lang/String;

    .line 92
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    .line 93
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    sget-object v0, Landroidx/media3/session/ConnectionRequest;->FIELD_CONNECTION_HINTS:Ljava/lang/String;

    .line 94
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    .line 95
    new-instance v0, Landroidx/media3/session/ConnectionRequest;

    if-nez p0, :cond_0

    .line 100
    sget-object p0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    :cond_0
    move-object v7, p0

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Landroidx/media3/session/ConnectionRequest;-><init>(IILjava/lang/String;ILandroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public toBundle()Landroid/os/Bundle;
    .locals 3

    .line 76
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    sget-object v1, Landroidx/media3/session/ConnectionRequest;->FIELD_LIBRARY_VERSION:Ljava/lang/String;

    iget v2, p0, Landroidx/media3/session/ConnectionRequest;->libraryVersion:I

    .line 77
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    sget-object v1, Landroidx/media3/session/ConnectionRequest;->FIELD_PACKAGE_NAME:Ljava/lang/String;

    iget-object v2, p0, Landroidx/media3/session/ConnectionRequest;->packageName:Ljava/lang/String;

    .line 78
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Landroidx/media3/session/ConnectionRequest;->FIELD_PID:Ljava/lang/String;

    iget v2, p0, Landroidx/media3/session/ConnectionRequest;->pid:I

    .line 79
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    sget-object v1, Landroidx/media3/session/ConnectionRequest;->FIELD_CONNECTION_HINTS:Ljava/lang/String;

    iget-object v2, p0, Landroidx/media3/session/ConnectionRequest;->connectionHints:Landroid/os/Bundle;

    .line 80
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    sget-object v1, Landroidx/media3/session/ConnectionRequest;->FIELD_CONTROLLER_INTERFACE_VERSION:Ljava/lang/String;

    iget v2, p0, Landroidx/media3/session/ConnectionRequest;->controllerInterfaceVersion:I

    .line 81
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method
