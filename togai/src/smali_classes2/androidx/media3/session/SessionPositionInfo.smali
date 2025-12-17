.class final Landroidx/media3/session/SessionPositionInfo;
.super Ljava/lang/Object;
.source "SessionPositionInfo.java"

# interfaces
.implements Landroidx/media3/common/Bundleable;


# static fields
.field public static final CREATOR:Landroidx/media3/common/Bundleable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/media3/common/Bundleable$Creator<",
            "Landroidx/media3/session/SessionPositionInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT:Landroidx/media3/session/SessionPositionInfo;

.field public static final DEFAULT_POSITION_INFO:Landroidx/media3/common/Player$PositionInfo;

.field private static final FIELD_BUFFERED_PERCENTAGE:Ljava/lang/String;

.field private static final FIELD_BUFFERED_POSITION_MS:Ljava/lang/String;

.field private static final FIELD_CONTENT_BUFFERED_POSITION_MS:Ljava/lang/String;

.field private static final FIELD_CONTENT_DURATION_MS:Ljava/lang/String;

.field private static final FIELD_CURRENT_LIVE_OFFSET_MS:Ljava/lang/String;

.field private static final FIELD_DURATION_MS:Ljava/lang/String;

.field private static final FIELD_EVENT_TIME_MS:Ljava/lang/String;

.field private static final FIELD_IS_PLAYING_AD:Ljava/lang/String;

.field private static final FIELD_POSITION_INFO:Ljava/lang/String;

.field private static final FIELD_TOTAL_BUFFERED_DURATION_MS:Ljava/lang/String;


# instance fields
.field public final bufferedPercentage:I

.field public final bufferedPositionMs:J

.field public final contentBufferedPositionMs:J

.field public final contentDurationMs:J

.field public final currentLiveOffsetMs:J

.field public final durationMs:J

.field public final eventTimeMs:J

.field public final isPlayingAd:Z

.field public final positionInfo:Landroidx/media3/common/Player$PositionInfo;

.field public final totalBufferedDurationMs:J


# direct methods
.method public static synthetic $r8$lambda$Y5dKAucDohc9tqi4RcAUXuvwkzU(Landroid/os/Bundle;)Landroidx/media3/session/SessionPositionInfo;
    .locals 0

    invoke-static {p0}, Landroidx/media3/session/SessionPositionInfo;->fromBundle(Landroid/os/Bundle;)Landroidx/media3/session/SessionPositionInfo;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 30

    .line 36
    new-instance v12, Landroidx/media3/common/Player$PositionInfo;

    move-object v13, v12

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, -0x1

    const/4 v11, -0x1

    move-object v0, v12

    invoke-direct/range {v0 .. v11}, Landroidx/media3/common/Player$PositionInfo;-><init>(Ljava/lang/Object;ILandroidx/media3/common/MediaItem;Ljava/lang/Object;IJJII)V

    sput-object v12, Landroidx/media3/session/SessionPositionInfo;->DEFAULT_POSITION_INFO:Landroidx/media3/common/Player$PositionInfo;

    .line 47
    new-instance v0, Landroidx/media3/session/SessionPositionInfo;

    move-object v12, v0

    const/4 v14, 0x0

    const-wide v15, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v17, -0x7fffffffffffffffL    # -4.9E-324

    const-wide/16 v19, 0x0

    const/16 v21, 0x0

    const-wide/16 v22, 0x0

    const-wide v24, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v26, -0x7fffffffffffffffL    # -4.9E-324

    const-wide/16 v28, 0x0

    invoke-direct/range {v12 .. v29}, Landroidx/media3/session/SessionPositionInfo;-><init>(Landroidx/media3/common/Player$PositionInfo;ZJJJIJJJJ)V

    sput-object v0, Landroidx/media3/session/SessionPositionInfo;->DEFAULT:Landroidx/media3/session/SessionPositionInfo;

    const/4 v0, 0x0

    .line 160
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/session/SessionPositionInfo;->FIELD_POSITION_INFO:Ljava/lang/String;

    const/4 v0, 0x1

    .line 161
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/session/SessionPositionInfo;->FIELD_IS_PLAYING_AD:Ljava/lang/String;

    const/4 v0, 0x2

    .line 162
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/session/SessionPositionInfo;->FIELD_EVENT_TIME_MS:Ljava/lang/String;

    const/4 v0, 0x3

    .line 163
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/session/SessionPositionInfo;->FIELD_DURATION_MS:Ljava/lang/String;

    const/4 v0, 0x4

    .line 164
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/session/SessionPositionInfo;->FIELD_BUFFERED_POSITION_MS:Ljava/lang/String;

    const/4 v0, 0x5

    .line 165
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/session/SessionPositionInfo;->FIELD_BUFFERED_PERCENTAGE:Ljava/lang/String;

    const/4 v0, 0x6

    .line 166
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/session/SessionPositionInfo;->FIELD_TOTAL_BUFFERED_DURATION_MS:Ljava/lang/String;

    const/4 v0, 0x7

    .line 167
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/session/SessionPositionInfo;->FIELD_CURRENT_LIVE_OFFSET_MS:Ljava/lang/String;

    const/16 v0, 0x8

    .line 168
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/session/SessionPositionInfo;->FIELD_CONTENT_DURATION_MS:Ljava/lang/String;

    const/16 v0, 0x9

    .line 169
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/session/SessionPositionInfo;->FIELD_CONTENT_BUFFERED_POSITION_MS:Ljava/lang/String;

    .line 199
    new-instance v0, Landroidx/media3/session/SessionPositionInfo$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroidx/media3/session/SessionPositionInfo$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Landroidx/media3/session/SessionPositionInfo;->CREATOR:Landroidx/media3/common/Bundleable$Creator;

    return-void
