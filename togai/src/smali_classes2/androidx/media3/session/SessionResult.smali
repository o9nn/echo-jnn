.class public final Landroidx/media3/session/SessionResult;
.super Ljava/lang/Object;
.source "SessionResult.java"

# interfaces
.implements Landroidx/media3/common/Bundleable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/session/SessionResult$Code;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroidx/media3/common/Bundleable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/media3/common/Bundleable$Creator<",
            "Landroidx/media3/session/SessionResult;",
            ">;"
        }
    .end annotation
.end field

.field private static final FIELD_COMPLETION_TIME_MS:Ljava/lang/String;

.field private static final FIELD_EXTRAS:Ljava/lang/String;

.field private static final FIELD_RESULT_CODE:Ljava/lang/String;

.field public static final RESULT_ERROR_BAD_VALUE:I = -0x3

.field public static final RESULT_ERROR_INVALID_STATE:I = -0x2

.field public static final RESULT_ERROR_IO:I = -0x5

.field public static final RESULT_ERROR_NOT_SUPPORTED:I = -0x6

.field public static final RESULT_ERROR_PERMISSION_DENIED:I = -0x4

.field public static final RESULT_ERROR_SESSION_AUTHENTICATION_EXPIRED:I = -0x66

.field public static final RESULT_ERROR_SESSION_CONCURRENT_STREAM_LIMIT:I = -0x68

.field public static final RESULT_ERROR_SESSION_DISCONNECTED:I = -0x64

.field public static final RESULT_ERROR_SESSION_NOT_AVAILABLE_IN_REGION:I = -0x6a

.field public static final RESULT_ERROR_SESSION_PARENTAL_CONTROL_RESTRICTED:I = -0x69

.field public static final RESULT_ERROR_SESSION_PREMIUM_ACCOUNT_REQUIRED:I = -0x67

.field public static final RESULT_ERROR_SESSION_SETUP_REQUIRED:I = -0x6c

.field public static final RESULT_ERROR_SESSION_SKIP_LIMIT_REACHED:I = -0x6b

.field public static final RESULT_ERROR_UNKNOWN:I = -0x1

.field public static final RESULT_INFO_SKIPPED:I = 0x1

.field public static final RESULT_SUCCESS:I


# instance fields
.field public final completionTimeMs:J

.field public final extras:Landroid/os/Bundle;

.field public final resultCode:I


# direct methods
.method public static synthetic $r8$lambda$x2DqL-v4-Wv0EFW4SM0qwLgSBU4(Landroid/os/Bundle;)Landroidx/media3/session/SessionResult;
    .locals 0

    invoke-static {p0}, Landroidx/media3/session/SessionResult;->fromBundle(Landroid/os/Bundle;)Landroidx/media3/session/SessionResult;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    .line 179
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/session/SessionResult;->FIELD_RESULT_CODE:Ljava/lang/String;

    const/4 v0, 0x1

    .line 180
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/session/SessionResult;->FIELD_EXTRAS:Ljava/lang/String;

    const/4 v0, 0x2

    .line 181
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/session/SessionResult;->FIELD_COMPLETION_TIME_MS:Ljava/lang/String;

    .line 194
    new-instance v0, Landroidx/media3/session/SessionResult$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroidx/media3/session/SessionResult$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Landroidx/media3/session/SessionResult;->CREATOR:Landroidx/media3/common/Bundleable$Creator;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 158
    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    invoke-direct {p0, p1, v0}, Landroidx/media3/session/SessionResult;-><init>(ILandroid/os/Bundle;)V

    return-void
.end method

.method public constructor <init>(ILandroid/os/Bundle;)V
    .locals 2

    .line 168
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-direct {p0, p1, p2, v0, v1}, Landroidx/media3/session/SessionResult;-><init>(ILandroid/os/Bundle;J)V

    return-void
.end method

.method private constructor <init>(ILandroid/os/Bundle;J)V
    .locals 0

    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/media3/session/SessionResult;->resultCode:I

    .line 173
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1, p2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object p1, p0, Landroidx/media3/session/SessionResult;->extras:Landroid/os/Bundle;

    iput-wide p3, p0, Landroidx/media3/session/SessionResult;->completionTimeMs:J

    return-void
.end method

.method private static fromBundle(Landroid/os/Bundle;)Landroidx/media3/session/SessionResult;
    .locals 5

    sget-object v0, Landroidx/media3/session/SessionResult;->FIELD_RESULT_CODE:Ljava/lang/String;

    const/4 v1, -0x1

    .line 197
    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    sget-object v1, Landroidx/media3/session/SessionResult;->FIELD_EXTRAS:Ljava/lang/String;

    .line 198
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    sget-object v2, Landroidx/media3/session/SessionResult;->FIELD_COMPLETION_TIME_MS:Ljava/lang/String;

    .line 200
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    invoke-virtual {p0, v2, v3, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 201
    new-instance p0, Landroidx/media3/session/SessionResult;

    if-nez v1, :cond_0

    sget-object v1, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    :cond_0
    invoke-direct {p0, v0, v1, v2, v3}, Landroidx/media3/session/SessionResult;-><init>(ILandroid/os/Bundle;J)V

    return-object p0
.end method


# virtual methods
.method public toBundle()Landroid/os/Bundle;
    .locals 4

    .line 186
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    sget-object v1, Landroidx/media3/session/SessionResult;->FIELD_RESULT_CODE:Ljava/lang/String;

    iget v2, p0, Landroidx/media3/session/SessionResult;->resultCode:I

    .line 187
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    sget-object v1, Landroidx/media3/session/SessionResult;->FIELD_EXTRAS:Ljava/lang/String;

    iget-object v2, p0, Landroidx/media3/session/SessionResult;->extras:Landroid/os/Bundle;

    .line 188
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    sget-object v1, Landroidx/media3/session/SessionResult;->FIELD_COMPLETION_TIME_MS:Ljava/lang/String;

    iget-wide v2, p0, Landroidx/media3/session/SessionResult;->completionTimeMs:J

    .line 189
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    return-object v0
.end method
