.class public final Landroidx/media3/session/LibraryResult;
.super Ljava/lang/Object;
.source "LibraryResult.java"

# interfaces
.implements Landroidx/media3/common/Bundleable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/session/LibraryResult$Code;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroidx/media3/common/Bundleable;"
    }
.end annotation


# static fields
.field private static final FIELD_COMPLETION_TIME_MS:Ljava/lang/String;

.field private static final FIELD_PARAMS:Ljava/lang/String;

.field private static final FIELD_RESULT_CODE:Ljava/lang/String;

.field private static final FIELD_VALUE:Ljava/lang/String;

.field private static final FIELD_VALUE_TYPE:Ljava/lang/String;

.field public static final ITEM_CREATOR:Landroidx/media3/common/Bundleable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/media3/common/Bundleable$Creator<",
            "Landroidx/media3/session/LibraryResult<",
            "Landroidx/media3/common/MediaItem;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final ITEM_LIST_CREATOR:Landroidx/media3/common/Bundleable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/media3/common/Bundleable$Creator<",
            "Landroidx/media3/session/LibraryResult<",
            "Lcom/google/common/collect/ImmutableList<",
            "Landroidx/media3/common/MediaItem;",
            ">;>;>;"
        }
    .end annotation
.end field

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

.field public static final RESULT_SUCCESS:I = 0x0

.field public static final UNKNOWN_TYPE_CREATOR:Landroidx/media3/common/Bundleable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/media3/common/Bundleable$Creator<",
            "Landroidx/media3/session/LibraryResult<",
            "*>;>;"
        }
    .end annotation
.end field

.field private static final VALUE_TYPE_ERROR:I = 0x4

.field private static final VALUE_TYPE_ITEM:I = 0x2

.field private static final VALUE_TYPE_ITEM_LIST:I = 0x3

.field private static final VALUE_TYPE_VOID:I = 0x1

.field public static final VOID_CREATOR:Landroidx/media3/common/Bundleable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/media3/common/Bundleable$Creator<",
            "Landroidx/media3/session/LibraryResult<",
            "Ljava/lang/Void;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field public final completionTimeMs:J

.field public final params:Landroidx/media3/session/MediaLibraryService$LibraryParams;

.field public final resultCode:I

.field public final value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field

.field private final valueType:I


# direct methods
.method public static synthetic $r8$lambda$MYlPbvgLGh0B2hJQEFJ_cu3SsAw(Landroid/os/Bundle;)Landroidx/media3/session/LibraryResult;
    .locals 0

    invoke-static {p0}, Landroidx/media3/session/LibraryResult;->fromUnknownBundle(Landroid/os/Bundle;)Landroidx/media3/session/LibraryResult;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$P-gGPZQlSAhYXkoeFf_OS0pYFSU(Landroid/os/Bundle;)Landroidx/media3/session/LibraryResult;
    .locals 0

    invoke-static {p0}, Landroidx/media3/session/LibraryResult;->fromItemListBundle(Landroid/os/Bundle;)Landroidx/media3/session/LibraryResult;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$gkc1FiHFJ4nKelVoy17Y2oRWPqs(Landroid/os/Bundle;)Landroidx/media3/session/LibraryResult;
    .locals 0

    invoke-static {p0}, Landroidx/media3/session/LibraryResult;->fromVoidBundle(Landroid/os/Bundle;)Landroidx/media3/session/LibraryResult;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$zm8qs7k_BgnErjZ5SBFyeDcPf7o(Landroid/os/Bundle;)Landroidx/media3/session/LibraryResult;
    .locals 0

    invoke-static {p0}, Landroidx/media3/session/LibraryResult;->fromItemBundle(Landroid/os/Bundle;)Landroidx/media3/session/LibraryResult;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    .line 265
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/session/LibraryResult;->FIELD_RESULT_CODE:Ljava/lang/String;

    const/4 v0, 0x1

    .line 266
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/session/LibraryResult;->FIELD_COMPLETION_TIME_MS:Ljava/lang/String;

    const/4 v0, 0x2

    .line 267
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/session/LibraryResult;->FIELD_PARAMS:Ljava/lang/String;

    const/4 v0, 0x3

    .line 268
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/session/LibraryResult;->FIELD_VALUE:Ljava/lang/String;

    const/4 v0, 0x4

    .line 269
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/session/LibraryResult;->FIELD_VALUE_TYPE:Ljava/lang/String;

    .line 307
    new-instance v0, Landroidx/media3/session/LibraryResult$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroidx/media3/session/LibraryResult$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Landroidx/media3/session/LibraryResult;->VOID_CREATOR:Landroidx/media3/common/Bundleable$Creator;

    .line 311
    new-instance v0, Landroidx/media3/session/LibraryResult$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Landroidx/media3/session/LibraryResult$$ExternalSyntheticLambda1;-><init>()V

    sput-object v0, Landroidx/media3/session/LibraryResult;->ITEM_CREATOR:Landroidx/media3/common/Bundleable$Creator;

    .line 318
    new-instance v0, Landroidx/media3/session/LibraryResult$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Landroidx/media3/session/LibraryResult$$ExternalSyntheticLambda2;-><init>()V

    sput-object v0, Landroidx/media3/session/LibraryResult;->ITEM_LIST_CREATOR:Landroidx/media3/common/Bundleable$Creator;

    .line 325
    new-instance v0, Landroidx/media3/session/LibraryResult$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Landroidx/media3/session/LibraryResult$$ExternalSyntheticLambda3;-><init>()V

    sput-object v0, Landroidx/media3/session/LibraryResult;->UNKNOWN_TYPE_CREATOR:Landroidx/media3/common/Bundleable$Creator;

    return-void