.end method

.method public constructor <init>(Landroidx/media3/common/Player$PositionInfo;ZJJJIJJJJ)V
    .locals 7

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iget v3, v1, Landroidx/media3/common/Player$PositionInfo;->adGroupIndex:I

    const/4 v4, -0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eq v3, v4, :cond_0

    move v3, v5

    goto :goto_0

    :cond_0
    move v3, v6

    :goto_0
    if-ne v2, v3, :cond_1

    goto :goto_1

    :cond_1
    move v5, v6

    :goto_1
    invoke-static {v5}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    iput-object v1, v0, Landroidx/media3/session/SessionPositionInfo;->positionInfo:Landroidx/media3/common/Player$PositionInfo;

    iput-boolean v2, v0, Landroidx/media3/session/SessionPositionInfo;->isPlayingAd:Z

    move-wide v1, p3

    iput-wide v1, v0, Landroidx/media3/session/SessionPositionInfo;->eventTimeMs:J

    move-wide v1, p5

    iput-wide v1, v0, Landroidx/media3/session/SessionPositionInfo;->durationMs:J

    move-wide v1, p7

    iput-wide v1, v0, Landroidx/media3/session/SessionPositionInfo;->bufferedPositionMs:J

    move/from16 v1, p9

    iput v1, v0, Landroidx/media3/session/SessionPositionInfo;->bufferedPercentage:I

    move-wide/from16 v1, p10

    iput-wide v1, v0, Landroidx/media3/session/SessionPositionInfo;->totalBufferedDurationMs:J

    move-wide/from16 v1, p12

    iput-wide v1, v0, Landroidx/media3/session/SessionPositionInfo;->currentLiveOffsetMs:J

    move-wide/from16 v1, p14

    iput-wide v1, v0, Landroidx/media3/session/SessionPositionInfo;->contentDurationMs:J

    move-wide/from16 v1, p16

    iput-wide v1, v0, Landroidx/media3/session/SessionPositionInfo;->contentBufferedPositionMs:J

    return-void
.end method

