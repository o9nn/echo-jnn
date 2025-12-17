.class public Lcom/layla/llamacpp/LlamaCpp;
.super Lcom/facebook/react/bridge/ReactContextBaseJavaModule;
.source "LlamaCpp.java"

# interfaces
.implements Lcom/layla/jni/LlamaCppJni$LlamaCppCallback;


# instance fields
.field private listenerCount:I

.field private mMessageReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public static synthetic $r8$lambda$2fg2GTuFla23MkUGD8KNiBbfXew(Lcom/layla/llamacpp/LlamaCpp;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FFFFII)V
    .locals 0

    invoke-direct/range {p0 .. p13}, Lcom/layla/llamacpp/LlamaCpp;->lambda$infer$1(Ljava/lang/String;Lcom/facebook/react/bridge/Promise;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FFFFII)V

    return-void
.end method

.method public static synthetic $r8$lambda$y8BQeaEu2IVAc6XsT4ZVbHCIjLk(Lcom/layla/llamacpp/LlamaCpp;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FFFIFIIIZZLjava/lang/String;FFFFIIFFIFFIIII)V
    .locals 0

    invoke-direct/range {p0 .. p38}, Lcom/layla/llamacpp/LlamaCpp;->lambda$repl_start$0(Ljava/lang/String;Lcom/facebook/react/bridge/Promise;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FFFIFIIIZZLjava/lang/String;FFFFIIFFIFFIIII)V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lcom/facebook/react/bridge/ReactContextBaseJavaModule;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/layla/llamacpp/LlamaCpp;->listenerCount:I

    .line 48
    new-instance p1, Lcom/layla/llamacpp/LlamaCpp$1;

    invoke-direct {p1, p0}, Lcom/layla/llamacpp/LlamaCpp$1;-><init>(Lcom/layla/llamacpp/LlamaCpp;)V

    iput-object p1, p0, Lcom/layla/llamacpp/LlamaCpp;->mMessageReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private synthetic lambda$infer$1(Ljava/lang/String;Lcom/facebook/react/bridge/Promise;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FFFFII)V
    .locals 16

    move-object/from16 v1, p2

    const-string v0, ""

    :try_start_0
    const-string v2, "content://"

    move-object/from16 v3, p1

    .line 171
    invoke-virtual {v3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v2, :cond_0

    .line 173
    :try_start_1
    invoke-static/range {p1 .. p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 174
    invoke-virtual/range {p0 .. p0}, Lcom/layla/llamacpp/LlamaCpp;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/react/bridge/ReactApplicationContext;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "r"

    invoke-virtual {v3, v2, v4}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    .line 175
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v3, v0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    const-string v2, "ERROR"

    .line 177
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    :goto_0
    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    move/from16 v13, p12

    move/from16 v14, p13

    move-object/from16 v15, p0

    .line 182
    invoke-static/range {v3 .. v15}, Lcom/layla/jni/LlamaCppJni;->llama_infer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FFFFIILcom/layla/jni/LlamaCppJni$LlamaCppCallback;)Ljava/lang/String;

    move-result-object v0

    .line 197
    invoke-interface {v1, v0}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v2, "Error"

    .line 199
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method static synthetic lambda$llamaBackendInit$2(Ljava/lang/String;ZLcom/facebook/react/bridge/Promise;)V
    .locals 0

    .line 313
    :try_start_0
    invoke-static {p0, p1}, Lcom/layla/jni/LlamaCppJni;->llama_init(Ljava/lang/String;Z)V

    const/4 p0, 0x0

    .line 314
    invoke-interface {p2, p0}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "Error"

    .line 316
    invoke-interface {p2, p1, p0}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$repl_start$0(Ljava/lang/String;Lcom/facebook/react/bridge/Promise;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FFFIFIIIZZLjava/lang/String;FFFFIIFFIFFIIII)V
    .locals 41

    move-object/from16 v1, p2

    const-string v0, ""

    const-string v2, "content://"

    move-object/from16 v3, p1

    .line 100
    invoke-virtual {v3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 102
    :try_start_0
    invoke-static/range {p1 .. p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 103
    invoke-virtual/range {p0 .. p0}, Lcom/layla/llamacpp/LlamaCpp;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/react/bridge/ReactApplicationContext;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "r"

    invoke-virtual {v3, v2, v4}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    .line 104
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "ERROR"

    .line 106
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    move-object v4, v3

    :goto_0
    const/4 v0, 0x0

    .line 112
    invoke-interface {v1, v0}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    move-object/from16 v3, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move/from16 v14, p13

    move/from16 v15, p14

    move/from16 v16, p15

    move/from16 v17, p16

    move/from16 v18, p17

    move/from16 v19, p18

    move/from16 v20, p19

    move/from16 v21, p20

    move/from16 v22, p21

    move/from16 v23, p22

    move-object/from16 v24, p23

    move/from16 v25, p24

    move/from16 v26, p25

    move/from16 v27, p26

    move/from16 v28, p27

    move/from16 v29, p28

    move/from16 v30, p29

    move/from16 v31, p30

    move/from16 v32, p31

    move/from16 v33, p32

    move/from16 v34, p33

    move/from16 v35, p34

    move/from16 v36, p35

    move/from16 v37, p36

    move/from16 v38, p37

    move/from16 v39, p38

    move-object/from16 v40, p0

    .line 115
    invoke-static/range {v3 .. v40}, Lcom/layla/jni/LlamaCppJni;->llama_repl_start(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FFFIFIIIZZLjava/lang/String;FFFFIIFFIFFIIIILcom/layla/jni/LlamaCppJni$LlamaCppCallback;)V

    return-void
.end method


# virtual methods
.method public addListener(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    iget p1, p0, Lcom/layla/llamacpp/LlamaCpp;->listenerCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/layla/llamacpp/LlamaCpp;->listenerCount:I

    return-void
.end method

.method public describe_img(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 216
    :try_start_0
    invoke-static {p1, p2, p3}, Lcom/layla/jni/LlamaCppJni;->llama_describe_img(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 217
    invoke-interface {p4, p1}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "Error"

    .line 219
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p4, p2, p1}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "LlamaCpp"

    return-object v0
.end method

.method public getNumberOfCPUCores(Lcom/facebook/react/bridge/Promise;)V
    .locals 2
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 297
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    .line 298
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Error"

    .line 300
    invoke-interface {p1, v1, v0}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public infer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FFFFIILcom/facebook/react/bridge/Promise;)V
    .locals 17
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 166
    new-instance v0, Ljava/lang/Thread;

    new-instance v15, Lcom/layla/llamacpp/LlamaCpp$$ExternalSyntheticLambda0;

    move-object v1, v15

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p13

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    move/from16 v12, p9

    move/from16 v13, p10

    move/from16 v14, p11

    move-object/from16 v16, v15

    move/from16 v15, p12

    invoke-direct/range {v1 .. v15}, Lcom/layla/llamacpp/LlamaCpp$$ExternalSyntheticLambda0;-><init>(Lcom/layla/llamacpp/LlamaCpp;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FFFFII)V

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    const/16 v1, 0xa

    .line 203
    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 205
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public initialize()V
    .locals 3

    .line 60
    invoke-super {p0}, Lcom/facebook/react/bridge/ReactContextBaseJavaModule;->initialize()V

    .line 62
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.layla.LlamaCppServiceAction"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p0}, Lcom/layla/llamacpp/LlamaCpp;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v1

    invoke-static {v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v1

    iget-object v2, p0, Lcom/layla/llamacpp/LlamaCpp;->mMessageReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method public isAppearOnTopGranted(Lcom/facebook/react/bridge/Promise;)V
    .locals 2
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 436
    invoke-virtual {p0}, Lcom/layla/llamacpp/LlamaCpp;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v0

    invoke-static {v0}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 437
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string v0, "Error"

    const-string v1, "MISSING_PERMISSION"

    .line 438
    invoke-interface {p1, v0, v1}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method isCPUDotProdSupported(Lcom/facebook/react/bridge/Promise;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 446
    invoke-static {}, Lcom/layla/jni/LlamaCppJni;->isCPUDotProdSupported()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    return-void
.end method

.method isCPUi8mmSupported(Lcom/facebook/react/bridge/Promise;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 442
    invoke-static {}, Lcom/layla/jni/LlamaCppJni;->isCPUi8mmSupported()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    return-void
.end method

.method public killReplWidget(Lcom/facebook/react/bridge/Promise;)V
    .locals 5
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 417
    invoke-virtual {p0}, Lcom/layla/llamacpp/LlamaCpp;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v0

    invoke-static {v0}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    .line 430
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v0, :cond_0

    .line 418
    new-instance v0, Landroid/content/Intent;

    .line 419
    invoke-virtual {p0}, Lcom/layla/llamacpp/LlamaCpp;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v3

    const-class v4, Lcom/layla/llamacpp/LaylaInferenceService;

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "kill"

    .line 423
    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 425
    invoke-virtual {p0}, Lcom/layla/llamacpp/LlamaCpp;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/facebook/react/bridge/ReactApplicationContext;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 427
    invoke-interface {p1, v2}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    goto :goto_0

    .line 430
    :cond_0
    invoke-interface {p1, v2}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public llamaBackendInit(Ljava/lang/String;ZLcom/facebook/react/bridge/Promise;)V
    .locals 2
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 311
    :try_start_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/layla/llamacpp/LlamaCpp$$ExternalSyntheticLambda2;

    invoke-direct {v1, p1, p2, p3}, Lcom/layla/llamacpp/LlamaCpp$$ExternalSyntheticLambda2;-><init>(Ljava/lang/String;ZLcom/facebook/react/bridge/Promise;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    const/16 p1, 0xa

    .line 319
    invoke-virtual {v0, p1}, Ljava/lang/Thread;->setPriority(I)V

    .line 321
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "Error"

    .line 323
    invoke-interface {p3, p2, p1}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public removeListeners(Ljava/lang/Integer;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    iget v0, p0, Lcom/layla/llamacpp/LlamaCpp;->listenerCount:I

    .line 247
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/layla/llamacpp/LlamaCpp;->listenerCount:I

    return-void
.end method

.method public repl_send_msg(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 225
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-static {p1, p2, p3, p4, p5}, Lcom/layla/jni/LlamaCppJni;->llama_repl_send_msg([BILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public repl_start(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FFFIFIIIZZLjava/lang/String;FFFFIIFFIFFIIIILcom/facebook/react/bridge/Promise;)V
    .locals 43
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v4, p1

    move-object/from16 v2, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move-object/from16 v12, p10

    move-object/from16 v13, p11

    move/from16 v14, p12

    move/from16 v15, p13

    move/from16 v16, p14

    move/from16 v17, p15

    move/from16 v18, p16

    move/from16 v19, p17

    move/from16 v20, p18

    move/from16 v21, p19

    move/from16 v22, p20

    move/from16 v23, p21

    move-object/from16 v24, p22

    move/from16 v25, p23

    move/from16 v26, p24

    move/from16 v27, p25

    move/from16 v28, p26

    move/from16 v29, p27

    move/from16 v30, p28

    move/from16 v31, p29

    move/from16 v32, p30

    move/from16 v33, p31

    move/from16 v34, p32

    move/from16 v35, p33

    move/from16 v36, p34

    move/from16 v37, p35

    move/from16 v38, p36

    move/from16 v39, p37

    move-object/from16 v3, p38

    .line 96
    new-instance v0, Ljava/lang/Thread;

    move-object/from16 v40, v1

    new-instance v1, Lcom/layla/llamacpp/LlamaCpp$$ExternalSyntheticLambda1;

    move-object/from16 v41, v0

    move-object v0, v1

    move-object/from16 v42, v1

    move-object/from16 v1, v40

    invoke-direct/range {v0 .. v39}, Lcom/layla/llamacpp/LlamaCpp$$ExternalSyntheticLambda1;-><init>(Lcom/layla/llamacpp/LlamaCpp;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FFFIFIIIZZLjava/lang/String;FFFFIIFFIFFIIII)V

    move-object/from16 v0, v41

    move-object/from16 v1, v42

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    const/16 v1, 0xa

    .line 145
    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 147
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public save_model_from_content_uri(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 5
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    const/4 v0, 0x0

    .line 262
    :try_start_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 264
    invoke-virtual {p0}, Lcom/layla/llamacpp/LlamaCpp;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/react/bridge/ReactApplicationContext;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 266
    :try_start_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 267
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p2

    if-nez p2, :cond_0

    .line 268
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p2

    invoke-virtual {p2}, Ljava/io/File;->mkdirs()Z

    .line 270
    :cond_0
    new-instance p2, Ljava/io/FileOutputStream;

    invoke-direct {p2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/16 v0, 0x400

    :try_start_2
    new-array v0, v0, [B

    .line 275
    :goto_0
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-lez v2, :cond_1

    const/4 v3, 0x0

    .line 276
    invoke-virtual {p2, v0, v3, v2}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_0

    .line 280
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, v0}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p1, :cond_2

    .line 286
    :try_start_3
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 287
    :cond_2
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_4

    :catchall_0
    move-exception p3

    move-object v0, p1

    move-object p1, p2

    move-object p2, p3

    goto :goto_5

    :catch_0
    move-exception v0

    move-object v4, v0

    move-object v0, p1

    move-object p1, p2

    move-object p2, v4

    goto :goto_1

    :catchall_1
    move-exception p2

    move-object v4, v0

    move-object v0, p1

    move-object p1, v4

    goto :goto_5

    :catch_1
    move-exception p2

    move-object v4, v0

    move-object v0, p1

    move-object p1, v4

    goto :goto_1

    :catchall_2
    move-exception p2

    move-object p1, v0

    goto :goto_5

    :catch_2
    move-exception p2

    move-object p1, v0

    .line 282
    :goto_1
    :try_start_4
    invoke-interface {p3, p2}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    if-eqz v0, :cond_3

    .line 286
    :try_start_5
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    goto :goto_2

    :catch_3
    move-exception p1

    goto :goto_3

    :cond_3
    :goto_2
    if-eqz p1, :cond_4

    .line 287
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_4

    .line 289
    :goto_3
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_4
    :goto_4
    return-void

    :catchall_3
    move-exception p2

    :goto_5
    if-eqz v0, :cond_5

    .line 286
    :try_start_6
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    goto :goto_6

    :catch_4
    move-exception p1

    goto :goto_7

    :cond_5
    :goto_6
    if-eqz p1, :cond_6

    .line 287
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_8

    .line 289
    :goto_7
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 291
    :cond_6
    :goto_8
    throw p2
.end method

.method public sendEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 229
    invoke-virtual {p0}, Lcom/layla/llamacpp/LlamaCpp;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v0

    .line 231
    const-class v1, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;

    .line 232
    invoke-virtual {v0, v1}, Lcom/facebook/react/bridge/ReactContext;->getJSModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/JavaScriptModule;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;

    .line 233
    invoke-interface {v0, p1, p2}, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;->emit(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public startReplWidget(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FFFIFIIIZZLjava/lang/String;FFFIIIFFIFFIIIILcom/facebook/react/bridge/Promise;)V
    .locals 4
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    move-object/from16 v0, p38

    .line 355
    invoke-virtual {p0}, Lcom/layla/llamacpp/LlamaCpp;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v1

    invoke-static {v1}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 356
    new-instance v1, Landroid/content/Intent;

    .line 357
    invoke-virtual {p0}, Lcom/layla/llamacpp/LlamaCpp;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v2

    const-class v3, Lcom/layla/llamacpp/LaylaInferenceService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "logPath"

    move-object v3, p1

    .line 361
    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "modelPath"

    move-object v3, p2

    .line 362
    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "loraName"

    move-object v3, p3

    .line 363
    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "mmprojPath"

    move-object v3, p4

    .line 364
    invoke-virtual {v1, v2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "prompt"

    move-object v3, p5

    .line 365
    invoke-virtual {v1, v2, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "basePrompt"

    move-object v3, p6

    .line 366
    invoke-virtual {v1, v2, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "antiPrompt"

    move-object v3, p7

    .line 367
    invoke-virtual {v1, v2, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "inputPrefix"

    move-object v3, p8

    .line 368
    invoke-virtual {v1, v2, p8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "inputSuffix"

    move-object v3, p9

    .line 369
    invoke-virtual {v1, v2, p9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "sessionFile"

    move-object v3, p10

    .line 370
    invoke-virtual {v1, v2, p10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "promptCacheFile"

    move-object v3, p11

    .line 371
    invoke-virtual {v1, v2, p11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "temp"

    move/from16 v3, p12

    .line 374
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    const-string v2, "dyntmp_range"

    move/from16 v3, p13

    .line 375
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    const-string v2, "top_p"

    move/from16 v3, p14

    .line 376
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    const-string v2, "top_k"

    move/from16 v3, p15

    .line 377
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "min_p"

    move/from16 v3, p16

    .line 378
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    const-string v2, "n_ctx"

    move/from16 v3, p17

    .line 381
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "n_threads"

    move/from16 v3, p18

    .line 382
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "n_batch"

    move/from16 v3, p19

    .line 383
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "use_flash_attn"

    move/from16 v3, p20

    .line 384
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v2, "no_mmap"

    move/from16 v3, p21

    .line 385
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v2, "kv_cache_type_str"

    move-object/from16 v3, p22

    .line 386
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "repetition_penalty"

    move/from16 v3, p23

    .line 389
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    const-string v2, "dry_multiplier"

    move/from16 v3, p24

    .line 390
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    const-string v2, "dry_base"

    move/from16 v3, p25

    .line 391
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    const-string v2, "dry_allowed_length"

    move/from16 v3, p26

    .line 392
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "repetition_penalty_range"

    move/from16 v3, p27

    .line 393
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "dry_penalty_range"

    move/from16 v3, p28

    .line 394
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "xtc_probability"

    move/from16 v3, p29

    .line 395
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    const-string v2, "xtc_threshold"

    move/from16 v3, p30

    .line 396
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    const-string v2, "mirostat"

    move/from16 v3, p31

    .line 398
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "mirostat_tau"

    move/from16 v3, p32

    .line 399
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    const-string v2, "mirostat_eta"

    move/from16 v3, p33

    .line 400
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    const-string v2, "grp_attn_n"

    move/from16 v3, p34

    .line 402
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "grp_attn_w"

    move/from16 v3, p35

    .line 403
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "ngl"

    move/from16 v3, p36

    .line 404
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "max_response_length"

    move/from16 v3, p37

    .line 405
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 407
    invoke-virtual {p0}, Lcom/layla/llamacpp/LlamaCpp;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/facebook/react/bridge/ReactApplicationContext;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    const/4 v1, 0x1

    .line 409
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string v1, "Error"

    const-string v2, "MISSING_PERMISSION"

    .line 411
    invoke-interface {v0, v1, v2}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
