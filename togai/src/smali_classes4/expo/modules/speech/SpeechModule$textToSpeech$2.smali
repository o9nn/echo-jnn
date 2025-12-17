.class final Lexpo/modules/speech/SpeechModule$textToSpeech$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SpeechModule.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/speech/SpeechModule;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Landroid/speech/tts/TextToSpeech;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "Landroid/speech/tts/TextToSpeech;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lexpo/modules/speech/SpeechModule;


# direct methods
.method public static synthetic $r8$lambda$Pj0SsCi1K9fsaO1tVdeaHAwu52U(Lexpo/modules/speech/SpeechModule;I)V
    .locals 0

    invoke-static {p0, p1}, Lexpo/modules/speech/SpeechModule$textToSpeech$2;->invoke$lambda$1(Lexpo/modules/speech/SpeechModule;I)V

    return-void
.end method

.method constructor <init>(Lexpo/modules/speech/SpeechModule;)V
    .locals 0

    iput-object p1, p0, Lexpo/modules/speech/SpeechModule$textToSpeech$2;->this$0:Lexpo/modules/speech/SpeechModule;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method

.method private static final invoke$lambda$1(Lexpo/modules/speech/SpeechModule;I)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_1

    .line 129
    monitor-enter p0

    const/4 p1, 0x1

    .line 130
    :try_start_0
    invoke-static {p0, p1}, Lexpo/modules/speech/SpeechModule;->access$set_ttsReady$p(Lexpo/modules/speech/SpeechModule;Z)V

    .line 131
    invoke-static {p0}, Lexpo/modules/speech/SpeechModule;->access$get_textToSpeech$p(Lexpo/modules/speech/SpeechModule;)Landroid/speech/tts/TextToSpeech;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v0, Lexpo/modules/speech/SpeechModule$textToSpeech$2$newTtsInstance$1$1$1;

    invoke-direct {v0, p0}, Lexpo/modules/speech/SpeechModule$textToSpeech$2$newTtsInstance$1$1$1;-><init>(Lexpo/modules/speech/SpeechModule;)V

    check-cast v0, Landroid/speech/tts/UtteranceProgressListener;

    invoke-virtual {p1, v0}, Landroid/speech/tts/TextToSpeech;->setOnUtteranceProgressListener(Landroid/speech/tts/UtteranceProgressListener;)I

    .line 160
    invoke-static {p0}, Lexpo/modules/speech/SpeechModule;->access$getDelayedUtterances$p(Lexpo/modules/speech/SpeechModule;)Ljava/util/Queue;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lexpo/modules/speech/SpeechModule$Utterance;

    invoke-virtual {v0}, Lexpo/modules/speech/SpeechModule$Utterance;->component1()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lexpo/modules/speech/SpeechModule$Utterance;->component2()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lexpo/modules/speech/SpeechModule$Utterance;->component3()Lexpo/modules/speech/SpeechOptions;

    move-result-object v0

    .line 161
    invoke-static {p0, v1, v2, v0}, Lexpo/modules/speech/SpeechModule;->access$speakOut(Lexpo/modules/speech/SpeechModule;Ljava/lang/String;Ljava/lang/String;Lexpo/modules/speech/SpeechOptions;)V

    goto :goto_0

    .line 163
    :cond_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 129
    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_1
    :goto_1
    return-void
.end method


# virtual methods
.method public final invoke()Landroid/speech/tts/TextToSpeech;
    .locals 4

    .line 126
    new-instance v0, Landroid/speech/tts/TextToSpeech;

    iget-object v1, p0, Lexpo/modules/speech/SpeechModule$textToSpeech$2;->this$0:Lexpo/modules/speech/SpeechModule;

    invoke-virtual {v1}, Lexpo/modules/speech/SpeechModule;->getAppContext()Lexpo/modules/kotlin/AppContext;

    move-result-object v1

    invoke-virtual {v1}, Lexpo/modules/kotlin/AppContext;->getReactContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lexpo/modules/speech/SpeechModule$textToSpeech$2;->this$0:Lexpo/modules/speech/SpeechModule;

    new-instance v3, Lexpo/modules/speech/SpeechModule$textToSpeech$2$$ExternalSyntheticLambda0;

    invoke-direct {v3, v2}, Lexpo/modules/speech/SpeechModule$textToSpeech$2$$ExternalSyntheticLambda0;-><init>(Lexpo/modules/speech/SpeechModule;)V

    invoke-direct {v0, v1, v3}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V

    iget-object v1, p0, Lexpo/modules/speech/SpeechModule$textToSpeech$2;->this$0:Lexpo/modules/speech/SpeechModule;

    .line 166
    invoke-static {v1, v0}, Lexpo/modules/speech/SpeechModule;->access$set_textToSpeech$p(Lexpo/modules/speech/SpeechModule;Landroid/speech/tts/TextToSpeech;)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 125
    invoke-virtual {p0}, Lexpo/modules/speech/SpeechModule$textToSpeech$2;->invoke()Landroid/speech/tts/TextToSpeech;

    move-result-object v0

    return-object v0
.end method