.method private static fromBundle(Landroid/os/Bundle;)Landroidx/media3/session/SessionPositionInfo;
    .locals 23

    move-object/from16 v0, p0

    sget-object v1, Landroidx/media3/session/SessionPositionInfo;->FIELD_POSITION_INFO:Ljava/lang/String;

    .line 202
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    if-nez v1, :cond_0

    sget-object v1, Landroidx/media3/session/SessionPositionInfo;->DEFAULT_POSITION_INFO:Landroidx/media3/common/Player$PositionInfo;

    goto :goto_0

    .line 206
    :cond_0
    sget-object v2, Landroidx/media3/common/Player$PositionInfo;->CREATOR:Landroidx/media3/common/Bundleable$Creator;

    invoke-interface {v2, v1}, Landroidx/media3/common/Bundleable$Creator;->fromBundle(Landroid/os/Bundle;)Landroidx/media3/common/Bundleable;

    move-result-object v1

    check-cast v1, Landroidx/media3/common/Player$PositionInfo;

    :goto_0
    move-object v3, v1

    sget-object v1, Landroidx/media3/session/SessionPositionInfo;->FIELD_IS_PLAYING_AD:Ljava/lang/String;

    const/4 v2, 0x0

    .line 207
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    sget-object v1, Landroidx/media3/session/SessionPositionInfo;->FIELD_EVENT_TIME_MS:Ljava/lang/String;

    const-wide v14, -0x7fffffffffffffffL    # -4.9E-324

    .line 208
    invoke-virtual {v0, v1, v14, v15}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    sget-object v1, Landroidx/media3/session/SessionPositionInfo;->FIELD_DURATION_MS:Ljava/lang/String;

    .line 209
    invoke-virtual {v0, v1, v14, v15}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v7

    sget-object v1, Landroidx/media3/session/SessionPositionInfo;->FIELD_BUFFERED_POSITION_MS:Ljava/lang/String;

    const-wide/16 v12, 0x0

    .line 210
    invoke-virtual {v0, v1, v12, v13}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v9

    sget-object v1, Landroidx/media3/session/SessionPositionInfo;->FIELD_BUFFERED_PERCENTAGE:Ljava/lang/String;

    .line 211
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v11

    sget-object v1, Landroidx/media3/session/SessionPositionInfo;->FIELD_TOTAL_BUFFERED_DURATION_MS:Ljava/lang/String;

    .line 213
    invoke-virtual {v0, v1, v12, v13}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    move-wide v12, v1

    sget-object v1, Landroidx/media3/session/SessionPositionInfo;->FIELD_CURRENT_LIVE_OFFSET_MS:Ljava/lang/String;

    .line 215
    invoke-virtual {v0, v1, v14, v15}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    move/from16 v20, v4

    move-wide/from16 v21, v5

    move-wide v4, v14

    move-wide v14, v1

    sget-object v1, Landroidx/media3/session/SessionPositionInfo;->FIELD_CONTENT_DURATION_MS:Ljava/lang/String;

    .line 217
    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v16

    sget-object v1, Landroidx/media3/session/SessionPositionInfo;->FIELD_CONTENT_BUFFERED_POSITION_MS:Ljava/lang/String;

    const-wide/16 v4, 0x0

    .line 219
    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v18

    .line 221
    new-instance v0, Landroidx/media3/session/SessionPositionInfo;

    move-object v2, v0

    move/from16 v4, v20

    move-wide/from16 v5, v21

    invoke-direct/range {v2 .. v19}, Landroidx/media3/session/SessionPositionInfo;-><init>(Landroidx/media3/common/Player$PositionInfo;ZJJJIJJJJ)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 100
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 103
    :cond_1
    check-cast p1, Landroidx/media3/session/SessionPositionInfo;

    iget-object v2, p0, Landroidx/media3/session/SessionPositionInfo;->positionInfo:Landroidx/media3/common/Player$PositionInfo;

    .line 104
    iget-object v3, p1, Landroidx/media3/session/SessionPositionInfo;->positionInfo:Landroidx/media3/common/Player$PositionInfo;

    invoke-virtual {v2, v3}, Landroidx/media3/common/Player$PositionInfo;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Landroidx/media3/session/SessionPositionInfo;->isPlayingAd:Z

    iget-boolean v3, p1, Landroidx/media3/session/SessionPositionInfo;->isPlayingAd:Z

    if-ne v2, v3, :cond_2

    iget-wide v2, p0, Landroidx/media3/session/SessionPositionInfo;->eventTimeMs:J

    iget-wide v4, p1, Landroidx/media3/session/SessionPositionInfo;->eventTimeMs:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-wide v2, p0, Landroidx/media3/session/SessionPositionInfo;->durationMs:J

    iget-wide v4, p1, Landroidx/media3/session/SessionPositionInfo;->durationMs:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-wide v2, p0, Landroidx/media3/session/SessionPositionInfo;->bufferedPositionMs:J

    iget-wide v4, p1, Landroidx/media3/session/SessionPositionInfo;->bufferedPositionMs:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget v2, p0, Landroidx/media3/session/SessionPositionInfo;->bufferedPercentage:I

    iget v3, p1, Landroidx/media3/session/SessionPositionInfo;->bufferedPercentage:I

    if-ne v2, v3, :cond_2

    iget-wide v2, p0, Landroidx/media3/session/SessionPositionInfo;->totalBufferedDurationMs:J

    iget-wide v4, p1, Landroidx/media3/session/SessionPositionInfo;->totalBufferedDurationMs:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-wide v2, p0, Landroidx/media3/session/SessionPositionInfo;->currentLiveOffsetMs:J

    iget-wide v4, p1, Landroidx/media3/session/SessionPositionInfo;->currentLiveOffsetMs:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-wide v2, p0, Landroidx/media3/session/SessionPositionInfo;->contentDurationMs:J

    iget-wide v4, p1, Landroidx/media3/session/SessionPositionInfo;->contentDurationMs:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-wide v2, p0, Landroidx/media3/session/SessionPositionInfo;->contentBufferedPositionMs:J

    iget-wide v4, p1, Landroidx/media3/session/SessionPositionInfo;->contentBufferedPositionMs:J

    cmp-long p1, v2, v4

    if-nez p1, :cond_2

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
    .locals 2

    iget-object v0, p0, Landroidx/media3/session/SessionPositionInfo;->positionInfo:Landroidx/media3/common/Player$PositionInfo;

    iget-boolean v1, p0, Landroidx/media3/session/SessionPositionInfo;->isPlayingAd:Z

    .line 118
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 1

    const/4 v0, 0x1

    .line 173
    invoke-virtual {p0, v0, v0}, Landroidx/media3/session/SessionPositionInfo;->toBundle(ZZ)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public toBundle(ZZ)Landroid/os/Bundle;
    .locals 8

    .line 177
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    sget-object v1, Landroidx/media3/session/SessionPositionInfo;->FIELD_POSITION_INFO:Ljava/lang/String;

    iget-object v2, p0, Landroidx/media3/session/SessionPositionInfo;->positionInfo:Landroidx/media3/common/Player$PositionInfo;

    .line 179
    invoke-virtual {v2, p1, p2}, Landroidx/media3/common/Player$PositionInfo;->toBundle(ZZ)Landroid/os/Bundle;

    move-result-object p2

    .line 178
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    sget-object p2, Landroidx/media3/session/SessionPositionInfo;->FIELD_IS_PLAYING_AD:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    iget-boolean v2, p0, Landroidx/media3/session/SessionPositionInfo;->isPlayingAd:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v1

    .line 180
    :goto_0
    invoke-virtual {v0, p2, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    sget-object p2, Landroidx/media3/session/SessionPositionInfo;->FIELD_EVENT_TIME_MS:Ljava/lang/String;

    iget-wide v2, p0, Landroidx/media3/session/SessionPositionInfo;->eventTimeMs:J

    .line 181
    invoke-virtual {v0, p2, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    sget-object p2, Landroidx/media3/session/SessionPositionInfo;->FIELD_DURATION_MS:Ljava/lang/String;

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz p1, :cond_1

    iget-wide v4, p0, Landroidx/media3/session/SessionPositionInfo;->durationMs:J

    goto :goto_1

    :cond_1
    move-wide v4, v2

    .line 182
    :goto_1
    invoke-virtual {v0, p2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    sget-object p2, Landroidx/media3/session/SessionPositionInfo;->FIELD_BUFFERED_POSITION_MS:Ljava/lang/String;

    const-wide/16 v4, 0x0

    if-eqz p1, :cond_2

    iget-wide v6, p0, Landroidx/media3/session/SessionPositionInfo;->bufferedPositionMs:J

    goto :goto_2

    :cond_2
    move-wide v6, v4

    .line 183
    :goto_2
    invoke-virtual {v0, p2, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    sget-object p2, Landroidx/media3/session/SessionPositionInfo;->FIELD_BUFFERED_PERCENTAGE:Ljava/lang/String;

    if-eqz p1, :cond_3

    iget v1, p0, Landroidx/media3/session/SessionPositionInfo;->bufferedPercentage:I

    .line 184
    :cond_3
    invoke-virtual {v0, p2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    sget-object p2, Landroidx/media3/session/SessionPositionInfo;->FIELD_TOTAL_BUFFERED_DURATION_MS:Ljava/lang/String;

    if-eqz p1, :cond_4

    iget-wide v6, p0, Landroidx/media3/session/SessionPositionInfo;->totalBufferedDurationMs:J

    goto :goto_3

    :cond_4
    move-wide v6, v4

    .line 185
    :goto_3
    invoke-virtual {v0, p2, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    sget-object p2, Landroidx/media3/session/SessionPositionInfo;->FIELD_CURRENT_LIVE_OFFSET_MS:Ljava/lang/String;

    if-eqz p1, :cond_5

    iget-wide v6, p0, Landroidx/media3/session/SessionPositionInfo;->currentLiveOffsetMs:J

    goto :goto_4

    :cond_5
    move-wide v6, v2

    .line 187
    :goto_4
    invoke-virtual {v0, p2, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    sget-object p2, Landroidx/media3/session/SessionPositionInfo;->FIELD_CONTENT_DURATION_MS:Ljava/lang/String;

    if-eqz p1, :cond_6

    iget-wide v2, p0, Landroidx/media3/session/SessionPositionInfo;->contentDurationMs:J

    .line 190
    :cond_6
    invoke-virtual {v0, p2, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    sget-object p2, Landroidx/media3/session/SessionPositionInfo;->FIELD_CONTENT_BUFFERED_POSITION_MS:Ljava/lang/String;

    if-eqz p1, :cond_7

    iget-wide v4, p0, Landroidx/media3/session/SessionPositionInfo;->contentBufferedPositionMs:J

    .line 192
    :cond_7
    invoke-virtual {v0, p2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SessionPositionInfo {PositionInfo {mediaItemIndex="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/media3/session/SessionPositionInfo;->positionInfo:Landroidx/media3/common/Player$PositionInfo;

    iget v1, v1, Landroidx/media3/common/Player$PositionInfo;->mediaItemIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", periodIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/media3/session/SessionPositionInfo;->positionInfo:Landroidx/media3/common/Player$PositionInfo;

    iget v1, v1, Landroidx/media3/common/Player$PositionInfo;->periodIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", positionMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/media3/session/SessionPositionInfo;->positionInfo:Landroidx/media3/common/Player$PositionInfo;

    iget-wide v1, v1, Landroidx/media3/common/Player$PositionInfo;->positionMs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", contentPositionMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/media3/session/SessionPositionInfo;->positionInfo:Landroidx/media3/common/Player$PositionInfo;

    iget-wide v1, v1, Landroidx/media3/common/Player$PositionInfo;->contentPositionMs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", adGroupIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/media3/session/SessionPositionInfo;->positionInfo:Landroidx/media3/common/Player$PositionInfo;

    iget v1, v1, Landroidx/media3/common/Player$PositionInfo;->adGroupIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", adIndexInAdGroup="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/media3/session/SessionPositionInfo;->positionInfo:Landroidx/media3/common/Player$PositionInfo;

    iget v1, v1, Landroidx/media3/common/Player$PositionInfo;->adIndexInAdGroup:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}, isPlayingAd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroidx/media3/session/SessionPositionInfo;->isPlayingAd:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", eventTimeMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroidx/media3/session/SessionPositionInfo;->eventTimeMs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", durationMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroidx/media3/session/SessionPositionInfo;->durationMs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", bufferedPositionMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroidx/media3/session/SessionPositionInfo;->bufferedPositionMs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", bufferedPercentage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroidx/media3/session/SessionPositionInfo;->bufferedPercentage:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", totalBufferedDurationMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroidx/media3/session/SessionPositionInfo;->totalBufferedDurationMs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", currentLiveOffsetMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroidx/media3/session/SessionPositionInfo;->currentLiveOffsetMs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", contentDurationMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroidx/media3/session/SessionPositionInfo;->contentDurationMs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", contentBufferedPositionMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroidx/media3/session/SessionPositionInfo;->contentBufferedPositionMs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