.end method

.method private constructor <init>(IJLandroidx/media3/session/MediaLibraryService$LibraryParams;Ljava/lang/Object;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ",
            "Landroidx/media3/session/MediaLibraryService$LibraryParams;",
            "TV;I)V"
        }
    .end annotation

    .line 249
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/media3/session/LibraryResult;->resultCode:I

    iput-wide p2, p0, Landroidx/media3/session/LibraryResult;->completionTimeMs:J

    iput-object p4, p0, Landroidx/media3/session/LibraryResult;->params:Landroidx/media3/session/MediaLibraryService$LibraryParams;

    iput-object p5, p0, Landroidx/media3/session/LibraryResult;->value:Ljava/lang/Object;

    iput p6, p0, Landroidx/media3/session/LibraryResult;->valueType:I

    return-void
.end method

.method private static fromBundle(Landroid/os/Bundle;Ljava/lang/Integer;)Landroidx/media3/session/LibraryResult;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/lang/Integer;",
            ")",
            "Landroidx/media3/session/LibraryResult<",
            "*>;"
        }
    .end annotation

    sget-object v0, Landroidx/media3/session/LibraryResult;->FIELD_RESULT_CODE:Ljava/lang/String;

    const/4 v1, 0x0

    .line 358
    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    sget-object v0, Landroidx/media3/session/LibraryResult;->FIELD_COMPLETION_TIME_MS:Ljava/lang/String;

    .line 360
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-virtual {p0, v0, v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    sget-object v0, Landroidx/media3/session/LibraryResult;->FIELD_PARAMS:Ljava/lang/String;

    .line 361
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move-object v6, v2

    goto :goto_0

    .line 364
    :cond_0
    sget-object v6, Landroidx/media3/session/MediaLibraryService$LibraryParams;->CREATOR:Landroidx/media3/common/Bundleable$Creator;

    invoke-interface {v6, v0}, Landroidx/media3/common/Bundleable$Creator;->fromBundle(Landroid/os/Bundle;)Landroidx/media3/common/Bundleable;

    move-result-object v0

    check-cast v0, Landroidx/media3/session/MediaLibraryService$LibraryParams;

    move-object v6, v0

    :goto_0
    sget-object v0, Landroidx/media3/session/LibraryResult;->FIELD_VALUE_TYPE:Ljava/lang/String;

    .line 365
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    const/4 v0, 0x1

    if-eq v8, v0, :cond_a

    const/4 v7, 0x2

    if-eq v8, v7, :cond_6

    const/4 v7, 0x3

    if-eq v8, v7, :cond_2

    const/4 p0, 0x4

    if-ne v8, p0, :cond_1

    goto :goto_1

    .line 387
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :cond_2
    if-eqz p1, :cond_3

    .line 374
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v7, :cond_4

    :cond_3
    move v1, v0

    :cond_4
    invoke-static {v1}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    sget-object p1, Landroidx/media3/session/LibraryResult;->FIELD_VALUE:Ljava/lang/String;

    .line 375
    invoke-static {p0, p1}, Landroidx/core/app/BundleCompat;->getBinder(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    if-nez p0, :cond_5

    goto :goto_1

    .line 379
    :cond_5
    sget-object p1, Landroidx/media3/common/MediaItem;->CREATOR:Landroidx/media3/common/Bundleable$Creator;

    .line 380
    invoke-static {p0}, Landroidx/media3/common/BundleListRetriever;->getList(Landroid/os/IBinder;)Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    .line 379
    invoke-static {p1, p0}, Landroidx/media3/common/util/BundleableUtil;->fromBundleList(Landroidx/media3/common/Bundleable$Creator;Ljava/util/List;)Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    goto :goto_1

    :cond_6
    if-eqz p1, :cond_7

    .line 369
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v7, :cond_8

    :cond_7
    move v1, v0

    :cond_8
    invoke-static {v1}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    sget-object p1, Landroidx/media3/session/LibraryResult;->FIELD_VALUE:Ljava/lang/String;

    .line 370
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    if-nez p0, :cond_9

    goto :goto_1

    .line 371
    :cond_9
    sget-object p1, Landroidx/media3/common/MediaItem;->CREATOR:Landroidx/media3/common/Bundleable$Creator;

    invoke-interface {p1, p0}, Landroidx/media3/common/Bundleable$Creator;->fromBundle(Landroid/os/Bundle;)Landroidx/media3/common/Bundleable;

    move-result-object v2

    :cond_a
    :goto_1
    move-object v7, v2

    .line 390
    new-instance p0, Landroidx/media3/session/LibraryResult;

    move-object v2, p0

    invoke-direct/range {v2 .. v8}, Landroidx/media3/session/LibraryResult;-><init>(IJLandroidx/media3/session/MediaLibraryService$LibraryParams;Ljava/lang/Object;I)V

    return-object p0
.end method

.method private static fromItemBundle(Landroid/os/Bundle;)Landroidx/media3/session/LibraryResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")",
            "Landroidx/media3/session/LibraryResult<",
            "Landroidx/media3/common/MediaItem;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x2

    .line 337
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p0, v0}, Landroidx/media3/session/LibraryResult;->fromBundle(Landroid/os/Bundle;Ljava/lang/Integer;)Landroidx/media3/session/LibraryResult;

    move-result-object p0

    return-object p0
.end method

.method private static fromItemListBundle(Landroid/os/Bundle;)Landroidx/media3/session/LibraryResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")",
            "Landroidx/media3/session/LibraryResult<",
            "Lcom/google/common/collect/ImmutableList<",
            "Landroidx/media3/common/MediaItem;",
            ">;>;"
        }
    .end annotation

    const/4 v0, 0x3

    .line 343
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p0, v0}, Landroidx/media3/session/LibraryResult;->fromBundle(Landroid/os/Bundle;Ljava/lang/Integer;)Landroidx/media3/session/LibraryResult;

    move-result-object p0

    return-object p0
