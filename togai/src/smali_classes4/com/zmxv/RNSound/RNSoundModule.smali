.class public Lcom/zmxv/RNSound/RNSoundModule;
.super Lcom/facebook/react/bridge/ReactContextBaseJavaModule;
.source "RNSoundModule.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# static fields
.field static final NULL:Ljava/lang/Object;


# instance fields
.field category:Ljava/lang/String;

.field context:Lcom/facebook/react/bridge/ReactApplicationContext;

.field focusedPlayerKey:Ljava/lang/Double;

.field mixWithOthers:Ljava/lang/Boolean;

.field playerPool:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Double;",
            "Landroid/media/MediaPlayer;",
            ">;"
        }
    .end annotation
.end field

.field wasPlayingBeforeFocusChange:Ljava/lang/Boolean;


# direct methods
.method static bridge synthetic -$$Nest$msetOnPlay(Lcom/zmxv/RNSound/RNSoundModule;ZLjava/lang/Double;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/zmxv/RNSound/RNSoundModule;->setOnPlay(ZLjava/lang/Double;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V
    .locals 1

    .line 39
    invoke-direct {p0, p1}, Lcom/facebook/react/bridge/ReactContextBaseJavaModule;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    .line 30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/zmxv/RNSound/RNSoundModule;->playerPool:Ljava/util/Map;

    const/4 v0, 0x1

    .line 34
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/zmxv/RNSound/RNSoundModule;->mixWithOthers:Ljava/lang/Boolean;

    const/4 v0, 0x0

    .line 36
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/zmxv/RNSound/RNSoundModule;->wasPlayingBeforeFocusChange:Ljava/lang/Boolean;

    iput-object p1, p0, Lcom/zmxv/RNSound/RNSoundModule;->context:Lcom/facebook/react/bridge/ReactApplicationContext;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/zmxv/RNSound/RNSoundModule;->category:Ljava/lang/String;

    return-void
.end method

.method private setOnPlay(ZLjava/lang/Double;)V
    .locals 4

    iget-object v0, p0, Lcom/zmxv/RNSound/RNSoundModule;->context:Lcom/facebook/react/bridge/ReactApplicationContext;

    .line 46
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v1

    const-string v2, "isPlaying"

    .line 47
    invoke-interface {v1, v2, p1}, Lcom/facebook/react/bridge/WritableMap;->putBoolean(Ljava/lang/String;Z)V

    const-string p1, "playerKey"

    .line 48
    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-interface {v1, p1, v2, v3}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 49
    const-class p1, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;

    .line 50
    invoke-virtual {v0, p1}, Lcom/facebook/react/bridge/ReactContext;->getJSModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/JavaScriptModule;

    move-result-object p1

    check-cast p1, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;

    const-string p2, "onPlayChange"

    .line 51
    invoke-interface {p1, p2, v1}, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;->emit(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public addListener(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    return-void
.end method

.method protected createMediaPlayer(Ljava/lang/String;)Landroid/media/MediaPlayer;
    .locals 11

    iget-object v0, p0, Lcom/zmxv/RNSound/RNSoundModule;->context:Lcom/facebook/react/bridge/ReactApplicationContext;

    .line 160
    invoke-virtual {v0}, Lcom/facebook/react/bridge/ReactApplicationContext;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/zmxv/RNSound/RNSoundModule;->context:Lcom/facebook/react/bridge/ReactApplicationContext;

    invoke-virtual {v1}, Lcom/facebook/react/bridge/ReactApplicationContext;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "raw"

    invoke-virtual {v0, p1, v2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 161
    new-instance v7, Landroid/media/MediaPlayer;

    invoke-direct {v7}, Landroid/media/MediaPlayer;-><init>()V

    const-string v8, "Exception"

    const/4 v9, 0x0

    const-string v10, "RNSoundModule"

    if-eqz v0, :cond_0

    :try_start_0
    iget-object p1, p0, Lcom/zmxv/RNSound/RNSoundModule;->context:Lcom/facebook/react/bridge/ReactApplicationContext;

    .line 164
    invoke-virtual {p1}, Lcom/facebook/react/bridge/ReactApplicationContext;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object p1

    .line 165
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v3

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v5

    move-object v1, v7

    invoke-virtual/range {v1 .. v6}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 166
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v7

    :catch_0
    move-exception p1

    .line 168
    invoke-static {v10, v8, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v9

    :cond_0
    const-string v0, "http://"

    .line 174
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x3

    if-nez v0, :cond_5

    const-string v0, "https://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, "asset:/"

    .line 186
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    :try_start_1
    iget-object v1, p0, Lcom/zmxv/RNSound/RNSoundModule;->context:Lcom/facebook/react/bridge/ReactApplicationContext;

    .line 188
    invoke-virtual {v1}, Lcom/facebook/react/bridge/ReactApplicationContext;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object p1

    .line 189
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v3

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v5

    move-object v1, v7

    invoke-virtual/range {v1 .. v6}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 190
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v7

    :catch_1
    move-exception p1

    .line 193
    invoke-static {v10, v8, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v9

    :cond_2
    const-string v0, "file:/"

    .line 198
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 200
    :try_start_2
    invoke-virtual {v7, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    return-object v7

    :catch_2
    move-exception p1

    .line 202
    invoke-static {v10, v8, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v9

    .line 208
    :cond_3
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 209
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 210
    invoke-virtual {v7, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 211
    invoke-static {v10, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    :try_start_3
    invoke-virtual {v7, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    return-object v7

    :catch_3
    move-exception p1

    .line 215
    invoke-static {v10, v8, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_4
    return-object v9

    .line 175
    :cond_5
    :goto_0
    invoke-virtual {v7, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 176
    invoke-static {v10, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    :try_start_4
    invoke-virtual {v7, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    return-object v7

    :catch_4
    move-exception p1

    .line 180
    invoke-static {v10, v8, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v9
.end method

.method public enable(Ljava/lang/Boolean;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    return-void
.end method

.method public getConstants()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 483
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x1

    .line 484
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "IsAndroid"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public getCurrentTime(Ljava/lang/Double;Lcom/facebook/react/bridge/Callback;)V
    .locals 4
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    iget-object v0, p0, Lcom/zmxv/RNSound/RNSoundModule;->playerPool:Ljava/util/Map;

    .line 425
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/MediaPlayer;

    if-nez p1, :cond_0

    const/4 p1, -0x1

    .line 427
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {p1, v0}, [Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    return-void

    .line 430
    :cond_0
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    int-to-double v0, v0

    const-wide v2, 0x3f50624dd2f1a9fcL    # 0.001

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    filled-new-array {v0, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "RNSound"

    return-object v0
.end method

.method public getSystemVolume(Lcom/facebook/react/bridge/Callback;)V
    .locals 4
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/zmxv/RNSound/RNSoundModule;->context:Lcom/facebook/react/bridge/ReactApplicationContext;

    const-string v1, "audio"

    .line 362
    invoke-virtual {v0, v1}, Lcom/facebook/react/bridge/ReactApplicationContext;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x3

    .line 364
    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v3, v0

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 366
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v1

    const-string v2, "code"

    const/4 v3, -0x1

    .line 367
    invoke-interface {v1, v2, v3}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    const-string v2, "message"

    .line 368
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public onAudioFocusChange(I)V
    .locals 2

    iget-object v0, p0, Lcom/zmxv/RNSound/RNSoundModule;->mixWithOthers:Ljava/lang/Boolean;

    .line 456
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/zmxv/RNSound/RNSoundModule;->playerPool:Ljava/util/Map;

    iget-object v1, p0, Lcom/zmxv/RNSound/RNSoundModule;->focusedPlayerKey:Ljava/lang/Double;

    .line 457
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    if-gtz p1, :cond_0

    .line 461
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/zmxv/RNSound/RNSoundModule;->wasPlayingBeforeFocusChange:Ljava/lang/Boolean;

    .line 463
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/zmxv/RNSound/RNSoundModule;->focusedPlayerKey:Ljava/lang/Double;

    .line 464
    invoke-virtual {p0, p1, v1}, Lcom/zmxv/RNSound/RNSoundModule;->pause(Ljava/lang/Double;Lcom/facebook/react/bridge/Callback;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/zmxv/RNSound/RNSoundModule;->wasPlayingBeforeFocusChange:Ljava/lang/Boolean;

    .line 467
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/zmxv/RNSound/RNSoundModule;->focusedPlayerKey:Ljava/lang/Double;

    .line 468
    invoke-virtual {p0, p1, v1}, Lcom/zmxv/RNSound/RNSoundModule;->play(Ljava/lang/Double;Lcom/facebook/react/bridge/Callback;)V

    const/4 p1, 0x0

    .line 469
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/zmxv/RNSound/RNSoundModule;->wasPlayingBeforeFocusChange:Ljava/lang/Boolean;

    :cond_1
    :goto_0
    return-void
.end method

.method public onCatalystInstanceDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/zmxv/RNSound/RNSoundModule;->playerPool:Ljava/util/Map;

    .line 339
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 340
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 341
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 342
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    .line 344
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->reset()V

    .line 345
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    .line 347
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public pause(Ljava/lang/Double;Lcom/facebook/react/bridge/Callback;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    iget-object v0, p0, Lcom/zmxv/RNSound/RNSoundModule;->playerPool:Ljava/util/Map;

    .line 286
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/MediaPlayer;

    if-eqz p1, :cond_0

    .line 287
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 288
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->pause()V

    :cond_0
    if-eqz p2, :cond_1

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    .line 292
    invoke-interface {p2, p1}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public play(Ljava/lang/Double;Lcom/facebook/react/bridge/Callback;)V
    .locals 4
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    iget-object v0, p0, Lcom/zmxv/RNSound/RNSoundModule;->playerPool:Ljava/util/Map;

    .line 226
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaPlayer;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 228
    invoke-direct {p0, v0, p1}, Lcom/zmxv/RNSound/RNSoundModule;->setOnPlay(ZLjava/lang/Double;)V

    if-eqz p2, :cond_0

    .line 230
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    :cond_0
    return-void

    .line 234
    :cond_1
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_2

    return-void

    :cond_2
    iget-object v1, p0, Lcom/zmxv/RNSound/RNSoundModule;->mixWithOthers:Ljava/lang/Boolean;

    .line 239
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/zmxv/RNSound/RNSoundModule;->context:Lcom/facebook/react/bridge/ReactApplicationContext;

    const-string v3, "audio"

    .line 240
    invoke-virtual {v1, v3}, Lcom/facebook/react/bridge/ReactApplicationContext;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    const/4 v3, 0x3

    .line 242
    invoke-virtual {v1, p0, v3, v2}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    iput-object p1, p0, Lcom/zmxv/RNSound/RNSoundModule;->focusedPlayerKey:Ljava/lang/Double;

    .line 247
    :cond_3
    new-instance v1, Lcom/zmxv/RNSound/RNSoundModule$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/zmxv/RNSound/RNSoundModule$3;-><init>(Lcom/zmxv/RNSound/RNSoundModule;Ljava/lang/Double;Lcom/facebook/react/bridge/Callback;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 264
    new-instance v1, Lcom/zmxv/RNSound/RNSoundModule$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/zmxv/RNSound/RNSoundModule$4;-><init>(Lcom/zmxv/RNSound/RNSoundModule;Ljava/lang/Double;Lcom/facebook/react/bridge/Callback;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 280
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 281
    invoke-direct {p0, v2, p1}, Lcom/zmxv/RNSound/RNSoundModule;->setOnPlay(ZLjava/lang/Double;)V

    return-void
.end method

.method public prepare(Ljava/lang/String;Ljava/lang/Double;Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Callback;)V
    .locals 10
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    const-string v0, "loadSync"

    .line 61
    invoke-virtual {p0, p1}, Lcom/zmxv/RNSound/RNSoundModule;->createMediaPlayer(Ljava/lang/String;)Landroid/media/MediaPlayer;

    move-result-object p1

    const-string v1, "speed"

    .line 62
    invoke-interface {p3, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 63
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getPlaybackParams()Landroid/media/PlaybackParams;

    move-result-object v2

    invoke-interface {p3, v1}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v3

    double-to-float v1, v3

    invoke-virtual {v2, v1}, Landroid/media/PlaybackParams;->setSpeed(F)Landroid/media/PlaybackParams;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/media/MediaPlayer;->setPlaybackParams(Landroid/media/PlaybackParams;)V

    :cond_0
    const/4 v1, -0x1

    if-nez p1, :cond_1

    .line 66
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object p1

    const-string p2, "code"

    .line 67
    invoke-interface {p1, p2, v1}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    const-string p2, "message"

    const-string p3, "resource not found"

    .line 68
    invoke-interface {p1, p2, p3}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p2, Lcom/zmxv/RNSound/RNSoundModule;->NULL:Ljava/lang/Object;

    .line 69
    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p4, p1}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    return-void

    :cond_1
    iget-object v2, p0, Lcom/zmxv/RNSound/RNSoundModule;->playerPool:Ljava/util/Map;

    .line 72
    invoke-interface {v2, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lcom/zmxv/RNSound/RNSoundModule;->category:Ljava/lang/String;

    const-string v2, "RNSoundModule"

    if-eqz p2, :cond_8

    .line 78
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, 0x5

    const/4 v5, 0x4

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    sparse-switch v3, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v3, "Playback"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    goto :goto_0

    :cond_2
    move v1, v4

    goto :goto_0

    :sswitch_1
    const-string v3, "Ambient"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    goto :goto_0

    :cond_3
    move v1, v5

    goto :goto_0

    :sswitch_2
    const-string v3, "Voice"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    goto :goto_0

    :cond_4
    move v1, v6

    goto :goto_0

    :sswitch_3
    const-string v3, "Alarm"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5

    goto :goto_0

    :cond_5
    move v1, v7

    goto :goto_0

    :sswitch_4
    const-string v3, "Ring"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_6

    goto :goto_0

    :cond_6
    move v1, v8

    goto :goto_0

    :sswitch_5
    const-string v3, "System"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_7

    goto :goto_0

    :cond_7
    move v1, v9

    :goto_0
    packed-switch v1, :pswitch_data_0

    iget-object p2, p0, Lcom/zmxv/RNSound/RNSoundModule;->category:Ljava/lang/String;

    .line 98
    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    const-string v1, "Unrecognised category %s"

    invoke-static {v1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, 0x0

    goto :goto_1

    .line 80
    :pswitch_0
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    goto :goto_1

    .line 83
    :pswitch_1
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    goto :goto_1

    .line 89
    :pswitch_2
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    goto :goto_1

    .line 95
    :pswitch_3
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    goto :goto_1

    .line 92
    :pswitch_4
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    goto :goto_1

    .line 86
    :pswitch_5
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    :goto_1
    if-eqz p2, :cond_8

    .line 102
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 106
    :cond_8
    new-instance p2, Lcom/zmxv/RNSound/RNSoundModule$1;

    invoke-direct {p2, p0, p4}, Lcom/zmxv/RNSound/RNSoundModule$1;-><init>(Lcom/zmxv/RNSound/RNSoundModule;Lcom/facebook/react/bridge/Callback;)V

    invoke-virtual {p1, p2}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 126
    new-instance p2, Lcom/zmxv/RNSound/RNSoundModule$2;

    invoke-direct {p2, p0, p4}, Lcom/zmxv/RNSound/RNSoundModule$2;-><init>(Lcom/zmxv/RNSound/RNSoundModule;Lcom/facebook/react/bridge/Callback;)V

    invoke-virtual {p1, p2}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 147
    :try_start_0
    invoke-interface {p3, v0}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_9

    invoke-interface {p3, v0}, Lcom/facebook/react/bridge/ReadableMap;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_9

    .line 148
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->prepare()V

    goto :goto_2

    .line 150
    :cond_9
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->prepareAsync()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    const-string p2, "Exception"

    .line 155
    invoke-static {v2, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6b7ea1b1 -> :sswitch_5
        0x26de50 -> :sswitch_4
        0x3c68a31 -> :sswitch_3
        0x4eff112 -> :sswitch_2
        0x2e0b8a78 -> :sswitch_1
        0x73dc3a3b -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public release(Ljava/lang/Double;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    iget-object v0, p0, Lcom/zmxv/RNSound/RNSoundModule;->playerPool:Ljava/util/Map;

    .line 323
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 325
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 326
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    iget-object v0, p0, Lcom/zmxv/RNSound/RNSoundModule;->playerPool:Ljava/util/Map;

    .line 327
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/zmxv/RNSound/RNSoundModule;->mixWithOthers:Ljava/lang/Boolean;

    .line 330
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/zmxv/RNSound/RNSoundModule;->focusedPlayerKey:Ljava/lang/Double;

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/zmxv/RNSound/RNSoundModule;->context:Lcom/facebook/react/bridge/ReactApplicationContext;

    const-string v0, "audio"

    .line 331
    invoke-virtual {p1, v0}, Lcom/facebook/react/bridge/ReactApplicationContext;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    .line 332
    invoke-virtual {p1, p0}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    :cond_0
    return-void
.end method

.method public removeListeners(Ljava/lang/Integer;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    return-void
.end method

.method public reset(Ljava/lang/Double;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    iget-object v0, p0, Lcom/zmxv/RNSound/RNSoundModule;->playerPool:Ljava/util/Map;

    .line 315
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/MediaPlayer;

    if-eqz p1, :cond_0

    .line 317
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->reset()V

    :cond_0
    return-void
.end method

.method public setCategory(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    iput-object p1, p0, Lcom/zmxv/RNSound/RNSoundModule;->category:Ljava/lang/String;

    iput-object p2, p0, Lcom/zmxv/RNSound/RNSoundModule;->mixWithOthers:Ljava/lang/Boolean;

    return-void
.end method

.method public setCurrentTime(Ljava/lang/Double;Ljava/lang/Float;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    iget-object v0, p0, Lcom/zmxv/RNSound/RNSoundModule;->playerPool:Ljava/util/Map;

    .line 417
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/MediaPlayer;

    if-eqz p1, :cond_0

    .line 419
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    const/high16 v0, 0x447a0000    # 1000.0f

    mul-float/2addr p2, v0

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/media/MediaPlayer;->seekTo(I)V

    :cond_0
    return-void
.end method

.method public setLooping(Ljava/lang/Double;Ljava/lang/Boolean;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    iget-object v0, p0, Lcom/zmxv/RNSound/RNSoundModule;->playerPool:Ljava/util/Map;

    .line 383
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/MediaPlayer;

    if-eqz p1, :cond_0

    .line 385
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p1, p2}, Landroid/media/MediaPlayer;->setLooping(Z)V

    :cond_0
    return-void
.end method

.method public setPitch(Ljava/lang/Double;Ljava/lang/Float;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    iget-object v0, p0, Lcom/zmxv/RNSound/RNSoundModule;->playerPool:Ljava/util/Map;

    .line 409
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/MediaPlayer;

    if-eqz p1, :cond_0

    .line 411
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getPlaybackParams()Landroid/media/PlaybackParams;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-virtual {v0, p2}, Landroid/media/PlaybackParams;->setPitch(F)Landroid/media/PlaybackParams;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/media/MediaPlayer;->setPlaybackParams(Landroid/media/PlaybackParams;)V

    :cond_0
    return-void
.end method

.method public setSpeakerphoneOn(Ljava/lang/Double;Ljava/lang/Boolean;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    iget-object v0, p0, Lcom/zmxv/RNSound/RNSoundModule;->playerPool:Ljava/util/Map;

    .line 436
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/MediaPlayer;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/zmxv/RNSound/RNSoundModule;->context:Lcom/facebook/react/bridge/ReactApplicationContext;

    const-string v0, "audio"

    .line 438
    invoke-virtual {p1, v0}, Lcom/facebook/react/bridge/ReactApplicationContext;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    .line 439
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    .line 440
    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->setMode(I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 442
    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->setMode(I)V

    .line 444
    :goto_0
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p1, p2}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    :cond_1
    return-void
.end method

.method public setSpeed(Ljava/lang/Double;Ljava/lang/Float;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    iget-object v0, p0, Lcom/zmxv/RNSound/RNSoundModule;->playerPool:Ljava/util/Map;

    .line 396
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/MediaPlayer;

    if-eqz p1, :cond_0

    .line 398
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getPlaybackParams()Landroid/media/PlaybackParams;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-virtual {v0, p2}, Landroid/media/PlaybackParams;->setSpeed(F)Landroid/media/PlaybackParams;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/media/MediaPlayer;->setPlaybackParams(Landroid/media/PlaybackParams;)V

    :cond_0
    return-void
.end method

.method public setSystemVolume(Ljava/lang/Float;)V
    .locals 3
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    iget-object v0, p0, Lcom/zmxv/RNSound/RNSoundModule;->context:Lcom/facebook/react/bridge/ReactApplicationContext;

    const-string v1, "audio"

    .line 375
    invoke-virtual {v0, v1}, Lcom/facebook/react/bridge/ReactApplicationContext;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    const/4 v1, 0x3

    .line 377
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    mul-float/2addr v2, p1

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result p1

    const/4 v2, 0x0

    .line 378
    invoke-virtual {v0, v1, p1, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    return-void
.end method

.method public setVolume(Ljava/lang/Double;Ljava/lang/Float;Ljava/lang/Float;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    iget-object v0, p0, Lcom/zmxv/RNSound/RNSoundModule;->playerPool:Ljava/util/Map;

    .line 353
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/MediaPlayer;

    if-eqz p1, :cond_0

    .line 355
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p3

    invoke-virtual {p1, p2, p3}, Landroid/media/MediaPlayer;->setVolume(FF)V

    :cond_0
    return-void
.end method

.method public stop(Ljava/lang/Double;Lcom/facebook/react/bridge/Callback;)V
    .locals 3
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    iget-object v0, p0, Lcom/zmxv/RNSound/RNSoundModule;->playerPool:Ljava/util/Map;

    .line 298
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 299
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 300
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 301
    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->seekTo(I)V

    :cond_0
    iget-object v0, p0, Lcom/zmxv/RNSound/RNSoundModule;->mixWithOthers:Ljava/lang/Boolean;

    .line 305
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/zmxv/RNSound/RNSoundModule;->focusedPlayerKey:Ljava/lang/Double;

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/zmxv/RNSound/RNSoundModule;->context:Lcom/facebook/react/bridge/ReactApplicationContext;

    const-string v0, "audio"

    .line 306
    invoke-virtual {p1, v0}, Lcom/facebook/react/bridge/ReactApplicationContext;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    .line 307
    invoke-virtual {p1, p0}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    :cond_1
    new-array p1, v1, [Ljava/lang/Object;

    .line 310
    invoke-interface {p2, p1}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    return-void
.end method
