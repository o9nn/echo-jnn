.class public Lcom/wenkesj/voice/VoiceModule;
.super Lcom/facebook/react/bridge/ReactContextBaseJavaModule;
.source "VoiceModule.java"

# interfaces
.implements Landroid/speech/RecognitionListener;


# instance fields
.field private isRecognizing:Z

.field private locale:Ljava/lang/String;

.field final reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

.field private speech:Landroid/speech/SpeechRecognizer;


# direct methods
.method static bridge synthetic -$$Nest$fgetspeech(Lcom/wenkesj/voice/VoiceModule;)Landroid/speech/SpeechRecognizer;
    .locals 0

    iget-object p0, p0, Lcom/wenkesj/voice/VoiceModule;->speech:Landroid/speech/SpeechRecognizer;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputisRecognizing(Lcom/wenkesj/voice/VoiceModule;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/wenkesj/voice/VoiceModule;->isRecognizing:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputspeech(Lcom/wenkesj/voice/VoiceModule;Landroid/speech/SpeechRecognizer;)V
    .locals 0

    iput-object p1, p0, Lcom/wenkesj/voice/VoiceModule;->speech:Landroid/speech/SpeechRecognizer;

    return-void
.end method

.method static bridge synthetic -$$Nest$mstartListening(Lcom/wenkesj/voice/VoiceModule;Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/wenkesj/voice/VoiceModule;->startListening(Lcom/facebook/react/bridge/ReadableMap;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstartSpeechWithPermissions(Lcom/wenkesj/voice/VoiceModule;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Callback;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/wenkesj/voice/VoiceModule;->startSpeechWithPermissions(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Callback;)V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V
    .locals 2

    .line 45
    invoke-direct {p0, p1}, Lcom/facebook/react/bridge/ReactContextBaseJavaModule;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/wenkesj/voice/VoiceModule;->speech:Landroid/speech/SpeechRecognizer;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/wenkesj/voice/VoiceModule;->isRecognizing:Z

    iput-object v0, p0, Lcom/wenkesj/voice/VoiceModule;->locale:Ljava/lang/String;

    iput-object p1, p0, Lcom/wenkesj/voice/VoiceModule;->reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    return-void
.end method

.method public static getErrorText(I)Ljava/lang/String;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const-string p0, "Didn\'t understand, please try again."

    goto :goto_0

    :pswitch_0
    const-string p0, "Insufficient permissions"

    goto :goto_0

    :pswitch_1
    const-string p0, "RecognitionService busy"

    goto :goto_0

    :pswitch_2
    const-string p0, "No match"

    goto :goto_0

    :pswitch_3
    const-string p0, "No speech input"

    goto :goto_0

    :pswitch_4
    const-string p0, "Client side error"

    goto :goto_0

    :pswitch_5
    const-string p0, "error from server"

    goto :goto_0

    :pswitch_6
    const-string p0, "Audio recording error"

    goto :goto_0

    :pswitch_7
    const-string p0, "Network error"

    goto :goto_0

    :pswitch_8
    const-string p0, "Network timeout"

    :goto_0
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getLocale(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, ""

    .line 50
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p1

    .line 54
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private isPermissionGranted()Z
    .locals 2

    const-string v0, "android.permission.RECORD_AUDIO"

    .line 265
    invoke-virtual {p0}, Lcom/wenkesj/voice/VoiceModule;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/facebook/react/bridge/ReactApplicationContext;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private sendEvent(Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V
    .locals 2
    .param p2    # Lcom/facebook/react/bridge/WritableMap;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/wenkesj/voice/VoiceModule;->reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    .line 275
    const-class v1, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;

    .line 276
    invoke-virtual {v0, v1}, Lcom/facebook/react/bridge/ReactApplicationContext;->getJSModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/JavaScriptModule;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;

    .line 277
    invoke-interface {v0, p1, p2}, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;->emit(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private startListening(Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 6

    iget-object v0, p0, Lcom/wenkesj/voice/VoiceModule;->speech:Landroid/speech/SpeechRecognizer;

    if-eqz v0, :cond_0

    .line 59
    invoke-virtual {v0}, Landroid/speech/SpeechRecognizer;->destroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/wenkesj/voice/VoiceModule;->speech:Landroid/speech/SpeechRecognizer;

    :cond_0
    const-string v0, "RECOGNIZER_ENGINE"

    .line 63
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 64
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    const-string v1, "GOOGLE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/wenkesj/voice/VoiceModule;->reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    .line 70
    invoke-static {v0}, Landroid/speech/SpeechRecognizer;->createSpeechRecognizer(Landroid/content/Context;)Landroid/speech/SpeechRecognizer;

    move-result-object v0

    iput-object v0, p0, Lcom/wenkesj/voice/VoiceModule;->speech:Landroid/speech/SpeechRecognizer;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/wenkesj/voice/VoiceModule;->reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    const-string v1, "com.google.android.googlequicksearchbox/com.google.android.voicesearch.serviceapi.GoogleRecognitionService"

    .line 66
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/speech/SpeechRecognizer;->createSpeechRecognizer(Landroid/content/Context;Landroid/content/ComponentName;)Landroid/speech/SpeechRecognizer;

    move-result-object v0

    iput-object v0, p0, Lcom/wenkesj/voice/VoiceModule;->speech:Landroid/speech/SpeechRecognizer;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/wenkesj/voice/VoiceModule;->reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    .line 73
    invoke-static {v0}, Landroid/speech/SpeechRecognizer;->createSpeechRecognizer(Landroid/content/Context;)Landroid/speech/SpeechRecognizer;

    move-result-object v0

    iput-object v0, p0, Lcom/wenkesj/voice/VoiceModule;->speech:Landroid/speech/SpeechRecognizer;

    :goto_0
    iget-object v0, p0, Lcom/wenkesj/voice/VoiceModule;->speech:Landroid/speech/SpeechRecognizer;

    .line 76
    invoke-virtual {v0, p0}, Landroid/speech/SpeechRecognizer;->setRecognitionListener(Landroid/speech/RecognitionListener;)V

    .line 78
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.speech.action.RECOGNIZE_SPEECH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 81
    invoke-interface {p1}, Lcom/facebook/react/bridge/ReadableMap;->keySetIterator()Lcom/facebook/react/bridge/ReadableMapKeySetIterator;

    move-result-object v1

    .line 82
    :goto_1
    invoke-interface {v1}, Lcom/facebook/react/bridge/ReadableMapKeySetIterator;->hasNextKey()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 83
    invoke-interface {v1}, Lcom/facebook/react/bridge/ReadableMapKeySetIterator;->nextKey()Ljava/lang/String;

    move-result-object v2

    .line 84
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, -0x1

    sparse-switch v3, :sswitch_data_0

    goto :goto_2

    :sswitch_0
    const-string v3, "EXTRA_PARTIAL_RESULTS"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_2

    :cond_3
    const/4 v4, 0x5

    goto :goto_2

    :sswitch_1
    const-string v3, "EXTRA_SPEECH_INPUT_COMPLETE_SILENCE_LENGTH_MILLIS"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_2

    :cond_4
    const/4 v4, 0x4

    goto :goto_2

    :sswitch_2
    const-string v3, "EXTRA_MAX_RESULTS"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    goto :goto_2

    :cond_5
    const/4 v4, 0x3

    goto :goto_2

    :sswitch_3
    const-string v3, "EXTRA_SPEECH_INPUT_POSSIBLY_COMPLETE_SILENCE_LENGTH_MILLIS"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    goto :goto_2

    :cond_6
    const/4 v4, 0x2

    goto :goto_2

    :sswitch_4
    const-string v3, "EXTRA_SPEECH_INPUT_MINIMUM_LENGTH_MILLIS"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    goto :goto_2

    :cond_7
    const/4 v4, 0x1

    goto :goto_2

    :sswitch_5
    const-string v3, "EXTRA_LANGUAGE_MODEL"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    goto :goto_2

    :cond_8
    const/4 v4, 0x0

    :goto_2
    packed-switch v4, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const-string v3, "android.speech.extra.PARTIAL_RESULTS"

    .line 104
    invoke-interface {p1, v2}, Lcom/facebook/react/bridge/ReadableMap;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_1

    .line 113
    :pswitch_1
    invoke-interface {p1, v2}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const-string v3, "android.speech.extras.SPEECH_INPUT_COMPLETE_SILENCE_LENGTH_MILLIS"

    .line 114
    invoke-virtual {v2}, Ljava/lang/Double;->intValue()I

    move-result v2

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_1

    .line 99
    :pswitch_2
    invoke-interface {p1, v2}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const-string v3, "android.speech.extra.MAX_RESULTS"

    .line 100
    invoke-virtual {v2}, Ljava/lang/Double;->intValue()I

    move-result v2

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_1

    .line 118
    :pswitch_3
    invoke-interface {p1, v2}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const-string v3, "android.speech.extras.SPEECH_INPUT_POSSIBLY_COMPLETE_SILENCE_LENGTH_MILLIS"

    .line 119
    invoke-virtual {v2}, Ljava/lang/Double;->intValue()I

    move-result v2

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_1

    .line 108
    :pswitch_4
    invoke-interface {p1, v2}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const-string v3, "android.speech.extras.SPEECH_INPUT_MINIMUM_LENGTH_MILLIS"

    .line 109
    invoke-virtual {v2}, Ljava/lang/Double;->intValue()I

    move-result v2

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_1

    .line 86
    :pswitch_5
    invoke-interface {p1, v2}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    const-string v3, "LANGUAGE_MODEL_FREE_FORM"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "free_form"

    const-string v5, "android.speech.extra.LANGUAGE_MODEL"

    if-nez v3, :cond_a

    const-string v3, "LANGUAGE_MODEL_WEB_SEARCH"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 94
    invoke-virtual {v0, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_1

    :cond_9
    const-string v2, "web_search"

    .line 91
    invoke-virtual {v0, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_1

    .line 88
    :cond_a
    invoke-virtual {v0, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_1

    :cond_b
    iget-object p1, p0, Lcom/wenkesj/voice/VoiceModule;->locale:Ljava/lang/String;

    .line 125
    invoke-direct {p0, p1}, Lcom/wenkesj/voice/VoiceModule;->getLocale(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "android.speech.extra.LANGUAGE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p1, p0, Lcom/wenkesj/voice/VoiceModule;->speech:Landroid/speech/SpeechRecognizer;

    .line 126
    invoke-virtual {p1, v0}, Landroid/speech/SpeechRecognizer;->startListening(Landroid/content/Intent;)V

    return-void

    :sswitch_data_0
    .sparse-switch
        -0x2fa5846f -> :sswitch_5
        -0x1f9c7ed5 -> :sswitch_4
        -0x820f54e -> :sswitch_3
        0x46e3a60c -> :sswitch_2
        0x4f12da9e -> :sswitch_1
        0x7ad8e4a9 -> :sswitch_0
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

.method private startSpeechWithPermissions(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Callback;)V
    .locals 1

    iput-object p1, p0, Lcom/wenkesj/voice/VoiceModule;->locale:Ljava/lang/String;

    .line 132
    new-instance p1, Landroid/os/Handler;

    iget-object v0, p0, Lcom/wenkesj/voice/VoiceModule;->reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    invoke-virtual {v0}, Lcom/facebook/react/bridge/ReactApplicationContext;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 133
    new-instance v0, Lcom/wenkesj/voice/VoiceModule$1;

    invoke-direct {v0, p0, p2, p3}, Lcom/wenkesj/voice/VoiceModule$1;-><init>(Lcom/wenkesj/voice/VoiceModule;Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Callback;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public cancelSpeech(Lcom/facebook/react/bridge/Callback;)V
    .locals 2
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 197
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/wenkesj/voice/VoiceModule;->reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    invoke-virtual {v1}, Lcom/facebook/react/bridge/ReactApplicationContext;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 198
    new-instance v1, Lcom/wenkesj/voice/VoiceModule$4;

    invoke-direct {v1, p0, p1}, Lcom/wenkesj/voice/VoiceModule$4;-><init>(Lcom/wenkesj/voice/VoiceModule;Lcom/facebook/react/bridge/Callback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public destroySpeech(Lcom/facebook/react/bridge/Callback;)V
    .locals 2
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 216
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/wenkesj/voice/VoiceModule;->reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    invoke-virtual {v1}, Lcom/facebook/react/bridge/ReactApplicationContext;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 217
    new-instance v1, Lcom/wenkesj/voice/VoiceModule$5;

    invoke-direct {v1, p0, p1}, Lcom/wenkesj/voice/VoiceModule$5;-><init>(Lcom/wenkesj/voice/VoiceModule;Lcom/facebook/react/bridge/Callback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "RCTVoice"

    return-object v0
.end method

.method public getSpeechRecognitionServices(Lcom/facebook/react/bridge/Promise;)V
    .locals 3
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    iget-object v0, p0, Lcom/wenkesj/voice/VoiceModule;->reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    .line 253
    invoke-virtual {v0}, Lcom/facebook/react/bridge/ReactApplicationContext;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.speech.RecognitionService"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 254
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 255
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createArray()Lcom/facebook/react/bridge/WritableArray;

    move-result-object v1

    .line 256
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 257
    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/facebook/react/bridge/WritableArray;->pushString(Ljava/lang/String;)V

    goto :goto_0

    .line 260
    :cond_0
    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    return-void
.end method

.method public isRecognizing(Lcom/facebook/react/bridge/Callback;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    iget-boolean v0, p0, Lcom/wenkesj/voice/VoiceModule;->isRecognizing:Z

    .line 271
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    return-void
.end method

.method public isSpeechAvailable(Lcom/facebook/react/bridge/Callback;)V
    .locals 2
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 237
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/wenkesj/voice/VoiceModule;->reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    invoke-virtual {v1}, Lcom/facebook/react/bridge/ReactApplicationContext;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 238
    new-instance v1, Lcom/wenkesj/voice/VoiceModule$6;

    invoke-direct {v1, p0, p0, p1}, Lcom/wenkesj/voice/VoiceModule$6;-><init>(Lcom/wenkesj/voice/VoiceModule;Lcom/wenkesj/voice/VoiceModule;Lcom/facebook/react/bridge/Callback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onBeginningOfSpeech()V
    .locals 3

    .line 282
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    const-string v1, "error"

    const/4 v2, 0x0

    .line 283
    invoke-interface {v0, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "onSpeechStart"

    .line 284
    invoke-direct {p0, v1, v0}, Lcom/wenkesj/voice/VoiceModule;->sendEvent(Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    const-string v0, "ASR"

    const-string v1, "onBeginningOfSpeech()"

    .line 285
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onBufferReceived([B)V
    .locals 2

    .line 290
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object p1

    const-string v0, "error"

    const/4 v1, 0x0

    .line 291
    invoke-interface {p1, v0, v1}, Lcom/facebook/react/bridge/WritableMap;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "onSpeechRecognized"

    .line 292
    invoke-direct {p0, v0, p1}, Lcom/wenkesj/voice/VoiceModule;->sendEvent(Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    const-string p1, "ASR"

    const-string v0, "onBufferReceived()"

    .line 293
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onEndOfSpeech()V
    .locals 3

    .line 298
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    const-string v1, "error"

    const/4 v2, 0x0

    .line 299
    invoke-interface {v0, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "onSpeechEnd"

    .line 300
    invoke-direct {p0, v1, v0}, Lcom/wenkesj/voice/VoiceModule;->sendEvent(Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    const-string v0, "ASR"

    const-string v1, "onEndOfSpeech()"

    .line 301
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v2, p0, Lcom/wenkesj/voice/VoiceModule;->isRecognizing:Z

    return-void
.end method

.method public onError(I)V
    .locals 3

    .line 307
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1}, Lcom/wenkesj/voice/VoiceModule;->getErrorText(I)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "%d/%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 308
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v1

    const-string v2, "message"

    .line 309
    invoke-interface {v1, v2, v0}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "code"

    .line 310
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, v2, p1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object p1

    const-string v2, "error"

    .line 312
    invoke-interface {p1, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putMap(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)V

    const-string v1, "onSpeechError"

    .line 313
    invoke-direct {p0, v1, p1}, Lcom/wenkesj/voice/VoiceModule;->sendEvent(Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    .line 314
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "onError() - "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ASR"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onEvent(ILandroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onPartialResults(Landroid/os/Bundle;)V
    .locals 2

    .line 322
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createArray()Lcom/facebook/react/bridge/WritableArray;

    move-result-object v0

    const-string v1, "results_recognition"

    .line 324
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    .line 325
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 326
    invoke-interface {v0, v1}, Lcom/facebook/react/bridge/WritableArray;->pushString(Ljava/lang/String;)V

    goto :goto_0

    .line 329
    :cond_0
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object p1

    const-string v1, "value"

    .line 330
    invoke-interface {p1, v1, v0}, Lcom/facebook/react/bridge/WritableMap;->putArray(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;)V

    const-string v0, "onSpeechPartialResults"

    .line 331
    invoke-direct {p0, v0, p1}, Lcom/wenkesj/voice/VoiceModule;->sendEvent(Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    const-string p1, "ASR"

    const-string v0, "onPartialResults()"

    .line 332
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onReadyForSpeech(Landroid/os/Bundle;)V
    .locals 2

    .line 337
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object p1

    const-string v0, "error"

    const/4 v1, 0x0

    .line 338
    invoke-interface {p1, v0, v1}, Lcom/facebook/react/bridge/WritableMap;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "onSpeechStart"

    .line 339
    invoke-direct {p0, v0, p1}, Lcom/wenkesj/voice/VoiceModule;->sendEvent(Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    const-string p1, "ASR"

    const-string v0, "onReadyForSpeech()"

    .line 340
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onResults(Landroid/os/Bundle;)V
    .locals 2

    .line 345
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createArray()Lcom/facebook/react/bridge/WritableArray;

    move-result-object v0

    const-string v1, "results_recognition"

    .line 347
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    .line 348
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 349
    invoke-interface {v0, v1}, Lcom/facebook/react/bridge/WritableArray;->pushString(Ljava/lang/String;)V

    goto :goto_0

    .line 352
    :cond_0
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object p1

    const-string v1, "value"

    .line 353
    invoke-interface {p1, v1, v0}, Lcom/facebook/react/bridge/WritableMap;->putArray(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;)V

    const-string v0, "onSpeechResults"

    .line 354
    invoke-direct {p0, v0, p1}, Lcom/wenkesj/voice/VoiceModule;->sendEvent(Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    const-string p1, "ASR"

    const-string v0, "onResults()"

    .line 355
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onRmsChanged(F)V
    .locals 4

    .line 360
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    const-string v1, "value"

    float-to-double v2, p1

    .line 361
    invoke-interface {v0, v1, v2, v3}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    const-string p1, "onSpeechVolumeChanged"

    .line 362
    invoke-direct {p0, p1, v0}, Lcom/wenkesj/voice/VoiceModule;->sendEvent(Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    return-void
.end method

.method public startSpeech(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Callback;)V
    .locals 3
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 154
    invoke-direct {p0}, Lcom/wenkesj/voice/VoiceModule;->isPermissionGranted()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "REQUEST_PERMISSIONS_AUTO"

    invoke-interface {p2, v0}, Lcom/facebook/react/bridge/ReadableMap;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "android.permission.RECORD_AUDIO"

    .line 155
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 156
    invoke-virtual {p0}, Lcom/wenkesj/voice/VoiceModule;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 157
    invoke-virtual {p0}, Lcom/wenkesj/voice/VoiceModule;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/facebook/react/modules/core/PermissionAwareActivity;

    new-instance v2, Lcom/wenkesj/voice/VoiceModule$2;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/wenkesj/voice/VoiceModule$2;-><init>(Lcom/wenkesj/voice/VoiceModule;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Callback;)V

    const/4 p1, 0x1

    invoke-interface {v1, v0, p1, v2}, Lcom/facebook/react/modules/core/PermissionAwareActivity;->requestPermissions([Ljava/lang/String;ILcom/facebook/react/modules/core/PermissionListener;)V

    :cond_0
    return-void

    .line 173
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/wenkesj/voice/VoiceModule;->startSpeechWithPermissions(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Callback;)V

    return-void
.end method

.method public stopSpeech(Lcom/facebook/react/bridge/Callback;)V
    .locals 2
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 178
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/wenkesj/voice/VoiceModule;->reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    invoke-virtual {v1}, Lcom/facebook/react/bridge/ReactApplicationContext;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 179
    new-instance v1, Lcom/wenkesj/voice/VoiceModule$3;

    invoke-direct {v1, p0, p1}, Lcom/wenkesj/voice/VoiceModule$3;-><init>(Lcom/wenkesj/voice/VoiceModule;Lcom/facebook/react/bridge/Callback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