.end method

.method private static fromUnknownBundle(Landroid/os/Bundle;)Landroidx/media3/session/LibraryResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")",
            "Landroidx/media3/session/LibraryResult<",
            "*>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 347
    invoke-static {p0, v0}, Landroidx/media3/session/LibraryResult;->fromBundle(Landroid/os/Bundle;Ljava/lang/Integer;)Landroidx/media3/session/LibraryResult;

    move-result-object p0

    return-object p0
.end method

.method private static fromVoidBundle(Landroid/os/Bundle;)Landroidx/media3/session/LibraryResult;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")",
            "Landroidx/media3/session/LibraryResult<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 331
    invoke-static {p0}, Landroidx/media3/session/LibraryResult;->fromUnknownBundle(Landroid/os/Bundle;)Landroidx/media3/session/LibraryResult;

    move-result-object p0

    return-object p0
.end method

.method public static ofError(I)Landroidx/media3/session/LibraryResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(I)",
            "Landroidx/media3/session/LibraryResult<",
            "TV;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 222
    invoke-static {p0, v0}, Landroidx/media3/session/LibraryResult;->ofError(ILandroidx/media3/session/MediaLibraryService$LibraryParams;)Landroidx/media3/session/LibraryResult;

    move-result-object p0

    return-object p0
