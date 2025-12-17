.class Landroidx/media3/session/PlayerWrapper$1;
.super Landroidx/media/VolumeProviderCompat;
.source "PlayerWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media3/session/PlayerWrapper;->createVolumeProviderCompat()Landroidx/media/VolumeProviderCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media3/session/PlayerWrapper;

.field final synthetic val$handler:Landroid/os/Handler;

.field final synthetic val$legacyVolumeFlag:I


# direct methods
.method constructor <init>(Landroidx/media3/session/PlayerWrapper;IIILjava/lang/String;Landroid/os/Handler;I)V
    .locals 0

    iput-object p1, p0, Landroidx/media3/session/PlayerWrapper$1;->this$0:Landroidx/media3/session/PlayerWrapper;

    iput-object p6, p0, Landroidx/media3/session/PlayerWrapper$1;->val$handler:Landroid/os/Handler;

    iput p7, p0, Landroidx/media3/session/PlayerWrapper$1;->val$legacyVolumeFlag:I

    .line 1047
    invoke-direct {p0, p2, p3, p4, p5}, Landroidx/media/VolumeProviderCompat;-><init>(IIILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method synthetic lambda$onAdjustVolume$1$androidx-media3-session-PlayerWrapper$1(II)V
    .locals 3

    .line 0
    iget-object v0, p0, Landroidx/media3/session/PlayerWrapper$1;->this$0:Landroidx/media3/session/PlayerWrapper;

    const/16 v1, 0x1a

    .line 1070
    invoke-virtual {v0, v1}, Landroidx/media3/session/PlayerWrapper;->isCommandAvailable(I)Z

    move-result v0

    const/16 v1, 0x22

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/media3/session/PlayerWrapper$1;->this$0:Landroidx/media3/session/PlayerWrapper;

    .line 1071
    invoke-virtual {v0, v1}, Landroidx/media3/session/PlayerWrapper;->isCommandAvailable(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/16 v0, -0x64

    const/4 v2, 0x1

    if-eq p1, v0, :cond_9

    const/4 v0, -0x1

    if-eq p1, v0, :cond_7

    if-eq p1, v2, :cond_5

    const/16 v0, 0x64

    if-eq p1, v0, :cond_3

    const/16 v0, 0x65

    if-eq p1, v0, :cond_1

    .line 1111
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "onAdjustVolume: Ignoring unknown direction: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "VolumeProviderCompat"

    invoke-static {p2, p1}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1
    iget-object p1, p0, Landroidx/media3/session/PlayerWrapper$1;->this$0:Landroidx/media3/session/PlayerWrapper;

    .line 1104
    invoke-virtual {p1, v1}, Landroidx/media3/session/PlayerWrapper;->isCommandAvailable(I)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Landroidx/media3/session/PlayerWrapper$1;->this$0:Landroidx/media3/session/PlayerWrapper;

    .line 1105
    invoke-virtual {p1}, Landroidx/media3/session/PlayerWrapper;->isDeviceMutedWithCommandCheck()Z

    move-result v0

    xor-int/2addr v0, v2

    invoke-virtual {p1, v0, p2}, Landroidx/media3/session/PlayerWrapper;->setDeviceMuted(ZI)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Landroidx/media3/session/PlayerWrapper$1;->this$0:Landroidx/media3/session/PlayerWrapper;

    .line 1107
    invoke-virtual {p1}, Landroidx/media3/session/PlayerWrapper;->isDeviceMutedWithCommandCheck()Z

    move-result p2

    xor-int/2addr p2, v2

    invoke-virtual {p1, p2}, Landroidx/media3/session/PlayerWrapper;->setDeviceMuted(Z)V

    goto :goto_0

    :cond_3
    iget-object p1, p0, Landroidx/media3/session/PlayerWrapper$1;->this$0:Landroidx/media3/session/PlayerWrapper;

    .line 1097
    invoke-virtual {p1, v1}, Landroidx/media3/session/PlayerWrapper;->isCommandAvailable(I)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    iget-object p1, p0, Landroidx/media3/session/PlayerWrapper$1;->this$0:Landroidx/media3/session/PlayerWrapper;

    .line 1098
    invoke-virtual {p1, v0, p2}, Landroidx/media3/session/PlayerWrapper;->setDeviceMuted(ZI)V

    goto :goto_0

    :cond_4
    iget-object p1, p0, Landroidx/media3/session/PlayerWrapper$1;->this$0:Landroidx/media3/session/PlayerWrapper;

    .line 1100
    invoke-virtual {p1, v0}, Landroidx/media3/session/PlayerWrapper;->setDeviceMuted(Z)V

    goto :goto_0

    :cond_5
    iget-object p1, p0, Landroidx/media3/session/PlayerWrapper$1;->this$0:Landroidx/media3/session/PlayerWrapper;

    .line 1076
    invoke-virtual {p1, v1}, Landroidx/media3/session/PlayerWrapper;->isCommandAvailable(I)Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Landroidx/media3/session/PlayerWrapper$1;->this$0:Landroidx/media3/session/PlayerWrapper;

    .line 1077
    invoke-virtual {p1, p2}, Landroidx/media3/session/PlayerWrapper;->increaseDeviceVolume(I)V

    goto :goto_0

    :cond_6
    iget-object p1, p0, Landroidx/media3/session/PlayerWrapper$1;->this$0:Landroidx/media3/session/PlayerWrapper;

    .line 1079
    invoke-virtual {p1}, Landroidx/media3/session/PlayerWrapper;->increaseDeviceVolume()V

    goto :goto_0

    :cond_7
    iget-object p1, p0, Landroidx/media3/session/PlayerWrapper$1;->this$0:Landroidx/media3/session/PlayerWrapper;

    .line 1083
    invoke-virtual {p1, v1}, Landroidx/media3/session/PlayerWrapper;->isCommandAvailable(I)Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Landroidx/media3/session/PlayerWrapper$1;->this$0:Landroidx/media3/session/PlayerWrapper;

    .line 1084
    invoke-virtual {p1, p2}, Landroidx/media3/session/PlayerWrapper;->decreaseDeviceVolume(I)V

    goto :goto_0

    :cond_8
    iget-object p1, p0, Landroidx/media3/session/PlayerWrapper$1;->this$0:Landroidx/media3/session/PlayerWrapper;

    .line 1086
    invoke-virtual {p1}, Landroidx/media3/session/PlayerWrapper;->decreaseDeviceVolume()V

    goto :goto_0

    :cond_9
    iget-object p1, p0, Landroidx/media3/session/PlayerWrapper$1;->this$0:Landroidx/media3/session/PlayerWrapper;

    .line 1090
    invoke-virtual {p1, v1}, Landroidx/media3/session/PlayerWrapper;->isCommandAvailable(I)Z

    move-result p1

    if-eqz p1, :cond_a

    iget-object p1, p0, Landroidx/media3/session/PlayerWrapper$1;->this$0:Landroidx/media3/session/PlayerWrapper;

    .line 1091
    invoke-virtual {p1, v2, p2}, Landroidx/media3/session/PlayerWrapper;->setDeviceMuted(ZI)V

    goto :goto_0

    :cond_a
    iget-object p1, p0, Landroidx/media3/session/PlayerWrapper$1;->this$0:Landroidx/media3/session/PlayerWrapper;

    .line 1093
    invoke-virtual {p1, v2}, Landroidx/media3/session/PlayerWrapper;->setDeviceMuted(Z)V

    :goto_0
    return-void
.end method

.method synthetic lambda$onSetVolumeTo$0$androidx-media3-session-PlayerWrapper$1(II)V
    .locals 2

    .line 0
    iget-object v0, p0, Landroidx/media3/session/PlayerWrapper$1;->this$0:Landroidx/media3/session/PlayerWrapper;

    const/16 v1, 0x19

    .line 1053
    invoke-virtual {v0, v1}, Landroidx/media3/session/PlayerWrapper;->isCommandAvailable(I)Z

    move-result v0

    const/16 v1, 0x21

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/media3/session/PlayerWrapper$1;->this$0:Landroidx/media3/session/PlayerWrapper;

    .line 1054
    invoke-virtual {v0, v1}, Landroidx/media3/session/PlayerWrapper;->isCommandAvailable(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/media3/session/PlayerWrapper$1;->this$0:Landroidx/media3/session/PlayerWrapper;

    .line 1057
    invoke-virtual {v0, v1}, Landroidx/media3/session/PlayerWrapper;->isCommandAvailable(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/media3/session/PlayerWrapper$1;->this$0:Landroidx/media3/session/PlayerWrapper;

    .line 1058
    invoke-virtual {v0, p1, p2}, Landroidx/media3/session/PlayerWrapper;->setDeviceVolume(II)V

    goto :goto_0

    :cond_1
    iget-object p2, p0, Landroidx/media3/session/PlayerWrapper$1;->this$0:Landroidx/media3/session/PlayerWrapper;

    .line 1060
    invoke-virtual {p2, p1}, Landroidx/media3/session/PlayerWrapper;->setDeviceVolume(I)V

    :goto_0
    return-void
.end method

.method public onAdjustVolume(I)V
    .locals 3

    iget-object v0, p0, Landroidx/media3/session/PlayerWrapper$1;->val$handler:Landroid/os/Handler;

    iget v1, p0, Landroidx/media3/session/PlayerWrapper$1;->val$legacyVolumeFlag:I

    .line 1067
    new-instance v2, Landroidx/media3/session/PlayerWrapper$1$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p1, v1}, Landroidx/media3/session/PlayerWrapper$1$$ExternalSyntheticLambda0;-><init>(Landroidx/media3/session/PlayerWrapper$1;II)V

    invoke-static {v0, v2}, Landroidx/media3/common/util/Util;->postOrRun(Landroid/os/Handler;Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onSetVolumeTo(I)V
    .locals 3

    iget-object v0, p0, Landroidx/media3/session/PlayerWrapper$1;->val$handler:Landroid/os/Handler;

    iget v1, p0, Landroidx/media3/session/PlayerWrapper$1;->val$legacyVolumeFlag:I

    .line 1050
    new-instance v2, Landroidx/media3/session/PlayerWrapper$1$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, p1, v1}, Landroidx/media3/session/PlayerWrapper$1$$ExternalSyntheticLambda1;-><init>(Landroidx/media3/session/PlayerWrapper$1;II)V

    invoke-static {v0, v2}, Landroidx/media3/common/util/Util;->postOrRun(Landroid/os/Handler;Ljava/lang/Runnable;)Z

    return-void
.end method
