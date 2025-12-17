.class public Landroidx/media3/session/PlayerInfo$BundlingExclusions;
.super Ljava/lang/Object;
.source "PlayerInfo.java"

# interfaces
.implements Landroidx/media3/common/Bundleable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/session/PlayerInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BundlingExclusions"
.end annotation


# static fields
.field public static final CREATOR:Landroidx/media3/common/Bundleable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/media3/common/Bundleable$Creator<",
            "Landroidx/media3/session/PlayerInfo$BundlingExclusions;",
            ">;"
        }
    .end annotation
.end field

.field private static final FIELD_ARE_CURRENT_TRACKS_EXCLUDED:Ljava/lang/String;

.field private static final FIELD_IS_TIMELINE_EXCLUDED:Ljava/lang/String;

.field public static final NONE:Landroidx/media3/session/PlayerInfo$BundlingExclusions;


# instance fields
.field public final areCurrentTracksExcluded:Z

.field public final isTimelineExcluded:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 66
    new-instance v0, Landroidx/media3/session/PlayerInfo$BundlingExclusions;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroidx/media3/session/PlayerInfo$BundlingExclusions;-><init>(ZZ)V

    sput-object v0, Landroidx/media3/session/PlayerInfo$BundlingExclusions;->NONE:Landroidx/media3/session/PlayerInfo$BundlingExclusions;

    .line 82
    invoke-static {v1}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/session/PlayerInfo$BundlingExclusions;->FIELD_IS_TIMELINE_EXCLUDED:Ljava/lang/String;

    const/4 v0, 0x1

    .line 83
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/session/PlayerInfo$BundlingExclusions;->FIELD_ARE_CURRENT_TRACKS_EXCLUDED:Ljava/lang/String;

    .line 95
    new-instance v0, Landroidx/media3/session/PlayerInfo$BundlingExclusions$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroidx/media3/session/PlayerInfo$BundlingExclusions$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Landroidx/media3/session/PlayerInfo$BundlingExclusions;->CREATOR:Landroidx/media3/common/Bundleable$Creator;

    return-void
.end method

.method public constructor <init>(ZZ)V
    .locals 0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Landroidx/media3/session/PlayerInfo$BundlingExclusions;->isTimelineExcluded:Z

    iput-boolean p2, p0, Landroidx/media3/session/PlayerInfo$BundlingExclusions;->areCurrentTracksExcluded:Z

    return-void
.end method

.method static synthetic lambda$static$0(Landroid/os/Bundle;)Landroidx/media3/session/PlayerInfo$BundlingExclusions;
    .locals 4

    .line 97
    new-instance v0, Landroidx/media3/session/PlayerInfo$BundlingExclusions;

    sget-object v1, Landroidx/media3/session/PlayerInfo$BundlingExclusions;->FIELD_IS_TIMELINE_EXCLUDED:Ljava/lang/String;

    const/4 v2, 0x0

    .line 98
    invoke-virtual {p0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sget-object v3, Landroidx/media3/session/PlayerInfo$BundlingExclusions;->FIELD_ARE_CURRENT_TRACKS_EXCLUDED:Ljava/lang/String;

    .line 99
    invoke-virtual {p0, v3, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    invoke-direct {v0, v1, p0}, Landroidx/media3/session/PlayerInfo$BundlingExclusions;-><init>(ZZ)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 106
    :cond_0
    instance-of v1, p1, Landroidx/media3/session/PlayerInfo$BundlingExclusions;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 109
    :cond_1
    check-cast p1, Landroidx/media3/session/PlayerInfo$BundlingExclusions;

    iget-boolean v1, p0, Landroidx/media3/session/PlayerInfo$BundlingExclusions;->isTimelineExcluded:Z

    .line 110
    iget-boolean v3, p1, Landroidx/media3/session/PlayerInfo$BundlingExclusions;->isTimelineExcluded:Z

    if-ne v1, v3, :cond_2

    iget-boolean v1, p0, Landroidx/media3/session/PlayerInfo$BundlingExclusions;->areCurrentTracksExcluded:Z

    iget-boolean p1, p1, Landroidx/media3/session/PlayerInfo$BundlingExclusions;->areCurrentTracksExcluded:Z

    if-ne v1, p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-boolean v0, p0, Landroidx/media3/session/PlayerInfo$BundlingExclusions;->isTimelineExcluded:Z

    .line 116
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget-boolean v1, p0, Landroidx/media3/session/PlayerInfo$BundlingExclusions;->areCurrentTracksExcluded:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 3

    .line 89
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    sget-object v1, Landroidx/media3/session/PlayerInfo$BundlingExclusions;->FIELD_IS_TIMELINE_EXCLUDED:Ljava/lang/String;

    iget-boolean v2, p0, Landroidx/media3/session/PlayerInfo$BundlingExclusions;->isTimelineExcluded:Z

    .line 90
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    sget-object v1, Landroidx/media3/session/PlayerInfo$BundlingExclusions;->FIELD_ARE_CURRENT_TRACKS_EXCLUDED:Ljava/lang/String;

    iget-boolean v2, p0, Landroidx/media3/session/PlayerInfo$BundlingExclusions;->areCurrentTracksExcluded:Z

    .line 91
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v0
.end method