.end method

.method public static ofError(ILandroidx/media3/session/MediaLibraryService$LibraryParams;)Landroidx/media3/session/LibraryResult;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(I",
            "Landroidx/media3/session/MediaLibraryService$LibraryParams;",
            ")",
            "Landroidx/media3/session/LibraryResult<",
            "TV;>;"
        }
    .end annotation

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 235
    :goto_0
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    .line 236
    new-instance v0, Landroidx/media3/session/LibraryResult;

    .line 238
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    const/4 v6, 0x0

    const/4 v7, 0x4

    move-object v1, v0

    move v2, p0

    move-object v5, p1

    invoke-direct/range {v1 .. v7}, Landroidx/media3/session/LibraryResult;-><init>(IJLandroidx/media3/session/MediaLibraryService$LibraryParams;Ljava/lang/Object;I)V

    return-object v0
.end method

.method public static ofItem(Landroidx/media3/common/MediaItem;Landroidx/media3/session/MediaLibraryService$LibraryParams;)Landroidx/media3/session/LibraryResult;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/common/MediaItem;",
            "Landroidx/media3/session/MediaLibraryService$LibraryParams;",
            ")",
            "Landroidx/media3/session/LibraryResult<",
            "Landroidx/media3/common/MediaItem;",
            ">;"
        }
    .end annotation

    .line 186
    invoke-static {p0}, Landroidx/media3/session/LibraryResult;->verifyMediaItem(Landroidx/media3/common/MediaItem;)V

    .line 187
    new-instance v7, Landroidx/media3/session/LibraryResult;

    const/4 v1, 0x0

    .line 188
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const/4 v6, 0x2

    move-object v0, v7

    move-object v4, p1

    move-object v5, p0

    invoke-direct/range {v0 .. v6}, Landroidx/media3/session/LibraryResult;-><init>(IJLandroidx/media3/session/MediaLibraryService$LibraryParams;Ljava/lang/Object;I)V

    return-object v7
.end method

.method public static ofItemList(Ljava/util/List;Landroidx/media3/session/MediaLibraryService$LibraryParams;)Landroidx/media3/session/LibraryResult;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media3/common/MediaItem;",
            ">;",
            "Landroidx/media3/session/MediaLibraryService$LibraryParams;",
            ")",
            "Landroidx/media3/session/LibraryResult<",
            "Lcom/google/common/collect/ImmutableList<",
            "Landroidx/media3/common/MediaItem;",
            ">;>;"
        }
    .end annotation

    .line 203
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/common/MediaItem;

    .line 204
    invoke-static {v1}, Landroidx/media3/session/LibraryResult;->verifyMediaItem(Landroidx/media3/common/MediaItem;)V

    goto :goto_0

    .line 206
    :cond_0
    new-instance v0, Landroidx/media3/session/LibraryResult;

    const/4 v3, 0x0

    .line 208
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 210
    invoke-static {p0}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v7

    const/4 v8, 0x3

    move-object v2, v0

    move-object v6, p1

    invoke-direct/range {v2 .. v8}, Landroidx/media3/session/LibraryResult;-><init>(IJLandroidx/media3/session/MediaLibraryService$LibraryParams;Ljava/lang/Object;I)V

    return-object v0
.end method

.method public static ofVoid()Landroidx/media3/session/LibraryResult;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/media3/session/LibraryResult<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 159
    new-instance v7, Landroidx/media3/session/LibraryResult;

    const/4 v1, 0x0

    .line 161
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Landroidx/media3/session/LibraryResult;-><init>(IJLandroidx/media3/session/MediaLibraryService$LibraryParams;Ljava/lang/Object;I)V

    return-object v7
.end method

.method public static ofVoid(Landroidx/media3/session/MediaLibraryService$LibraryParams;)Landroidx/media3/session/LibraryResult;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/session/MediaLibraryService$LibraryParams;",
            ")",
            "Landroidx/media3/session/LibraryResult<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 172
    new-instance v7, Landroidx/media3/session/LibraryResult;

    const/4 v1, 0x0

    .line 173
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v0, v7

    move-object v4, p0

    invoke-direct/range {v0 .. v6}, Landroidx/media3/session/LibraryResult;-><init>(IJLandroidx/media3/session/MediaLibraryService$LibraryParams;Ljava/lang/Object;I)V

    return-object v7
