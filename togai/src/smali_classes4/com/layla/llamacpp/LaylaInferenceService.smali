.class public Lcom/layla/llamacpp/LaylaInferenceService;
.super Landroid/app/Service;
.source "LaylaInferenceService.java"

# interfaces
.implements Lorg/pytorch/executorch/LlamaCallback;
.implements Lcom/layla/jni/LlamaCppJni$LlamaCppCallback;


# static fields
.field public static final LLAMACPPSERVICE_ACTION:Ljava/lang/String; = "com.layla.LlamaCppServiceAction"

.field public static final LLAMACPPSERVICE_LIFECYCLE:Ljava/lang/String; = "com.layla.LlamaCppServiceLifecycle"

.field public static final LLAMACPP_INFERECE_SERVICE_CHANNEL:Ljava/lang/String; = "com.layla.channels.inference"


# instance fields
.field private floatingWidget:Landroid/view/View;

.field private isBackground:Z

.field private mMessageReceiver:Landroid/content/BroadcastReceiver;

.field private params:Landroid/view/WindowManager$LayoutParams;

.field private thread:Ljava/lang/Thread;

.field private windowManager:Landroid/view/WindowManager;


# direct methods
.method public static synthetic $r8$lambda$FgKbq5Z1ri3foq5kuqOL814Njv4(Lcom/layla/llamacpp/LaylaInferenceService;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FFFIFIIZZLjava/lang/String;FFFFIIFFIFFIIII)V
    .locals 0

    invoke-direct/range {p0 .. p39}, Lcom/layla/llamacpp/LaylaInferenceService;->lambda$onStartCommand$0(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FFFIFIIZZLjava/lang/String;FFFFIIFFIFFIIII)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetfloatingWidget(Lcom/layla/llamacpp/LaylaInferenceService;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/layla/llamacpp/LaylaInferenceService;->floatingWidget:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetparams(Lcom/layla/llamacpp/LaylaInferenceService;)Landroid/view/WindowManager$LayoutParams;
    .locals 0

    iget-object p0, p0, Lcom/layla/llamacpp/LaylaInferenceService;->params:Landroid/view/WindowManager$LayoutParams;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetwindowManager(Lcom/layla/llamacpp/LaylaInferenceService;)Landroid/view/WindowManager;
    .locals 0

    iget-object p0, p0, Lcom/layla/llamacpp/LaylaInferenceService;->windowManager:Landroid/view/WindowManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputisBackground(Lcom/layla/llamacpp/LaylaInferenceService;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/layla/llamacpp/LaylaInferenceService;->isBackground:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateMessageBadge(Lcom/layla/llamacpp/LaylaInferenceService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/layla/llamacpp/LaylaInferenceService;->updateMessageBadge(I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/layla/llamacpp/LaylaInferenceService;->thread:Ljava/lang/Thread;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/layla/llamacpp/LaylaInferenceService;->isBackground:Z

    .line 63
    new-instance v0, Lcom/layla/llamacpp/LaylaInferenceService$1;

    invoke-direct {v0, p0}, Lcom/layla/llamacpp/LaylaInferenceService$1;-><init>(Lcom/layla/llamacpp/LaylaInferenceService;)V

    iput-object v0, p0, Lcom/layla/llamacpp/LaylaInferenceService;->mMessageReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private synthetic lambda$onStartCommand$0(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FFFIFIIZZLjava/lang/String;FFFFIIFFIFFIIII)V
    .locals 40

    move-object/from16 v15, p0

    const-string v0, "Load failed: "

    const-string v1, "power"

    .line 280
    invoke-virtual {v15, v1}, Lcom/layla/llamacpp/LaylaInferenceService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    const-string v2, "layla::wakelogtag"

    const/4 v14, 0x1

    .line 281
    invoke-virtual {v1, v14, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v39

    .line 283
    invoke-virtual/range {v39 .. v39}, Landroid/os/PowerManager$WakeLock;->acquire()V

    if-eqz p1, :cond_1

    .line 287
    :try_start_0
    new-instance v1, Lorg/pytorch/executorch/LlamaModule;

    const v2, 0x3f4ccccd    # 0.8f

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    invoke-direct {v1, v3, v4, v2}, Lorg/pytorch/executorch/LlamaModule;-><init>(Ljava/lang/String;Ljava/lang/String;F)V

    sput-object v1, Lcom/layla/executorch/Executorch;->executorchChatModule:Lorg/pytorch/executorch/LlamaModule;

    .line 289
    sget-object v1, Lcom/layla/executorch/Executorch;->executorchChatModule:Lorg/pytorch/executorch/LlamaModule;

    invoke-virtual {v1}, Lorg/pytorch/executorch/LlamaModule;->load()I

    move-result v1

    if-eqz v1, :cond_0

    const-string v2, "REPL_ERROR"

    .line 291
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v2, v0}, Lcom/layla/llamacpp/LaylaInferenceService;->sendEvent(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 327
    invoke-virtual/range {v39 .. v39}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 330
    invoke-virtual {v15, v14}, Lcom/layla/llamacpp/LaylaInferenceService;->stopForeground(Z)V

    .line 331
    invoke-virtual/range {p0 .. p0}, Lcom/layla/llamacpp/LaylaInferenceService;->stopSelf()V

    return-void

    .line 295
    :cond_0
    :try_start_1
    sget-object v0, Lcom/layla/executorch/Executorch;->executorchChatModule:Lorg/pytorch/executorch/LlamaModule;

    move-object/from16 p9, v0

    move-object/from16 p10, p4

    move-object/from16 p11, p5

    move/from16 p12, p6

    move-object/from16 p13, p7

    move-object/from16 p14, p8

    move-object/from16 p15, p0

    invoke-virtual/range {p9 .. p15}, Lorg/pytorch/executorch/LlamaModule;->repl_start(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lorg/pytorch/executorch/LlamaCallback;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    move v2, v14

    move-object v1, v15

    goto/16 :goto_1

    :cond_1
    move-object/from16 v3, p2

    move-object/from16 v1, p9

    move-object/from16 v2, p2

    move-object/from16 v3, p10

    move-object/from16 v4, p11

    move-object/from16 v5, p4

    move-object/from16 v6, p12

    move-object/from16 v7, p5

    move-object/from16 v8, p13

    move-object/from16 v9, p14

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    move/from16 v12, p15

    move/from16 v13, p16

    move/from16 v14, p17

    move/from16 v15, p18

    move/from16 v16, p19

    move/from16 v17, p6

    move/from16 v18, p20

    move/from16 v19, p21

    move/from16 v20, p22

    move/from16 v21, p23

    move-object/from16 v22, p24

    move/from16 v23, p25

    move/from16 v24, p26

    move/from16 v25, p27

    move/from16 v26, p28

    move/from16 v27, p29

    move/from16 v28, p30

    move/from16 v29, p31

    move/from16 v30, p32

    move/from16 v31, p33

    move/from16 v32, p34

    move/from16 v33, p35

    move/from16 v34, p36

    move/from16 v35, p37

    move/from16 v36, p38

    move/from16 v37, p39

    move-object/from16 v38, p0

    .line 298
    :try_start_2
    invoke-static/range {v1 .. v38}, Lcom/layla/jni/LlamaCppJni;->llama_repl_start(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FFFIFIIIZZLjava/lang/String;FFFFIIFFIFFIIIILcom/layla/jni/LlamaCppJni$LlamaCppCallback;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 327
    :goto_0
    invoke-virtual/range {v39 .. v39}, Landroid/os/PowerManager$WakeLock;->release()V

    const/4 v2, 0x1

    move-object/from16 v1, p0

    .line 330
    invoke-virtual {v1, v2}, Lcom/layla/llamacpp/LaylaInferenceService;->stopForeground(Z)V

    .line 331
    invoke-virtual/range {p0 .. p0}, Lcom/layla/llamacpp/LaylaInferenceService;->stopSelf()V

    return-void

    :catchall_1
    move-exception v0

    const/4 v2, 0x1

    move-object/from16 v1, p0

    .line 327
    :goto_1
    invoke-virtual/range {v39 .. v39}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 330
    invoke-virtual {v1, v2}, Lcom/layla/llamacpp/LaylaInferenceService;->stopForeground(Z)V

    .line 331
    invoke-virtual/range {p0 .. p0}, Lcom/layla/llamacpp/LaylaInferenceService;->stopSelf()V

    .line 332
    throw v0
.end method

.method private updateMessageBadge(I)V
    .locals 1

    .line 79
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcom/layla/llamacpp/LaylaInferenceService$2;

    invoke-direct {v0, p0}, Lcom/layla/llamacpp/LaylaInferenceService$2;-><init>(Lcom/layla/llamacpp/LaylaInferenceService;)V

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

    .line 95
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 97
    new-instance v0, Landroid/app/NotificationChannel;

    const-string v1, "Layla Inference Tasks"

    const/4 v2, 0x4

    const-string v3, "com.layla.channels.inference"

    invoke-direct {v0, v3, v1, v2}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 103
    const-class v1, Landroid/app/NotificationManager;

    invoke-virtual {p0, v1}, Lcom/layla/llamacpp/LaylaInferenceService;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 104
    invoke-virtual {v1, v0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 106
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.layla.LlamaCppServiceLifecycle"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 108
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v1

    iget-object v2, p0, Lcom/layla/llamacpp/LaylaInferenceService;->mMessageReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 113
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    iget-object v0, p0, Lcom/layla/llamacpp/LaylaInferenceService;->floatingWidget:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/layla/llamacpp/LaylaInferenceService;->windowManager:Landroid/view/WindowManager;

    .line 114
    invoke-interface {v1, v0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public onResult(Ljava/lang/String;)V
    .locals 2

    .line 350
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onResult: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "layla.executorch"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "REPL_MSG:"

    .line 353
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x9

    .line 355
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "REPL_MSG"

    .line 358
    invoke-virtual {p0, v0, p1}, Lcom/layla/llamacpp/LaylaInferenceService;->sendEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "REPL_ERROR:"

    .line 359
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0xb

    .line 361
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "REPL_ERROR"

    .line 363
    invoke-virtual {p0, v0, p1}, Lcom/layla/llamacpp/LaylaInferenceService;->sendEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "REPL_READY:"

    .line 364
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p1, "REPL_READY"

    const-string v0, ""

    .line 365
    invoke-virtual {p0, p1, v0}, Lcom/layla/llamacpp/LaylaInferenceService;->sendEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v0, "REPL_PROGRESS:"

    .line 366
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0xe

    .line 368
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "REPL_PROGRESS"

    .line 370
    invoke-virtual {p0, v0, p1}, Lcom/layla/llamacpp/LaylaInferenceService;->sendEvent(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 43

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const/4 v2, 0x2

    if-nez v0, :cond_0

    return v2

    :cond_0
    const-string v3, "kill"

    const/4 v7, 0x0

    .line 122
    invoke-virtual {v0, v3, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x0

    const/4 v9, 0x1

    if-lez v3, :cond_2

    .line 124
    invoke-virtual {v1, v9}, Lcom/layla/llamacpp/LaylaInferenceService;->stopForeground(Z)V

    .line 125
    invoke-virtual/range {p0 .. p0}, Lcom/layla/llamacpp/LaylaInferenceService;->stopSelf()V

    iget-object v0, v1, Lcom/layla/llamacpp/LaylaInferenceService;->thread:Ljava/lang/Thread;

    if-eqz v0, :cond_1

    .line 127
    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, v1, Lcom/layla/llamacpp/LaylaInferenceService;->thread:Ljava/lang/Thread;

    .line 129
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    iput-object v4, v1, Lcom/layla/llamacpp/LaylaInferenceService;->thread:Ljava/lang/Thread;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return v2

    .line 140
    :cond_2
    new-instance v3, Landroidx/core/app/NotificationCompat$Builder;

    const-string v5, "com.layla.channels.inference"

    invoke-direct {v3, v1, v5}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-string v5, "Layla is thinking..."

    .line 141
    invoke-virtual {v3, v5}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v3

    const-string v5, "Tap to return to chat"

    .line 142
    invoke-virtual {v3, v5}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v3

    sget v5, Lcom/layla/R$mipmap;->ic_launcher:I

    .line 143
    invoke-virtual {v3, v5}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v3

    .line 144
    invoke-virtual {v3, v2}, Landroidx/core/app/NotificationCompat$Builder;->setPriority(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v3

    .line 147
    new-instance v5, Landroid/content/Intent;

    const-class v6, Lcom/layla/MainActivity;

    invoke-direct {v5, v1, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v6, 0x4000000

    .line 148
    invoke-static {v1, v7, v5, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    .line 149
    invoke-virtual {v3, v5}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    .line 152
    invoke-virtual {v3}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v3

    invoke-virtual {v1, v9, v3}, Lcom/layla/llamacpp/LaylaInferenceService;->startForeground(ILandroid/app/Notification;)V

    iget-object v3, v1, Lcom/layla/llamacpp/LaylaInferenceService;->floatingWidget:Landroid/view/View;

    if-eqz v3, :cond_3

    iget-object v5, v1, Lcom/layla/llamacpp/LaylaInferenceService;->windowManager:Landroid/view/WindowManager;

    .line 156
    invoke-interface {v5, v3}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    :cond_3
    const-string v3, "window"

    .line 157
    invoke-virtual {v1, v3}, Lcom/layla/llamacpp/LaylaInferenceService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    iput-object v3, v1, Lcom/layla/llamacpp/LaylaInferenceService;->windowManager:Landroid/view/WindowManager;

    .line 159
    invoke-static/range {p0 .. p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    sget v5, Lcom/layla/R$layout;->floating_widget_layout:I

    invoke-virtual {v3, v5, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, v1, Lcom/layla/llamacpp/LaylaInferenceService;->floatingWidget:Landroid/view/View;

    const v4, 0x3c23d70a    # 0.01f

    .line 160
    invoke-virtual {v3, v4}, Landroid/view/View;->setAlpha(F)V

    .line 163
    new-instance v3, Landroid/view/WindowManager$LayoutParams;

    const/4 v11, 0x1

    const/4 v12, 0x1

    const/16 v13, 0x7f6

    const/16 v14, 0x8

    const/4 v15, -0x3

    move-object v10, v3

    .line 168
    invoke-direct/range {v10 .. v15}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iput-object v3, v1, Lcom/layla/llamacpp/LaylaInferenceService;->params:Landroid/view/WindowManager$LayoutParams;

    const/16 v4, 0x33

    .line 173
    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget-object v3, v1, Lcom/layla/llamacpp/LaylaInferenceService;->params:Landroid/view/WindowManager$LayoutParams;

    const/16 v4, 0x32

    .line 174
    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v3, v1, Lcom/layla/llamacpp/LaylaInferenceService;->params:Landroid/view/WindowManager$LayoutParams;

    const/16 v4, 0x64

    .line 175
    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v3, v1, Lcom/layla/llamacpp/LaylaInferenceService;->windowManager:Landroid/view/WindowManager;

    iget-object v4, v1, Lcom/layla/llamacpp/LaylaInferenceService;->floatingWidget:Landroid/view/View;

    iget-object v5, v1, Lcom/layla/llamacpp/LaylaInferenceService;->params:Landroid/view/WindowManager$LayoutParams;

    .line 178
    invoke-interface {v3, v4, v5}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, v1, Lcom/layla/llamacpp/LaylaInferenceService;->floatingWidget:Landroid/view/View;

    .line 181
    new-instance v4, Lcom/layla/llamacpp/LaylaInferenceService$3;

    invoke-direct {v4, v1}, Lcom/layla/llamacpp/LaylaInferenceService$3;-><init>(Lcom/layla/llamacpp/LaylaInferenceService;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v3, v1, Lcom/layla/llamacpp/LaylaInferenceService;->thread:Ljava/lang/Thread;

    if-eqz v3, :cond_5

    .line 229
    invoke-virtual {v3}, Ljava/lang/Thread;->isAlive()Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_0

    :cond_4
    move/from16 v41, v9

    goto/16 :goto_1

    :cond_5
    :goto_0
    const-string v3, "logPath"

    .line 231
    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v3, "modelPath"

    .line 232
    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "tokenizerPath"

    .line 233
    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "loraName"

    .line 234
    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v5, "mmprojPath"

    .line 235
    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v5, "prompt"

    .line 236
    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "basePrompt"

    .line 237
    invoke-virtual {v0, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v6, "antiPrompt"

    .line 238
    invoke-virtual {v0, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v8, "inputPrefix"

    .line 239
    invoke-virtual {v0, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v8, "inputSuffix"

    .line 240
    invoke-virtual {v0, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string v8, "sessionFile"

    .line 242
    invoke-virtual {v0, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v7, "promptCacheFile"

    .line 243
    invoke-virtual {v0, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v9, v7

    const-string v7, "temp"

    const/high16 v2, 0x3f800000    # 1.0f

    .line 245
    invoke-virtual {v0, v7, v2}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v16

    const-string v7, "dyntmp_range"

    const/4 v2, 0x0

    .line 246
    invoke-virtual {v0, v7, v2}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v17

    const-string v7, "top_p"

    const/high16 v2, 0x3f800000    # 1.0f

    .line 247
    invoke-virtual {v0, v7, v2}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v18

    const-string v2, "top_k"

    const/16 v7, 0x28

    .line 248
    invoke-virtual {v0, v2, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v19

    const-string v2, "min_p"

    const/4 v7, 0x0

    .line 249
    invoke-virtual {v0, v2, v7}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v20

    const-string v2, "n_ctx"

    const/16 v7, 0x800

    .line 251
    invoke-virtual {v0, v2, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    const/4 v2, 0x0

    const-string v1, "n_threads"

    .line 252
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v21

    const-string v1, "n_batch"

    .line 253
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v22

    const-string v1, "use_flash_attn"

    .line 254
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v23

    const-string v1, "no_mmap"

    .line 255
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v24

    const-string v1, "kv_cache_type_str"

    .line 256
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    const-string v1, "repetition_penalty"

    const v2, 0x3f83d70a    # 1.03f

    .line 258
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v26

    const-string v1, "dry_multiplier"

    const v2, 0x3f4ccccd    # 0.8f

    .line 259
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v27

    const-string v1, "dry_base"

    const/high16 v2, 0x3fe00000    # 1.75f

    .line 260
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v28

    const-string v1, "dry_allowed_length"

    const/4 v2, 0x2

    .line 261
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    int-to-float v1, v1

    move/from16 v29, v1

    const-string v1, "repetition_penalty_range"

    const/16 v2, 0x200

    .line 262
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v30

    const-string v1, "dry_penalty_range"

    const/16 v2, 0x400

    .line 263
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v31

    const-string v1, "xtc_probability"

    const/4 v2, 0x0

    .line 264
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v32

    const-string v1, "xtc_threshold"

    .line 265
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v33

    const-string v1, "mirostat"

    const/4 v2, 0x0

    .line 267
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v34

    const-string v1, "mirostat_tau"

    const/high16 v2, 0x40a00000    # 5.0f

    .line 268
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v35

    const-string v1, "mirostat_eta"

    const v2, 0x3dcccccd    # 0.1f

    .line 269
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v36

    const-string v1, "grp_attn_n"

    const/4 v2, 0x1

    .line 271
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v37

    const-string v1, "grp_attn_w"

    const/16 v2, 0x400

    .line 272
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v38

    const-string v1, "ngl"

    const/4 v2, 0x0

    .line 273
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v39

    const-string v1, "max_response_length"

    const/4 v2, -0x1

    .line 274
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v40

    const-string v1, "use_executorch"

    const/4 v2, 0x0

    .line 276
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    const/16 v41, 0x1

    .line 279
    new-instance v1, Ljava/lang/Thread;

    new-instance v0, Lcom/layla/llamacpp/LaylaInferenceService$$ExternalSyntheticLambda0;

    move-object/from16 p1, v0

    move-object/from16 v42, v1

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v40}, Lcom/layla/llamacpp/LaylaInferenceService$$ExternalSyntheticLambda0;-><init>(Lcom/layla/llamacpp/LaylaInferenceService;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FFFIFIIZZLjava/lang/String;FFFFIIFFIFFIIII)V

    move-object/from16 v1, p1

    move-object/from16 v0, v42

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/layla/llamacpp/LaylaInferenceService;->thread:Ljava/lang/Thread;

    const/16 v2, 0xa

    .line 335
    invoke-virtual {v0, v2}, Ljava/lang/Thread;->setPriority(I)V

    iget-object v0, v1, Lcom/layla/llamacpp/LaylaInferenceService;->thread:Ljava/lang/Thread;

    .line 337
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :goto_1
    return v41
.end method

.method public onStats(F)V
    .locals 0

    return-void
.end method

.method public sendEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 50
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.layla.LlamaCppServiceAction"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "eventName"

    .line 52
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "msg"

    .line 53
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 55
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    const-string p2, "REPL_READY"

    .line 58
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 59
    invoke-direct {p0, p1}, Lcom/layla/llamacpp/LaylaInferenceService;->updateMessageBadge(I)V

    :cond_0
    return-void
.end method
