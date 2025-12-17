.class public Lcom/layla/sd/StableDiffusionService;
.super Landroid/app/Service;
.source "StableDiffusionService.java"

# interfaces
.implements Lcom/layla/jni/SDJni$SDGenImgCallback;


# static fields
.field public static final STABLEDIFFUSION_SERVICE_ACTION:Ljava/lang/String; = "com.layla.StableDiffusionAction"

.field public static final STABLEDIFFUSION_SERVICE_CHANNEL:Ljava/lang/String; = "com.layla.channels.stablediffusion"

.field public static final STABLEDIFFUSION_SERVICE_LIFECYCLE:Ljava/lang/String; = "com.layla.StableDiffusionServiceLifecycle"


# instance fields
.field private floatingWidget:Landroid/view/View;

.field private isBackground:Z

.field private mMessageReceiver:Landroid/content/BroadcastReceiver;

.field private params:Landroid/view/WindowManager$LayoutParams;

.field private thread:Ljava/lang/Thread;

.field private windowManager:Landroid/view/WindowManager;


# direct methods
.method public static synthetic $r8$lambda$xo1iJiRlPPp6kSNpPoBV2rnh8ZE(Lcom/layla/sd/StableDiffusionService;ILjava/lang/String;Ljava/lang/String;IILjava/lang/String;FI)V
    .locals 0

    invoke-direct/range {p0 .. p8}, Lcom/layla/sd/StableDiffusionService;->lambda$onStartCommand$0(ILjava/lang/String;Ljava/lang/String;IILjava/lang/String;FI)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetfloatingWidget(Lcom/layla/sd/StableDiffusionService;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/layla/sd/StableDiffusionService;->floatingWidget:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetparams(Lcom/layla/sd/StableDiffusionService;)Landroid/view/WindowManager$LayoutParams;
    .locals 0

    iget-object p0, p0, Lcom/layla/sd/StableDiffusionService;->params:Landroid/view/WindowManager$LayoutParams;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetwindowManager(Lcom/layla/sd/StableDiffusionService;)Landroid/view/WindowManager;
    .locals 0

    iget-object p0, p0, Lcom/layla/sd/StableDiffusionService;->windowManager:Landroid/view/WindowManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputisBackground(Lcom/layla/sd/StableDiffusionService;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/layla/sd/StableDiffusionService;->isBackground:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateMessageBadge(Lcom/layla/sd/StableDiffusionService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/layla/sd/StableDiffusionService;->updateMessageBadge(I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 45
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/layla/sd/StableDiffusionService;->thread:Ljava/lang/Thread;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/layla/sd/StableDiffusionService;->isBackground:Z

    .line 67
    new-instance v0, Lcom/layla/sd/StableDiffusionService$1;

    invoke-direct {v0, p0}, Lcom/layla/sd/StableDiffusionService$1;-><init>(Lcom/layla/sd/StableDiffusionService;)V

    iput-object v0, p0, Lcom/layla/sd/StableDiffusionService;->mMessageReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private synthetic lambda$onStartCommand$0(ILjava/lang/String;Ljava/lang/String;IILjava/lang/String;FI)V
    .locals 16

    move-object/from16 v11, p0

    move-object/from16 v0, p2

    const-string v12, "SD_ERROR"

    const-string v1, "generated_image_"

    const-string v2, "power"

    .line 246
    invoke-virtual {v11, v2}, Lcom/layla/sd/StableDiffusionService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    const-string v3, "layla::wakelogtag"

    const/4 v13, 0x1

    .line 247
    invoke-virtual {v2, v13, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v14

    const-wide/32 v2, 0x927c0

    .line 249
    invoke-virtual {v14, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 253
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/layla/sd/StableDiffusionService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/gen"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 256
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ".png"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 257
    new-instance v15, Ljava/io/File;

    invoke-direct {v15, v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x3

    move/from16 v2, p1

    if-ne v2, v1, :cond_1

    .line 261
    invoke-static {}, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ImageGeneratorOptions;->builder()Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ImageGeneratorOptions$Builder;

    move-result-object v1

    .line 262
    invoke-virtual {v1, v0}, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ImageGeneratorOptions$Builder;->setImageGeneratorModelDirectory(Ljava/lang/String;)Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ImageGeneratorOptions$Builder;

    move-result-object v0

    .line 263
    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ImageGeneratorOptions$Builder;->build()Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ImageGeneratorOptions;

    move-result-object v0

    .line 265
    invoke-virtual/range {p0 .. p0}, Lcom/layla/sd/StableDiffusionService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator;->createFromOptions(Landroid/content/Context;Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ImageGeneratorOptions;)Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator;

    move-result-object v0

    if-lez p5, :cond_0

    move-object/from16 v3, p3

    move/from16 v5, p4

    move/from16 v1, p5

    goto :goto_0

    .line 267
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    long-to-int v1, v1

    move-object/from16 v3, p3

    move/from16 v5, p4

    :goto_0
    invoke-virtual {v0, v3, v5, v1}, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator;->generate(Ljava/lang/String;II)Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGeneratorResult;

    move-result-object v1

    .line 269
    invoke-virtual {v1}, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGeneratorResult;->generatedImage()Lcom/google/mediapipe/framework/image/MPImage;

    move-result-object v1

    invoke-static {v1}, Lcom/google/mediapipe/framework/image/BitmapExtractor;->extract(Lcom/google/mediapipe/framework/image/MPImage;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 272
    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 275
    :try_start_1
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v15}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 276
    :try_start_2
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {v1, v0, v3, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 277
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object v1, v0

    .line 275
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object v2, v0

    :try_start_5
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catch_0
    move-exception v0

    .line 278
    :try_start_6
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v12, v0}, Lcom/layla/sd/StableDiffusionService;->sendEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_1
    move-object/from16 v3, p3

    move/from16 v5, p4

    .line 281
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-lez p5, :cond_2

    move/from16 v6, p5

    goto :goto_2

    .line 284
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    long-to-int v1, v6

    move v6, v1

    .line 285
    :goto_2
    invoke-virtual {v15}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    move/from16 v1, p1

    move-object v2, v0

    move-object/from16 v3, p3

    move-object/from16 v4, p6

    move/from16 v5, p4

    move/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v10, p0

    .line 281
    invoke-static/range {v1 .. v10}, Lcom/layla/jni/SDJni;->sd(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIFILjava/lang/String;Lcom/layla/jni/SDJni$SDGenImgCallback;)V

    :goto_3
    const-string v0, "SD_DONE"

    .line 289
    invoke-virtual {v15}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Lcom/layla/sd/StableDiffusionService;->sendEvent(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_4

    :catchall_2
    move-exception v0

    goto :goto_5

    :catch_1
    move-exception v0

    .line 291
    :try_start_7
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v12, v0}, Lcom/layla/sd/StableDiffusionService;->sendEvent(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 295
    :goto_4
    invoke-virtual {v14}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 298
    invoke-virtual {v11, v13}, Lcom/layla/sd/StableDiffusionService;->stopForeground(Z)V

    .line 299
    invoke-virtual/range {p0 .. p0}, Lcom/layla/sd/StableDiffusionService;->stopSelf()V

    return-void

    .line 295
    :goto_5
    invoke-virtual {v14}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 298
    invoke-virtual {v11, v13}, Lcom/layla/sd/StableDiffusionService;->stopForeground(Z)V

    .line 299
    invoke-virtual/range {p0 .. p0}, Lcom/layla/sd/StableDiffusionService;->stopSelf()V

    .line 300
    throw v0
.end method

.method private updateMessageBadge(I)V
    .locals 1

    .line 83
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcom/layla/sd/StableDiffusionService$2;

    invoke-direct {v0, p0}, Lcom/layla/sd/StableDiffusionService$2;-><init>(Lcom/layla/sd/StableDiffusionService;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()V
    .locals 4

    .line 99
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 101
    new-instance v0, Landroid/app/NotificationChannel;

    const-string v1, "Layla Stable Diffusion"

    const/4 v2, 0x4

    const-string v3, "com.layla.channels.stablediffusion"

    invoke-direct {v0, v3, v1, v2}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 107
    const-class v1, Landroid/app/NotificationManager;

    invoke-virtual {p0, v1}, Lcom/layla/sd/StableDiffusionService;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 108
    invoke-virtual {v1, v0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 110
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.layla.StableDiffusionServiceLifecycle"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 112
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v1

    iget-object v2, p0, Lcom/layla/sd/StableDiffusionService;->mMessageReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 117
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    iget-object v0, p0, Lcom/layla/sd/StableDiffusionService;->floatingWidget:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/layla/sd/StableDiffusionService;->windowManager:Landroid/view/WindowManager;

    .line 118
    invoke-interface {v1, v0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public onProgress(IIF)V
    .locals 0

    .line 319
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "step: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "layla-sd"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 15

    move-object v10, p0

    move-object/from16 v0, p1

    const/4 v1, 0x2

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-string v2, "kill"

    const/4 v3, 0x0

    .line 126
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const/4 v4, 0x0

    const/4 v11, 0x1

    if-lez v2, :cond_2

    .line 128
    invoke-virtual {p0, v11}, Lcom/layla/sd/StableDiffusionService;->stopForeground(Z)V

    .line 129
    invoke-virtual {p0}, Lcom/layla/sd/StableDiffusionService;->stopSelf()V

    iget-object v0, v10, Lcom/layla/sd/StableDiffusionService;->thread:Ljava/lang/Thread;

    if-eqz v0, :cond_1

    .line 131
    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, v10, Lcom/layla/sd/StableDiffusionService;->thread:Ljava/lang/Thread;

    .line 133
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    iput-object v4, v10, Lcom/layla/sd/StableDiffusionService;->thread:Ljava/lang/Thread;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return v1

    .line 144
    :cond_2
    new-instance v2, Landroidx/core/app/NotificationCompat$Builder;

    const-string v5, "com.layla.channels.stablediffusion"

    invoke-direct {v2, p0, v5}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-string v5, "Layla is generating an image..."

    .line 145
    invoke-virtual {v2, v5}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    const-string v5, "Tap to return Layla"

    .line 146
    invoke-virtual {v2, v5}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    sget v5, Lcom/layla/R$mipmap;->ic_launcher:I

    .line 147
    invoke-virtual {v2, v5}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    .line 148
    invoke-virtual {v2, v1}, Landroidx/core/app/NotificationCompat$Builder;->setPriority(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    .line 151
    new-instance v5, Landroid/content/Intent;

    const-class v6, Lcom/layla/MainActivity;

    invoke-direct {v5, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v6, 0x4000000

    .line 152
    invoke-static {p0, v3, v5, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    .line 153
    invoke-virtual {v2, v5}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    .line 156
    invoke-virtual {v2}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/layla/sd/StableDiffusionService;->startForeground(ILandroid/app/Notification;)V

    iget-object v1, v10, Lcom/layla/sd/StableDiffusionService;->floatingWidget:Landroid/view/View;

    if-eqz v1, :cond_3

    iget-object v2, v10, Lcom/layla/sd/StableDiffusionService;->windowManager:Landroid/view/WindowManager;

    .line 160
    invoke-interface {v2, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    :cond_3
    const-string v1, "window"

    .line 161
    invoke-virtual {p0, v1}, Lcom/layla/sd/StableDiffusionService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    iput-object v1, v10, Lcom/layla/sd/StableDiffusionService;->windowManager:Landroid/view/WindowManager;

    .line 163
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/layla/R$layout;->floating_widget_layout:I

    invoke-virtual {v1, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, v10, Lcom/layla/sd/StableDiffusionService;->floatingWidget:Landroid/view/View;

    const v2, 0x3c23d70a    # 0.01f

    .line 164
    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 167
    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/16 v7, 0x7f6

    const/16 v8, 0x8

    const/4 v9, -0x3

    move-object v4, v1

    .line 172
    invoke-direct/range {v4 .. v9}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iput-object v1, v10, Lcom/layla/sd/StableDiffusionService;->params:Landroid/view/WindowManager$LayoutParams;

    const/16 v2, 0x33

    .line 177
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget-object v1, v10, Lcom/layla/sd/StableDiffusionService;->params:Landroid/view/WindowManager$LayoutParams;

    const/16 v2, 0x32

    .line 178
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v1, v10, Lcom/layla/sd/StableDiffusionService;->params:Landroid/view/WindowManager$LayoutParams;

    const/16 v2, 0x64

    .line 179
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v1, v10, Lcom/layla/sd/StableDiffusionService;->windowManager:Landroid/view/WindowManager;

    iget-object v2, v10, Lcom/layla/sd/StableDiffusionService;->floatingWidget:Landroid/view/View;

    iget-object v4, v10, Lcom/layla/sd/StableDiffusionService;->params:Landroid/view/WindowManager$LayoutParams;

    .line 182
    invoke-interface {v1, v2, v4}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, v10, Lcom/layla/sd/StableDiffusionService;->floatingWidget:Landroid/view/View;

    .line 185
    new-instance v2, Lcom/layla/sd/StableDiffusionService$3;

    invoke-direct {v2, p0}, Lcom/layla/sd/StableDiffusionService$3;-><init>(Lcom/layla/sd/StableDiffusionService;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v1, v10, Lcom/layla/sd/StableDiffusionService;->thread:Ljava/lang/Thread;

    if-eqz v1, :cond_4

    .line 233
    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-nez v1, :cond_5

    :cond_4
    const-string v1, "sdModelType"

    .line 235
    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const-string v1, "modelPath"

    .line 236
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v1, "steps"

    const/16 v5, 0xf

    .line 237
    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    const-string v1, "positivePrompt"

    .line 238
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v1, "negativePrompt"

    .line 239
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v1, "cfg"

    const/high16 v8, 0x40000000    # 2.0f

    .line 240
    invoke-virtual {v0, v1, v8}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v8

    const-string v1, "seed"

    .line 241
    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    const-string v1, "width"

    const/16 v3, 0x100

    .line 242
    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v12

    .line 245
    new-instance v13, Ljava/lang/Thread;

    new-instance v14, Lcom/layla/sd/StableDiffusionService$$ExternalSyntheticLambda0;

    move-object v0, v14

    move-object v1, p0

    move-object v3, v4

    move-object v4, v6

    move v6, v9

    move v9, v12

    invoke-direct/range {v0 .. v9}, Lcom/layla/sd/StableDiffusionService$$ExternalSyntheticLambda0;-><init>(Lcom/layla/sd/StableDiffusionService;ILjava/lang/String;Ljava/lang/String;IILjava/lang/String;FI)V

    invoke-direct {v13, v14}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v13, v10, Lcom/layla/sd/StableDiffusionService;->thread:Ljava/lang/Thread;

    const/16 v0, 0xa

    .line 303
    invoke-virtual {v13, v0}, Ljava/lang/Thread;->setPriority(I)V

    iget-object v0, v10, Lcom/layla/sd/StableDiffusionService;->thread:Ljava/lang/Thread;

    .line 305
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_5
    return v11
.end method

.method public sendEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 58
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.layla.StableDiffusionAction"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "eventName"

    .line 60
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "msg"

    .line 61
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 63
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    return-void
.end method