.end method

.method private static verifyMediaItem(Landroidx/media3/common/MediaItem;)V
    .locals 4

    .line 258
    iget-object v0, p0, Landroidx/media3/common/MediaItem;->mediaId:Ljava/lang/String;

    const-string v1, "mediaId must not be empty"

    invoke-static {v0, v1}, Landroidx/media3/common/util/Assertions;->checkNotEmpty(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 259
    iget-object v0, p0, Landroidx/media3/common/MediaItem;->mediaMetadata:Landroidx/media3/common/MediaMetadata;

    iget-object v0, v0, Landroidx/media3/common/MediaMetadata;->isBrowsable:Ljava/lang/Boolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    const-string v3, "mediaMetadata must specify isBrowsable"

    invoke-static {v0, v3}, Landroidx/media3/common/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    .line 260
    iget-object p0, p0, Landroidx/media3/common/MediaItem;->mediaMetadata:Landroidx/media3/common/MediaMetadata;

    iget-object p0, p0, Landroidx/media3/common/MediaMetadata;->isPlayable:Ljava/lang/Boolean;

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    const-string p0, "mediaMetadata must specify isPlayable"

    invoke-static {v1, p0}, Landroidx/media3/common/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public toBundle()Landroid/os/Bundle;
    .locals 4

    .line 276
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    sget-object v1, Landroidx/media3/session/LibraryResult;->FIELD_RESULT_CODE:Ljava/lang/String;

    iget v2, p0, Landroidx/media3/session/LibraryResult;->resultCode:I

    .line 277
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    sget-object v1, Landroidx/media3/session/LibraryResult;->FIELD_COMPLETION_TIME_MS:Ljava/lang/String;

    iget-wide v2, p0, Landroidx/media3/session/LibraryResult;->completionTimeMs:J

    .line 278
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    iget-object v1, p0, Landroidx/media3/session/LibraryResult;->params:Landroidx/media3/session/MediaLibraryService$LibraryParams;

    if-eqz v1, :cond_0

    sget-object v2, Landroidx/media3/session/LibraryResult;->FIELD_PARAMS:Ljava/lang/String;

    .line 280
    invoke-virtual {v1}, Landroidx/media3/session/MediaLibraryService$LibraryParams;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    sget-object v1, Landroidx/media3/session/LibraryResult;->FIELD_VALUE_TYPE:Ljava/lang/String;

    iget v2, p0, Landroidx/media3/session/LibraryResult;->valueType:I

    .line 282
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Landroidx/media3/session/LibraryResult;->value:Ljava/lang/Object;

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    iget v2, p0, Landroidx/media3/session/LibraryResult;->valueType:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_4

    const/4 v3, 0x2

    if-eq v2, v3, :cond_3

    const/4 v1, 0x3

    if-eq v2, v1, :cond_2

    const/4 v1, 0x4

    if-eq v2, v1, :cond_4

    goto :goto_0

    :cond_2
    sget-object v1, Landroidx/media3/session/LibraryResult;->FIELD_VALUE:Ljava/lang/String;

    .line 292
    new-instance v2, Landroidx/media3/common/BundleListRetriever;

    iget-object v3, p0, Landroidx/media3/session/LibraryResult;->value:Ljava/lang/Object;

    check-cast v3, Lcom/google/common/collect/ImmutableList;

    .line 295
    invoke-static {v3}, Landroidx/media3/common/util/BundleableUtil;->toBundleList(Ljava/util/List;)Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    invoke-direct {v2, v3}, Landroidx/media3/common/BundleListRetriever;-><init>(Ljava/util/List;)V

    .line 292
    invoke-static {v0, v1, v2}, Landroidx/core/app/BundleCompat;->putBinder(Landroid/os/Bundle;Ljava/lang/String;Landroid/os/IBinder;)V

    goto :goto_0

    :cond_3
    sget-object v2, Landroidx/media3/session/LibraryResult;->FIELD_VALUE:Ljava/lang/String;

    .line 289
    check-cast v1, Landroidx/media3/common/MediaItem;

    invoke-virtual {v1}, Landroidx/media3/common/MediaItem;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :goto_0
    return-object v0

    .line 300
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
