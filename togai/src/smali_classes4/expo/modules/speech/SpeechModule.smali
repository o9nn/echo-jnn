.class public final Lexpo/modules/speech/SpeechModule;
.super Lexpo/modules/kotlin/modules/Module;
.source "SpeechModule.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lexpo/modules/speech/SpeechModule$Utterance;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSpeechModule.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SpeechModule.kt\nexpo/modules/speech/SpeechModule\n+ 2 Module.kt\nexpo/modules/kotlin/modules/ModuleKt\n+ 3 ExpoTrace.kt\nexpo/modules/kotlin/tracing/ExpoTraceKt\n+ 4 Trace.kt\nandroidx/tracing/TraceKt\n+ 5 ModuleDefinitionBuilder.kt\nexpo/modules/kotlin/modules/ModuleDefinitionBuilder\n+ 6 ObjectDefinitionBuilder.kt\nexpo/modules/kotlin/objects/ObjectDefinitionBuilder\n+ 7 ArrayIntrinsics.kt\nkotlin/ArrayIntrinsicsKt\n+ 8 AsyncFunctionComponent.kt\nexpo/modules/kotlin/functions/AsyncFunctionComponentKt\n+ 9 EnforceType.kt\nexpo/modules/kotlin/types/EnforceTypeKt\n+ 10 AnyType.kt\nexpo/modules/kotlin/types/AnyTypeKt\n+ 11 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 12 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,185:1\n70#2:186\n14#3:187\n25#3:188\n27#4,3:189\n31#4:359\n110#5,2:192\n206#6:194\n207#6,2:225\n206#6:227\n207#6,2:258\n206#6:260\n207#6,2:291\n257#6:293\n260#6,3:356\n26#7:195\n26#7:228\n26#7:261\n15#8,6:196\n21#8,19:206\n15#8,6:229\n21#8,19:239\n15#8,6:262\n21#8,19:272\n15#8,6:327\n21#8,19:337\n8#9,4:202\n8#9,4:235\n8#9,4:268\n8#9,4:333\n80#10,7:294\n56#10:301\n47#10,7:302\n87#10:309\n56#10:310\n47#10,7:311\n88#10:318\n56#10:319\n47#10,7:320\n1#11:360\n288#12,2:361\n*S KotlinDebug\n*F\n+ 1 SpeechModule.kt\nexpo/modules/speech/SpeechModule\n*L\n23#1:186\n23#1:187\n23#1:188\n23#1:189,3\n23#1:359\n36#1:192,2\n40#1:194\n40#1:225,2\n44#1:227\n44#1:258,2\n67#1:260\n67#1:291,2\n71#1:293\n71#1:356,3\n40#1:195\n44#1:228\n67#1:261\n40#1:196,6\n40#1:206,19\n44#1:229,6\n44#1:239,19\n67#1:262,6\n67#1:272,19\n71#1:327,6\n71#1:337,19\n40#1:202,4\n44#1:235,4\n67#1:268,4\n71#1:333,4\n71#1:294,7\n71#1:301\n71#1:302,7\n71#1:309\n71#1:310\n71#1:311,7\n71#1:318\n71#1:319\n71#1:320,7\n108#1:361,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001:\u0001\u001cB\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0011\u001a\u00020\u0012H\u0016J\u0010\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0016H\u0002J \u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0019\u001a\u00020\u00162\u0006\u0010\u001a\u001a\u00020\u001bH\u0002R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\u00020\u00068BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\n\u0010\u000bR\u001b\u0010\u000c\u001a\u00020\u00048BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000f\u0010\u0010\u001a\u0004\u0008\r\u0010\u000e\u00a8\u0006\u001d"
    }
    d2 = {
        "Lexpo/modules/speech/SpeechModule;",
        "Lexpo/modules/kotlin/modules/Module;",
        "()V",
        "_textToSpeech",
        "Landroid/speech/tts/TextToSpeech;",
        "_ttsReady",
        "",
        "delayedUtterances",
        "Ljava/util/Queue;",
        "Lexpo/modules/speech/SpeechModule$Utterance;",
        "isTextToSpeechReady",
        "()Z",
        "textToSpeech",
        "getTextToSpeech",
        "()Landroid/speech/tts/TextToSpeech;",
        "textToSpeech$delegate",
        "Lkotlin/Lazy;",
        "definition",
        "Lexpo/modules/kotlin/modules/ModuleDefinitionData;",
        "idToMap",
        "Landroid/os/Bundle;",
        "id",
        "",
        "speakOut",
        "",
        "text",
        "options",
        "Lexpo/modules/speech/SpeechOptions;",
        "Utterance",
        "expo-speech_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private _textToSpeech:Landroid/speech/tts/TextToSpeech;

.field private _ttsReady:Z

.field private final delayedUtterances:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lexpo/modules/speech/SpeechModule$Utterance;",
            ">;"
        }
    .end annotation
.end field

.field private final textToSpeech$delegate:Lkotlin/Lazy;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Lexpo/modules/kotlin/modules/Module;-><init>()V

    .line 21
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    check-cast v0, Ljava/util/Queue;

    iput-object v0, p0, Lexpo/modules/speech/SpeechModule;->delayedUtterances:Ljava/util/Queue;

    .line 125
    new-instance v0, Lexpo/modules/speech/SpeechModule$textToSpeech$2;

    invoke-direct {v0, p0}, Lexpo/modules/speech/SpeechModule$textToSpeech$2;-><init>(Lexpo/modules/speech/SpeechModule;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lexpo/modules/speech/SpeechModule;->textToSpeech$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$getDelayedUtterances$p(Lexpo/modules/speech/SpeechModule;)Ljava/util/Queue;
    .locals 0

    .line 20
    iget-object p0, p0, Lexpo/modules/speech/SpeechModule;->delayedUtterances:Ljava/util/Queue;

    return-object p0
.end method

.method public static final synthetic access$getTextToSpeech(Lexpo/modules/speech/SpeechModule;)Landroid/speech/tts/TextToSpeech;
    .locals 0

    .line 20
    invoke-direct {p0}, Lexpo/modules/speech/SpeechModule;->getTextToSpeech()Landroid/speech/tts/TextToSpeech;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$get_textToSpeech$p(Lexpo/modules/speech/SpeechModule;)Landroid/speech/tts/TextToSpeech;
    .locals 0

    .line 20
    iget-object p0, p0, Lexpo/modules/speech/SpeechModule;->_textToSpeech:Landroid/speech/tts/TextToSpeech;

    return-object p0
.end method

.method public static final synthetic access$idToMap(Lexpo/modules/speech/SpeechModule;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lexpo/modules/speech/SpeechModule;->idToMap(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$isTextToSpeechReady(Lexpo/modules/speech/SpeechModule;)Z
    .locals 0

    .line 20
    invoke-direct {p0}, Lexpo/modules/speech/SpeechModule;->isTextToSpeechReady()Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$set_textToSpeech$p(Lexpo/modules/speech/SpeechModule;Landroid/speech/tts/TextToSpeech;)V
    .locals 0

    .line 20
    iput-object p1, p0, Lexpo/modules/speech/SpeechModule;->_textToSpeech:Landroid/speech/tts/TextToSpeech;

    return-void
.end method

.method public static final synthetic access$set_ttsReady$p(Lexpo/modules/speech/SpeechModule;Z)V
    .locals 0

    .line 20
    iput-boolean p1, p0, Lexpo/modules/speech/SpeechModule;->_ttsReady:Z

    return-void
.end method

.method public static final synthetic access$speakOut(Lexpo/modules/speech/SpeechModule;Ljava/lang/String;Ljava/lang/String;Lexpo/modules/speech/SpeechOptions;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1, p2, p3}, Lexpo/modules/speech/SpeechModule;->speakOut(Ljava/lang/String;Ljava/lang/String;Lexpo/modules/speech/SpeechOptions;)V

    return-void
.end method

.method private final getTextToSpeech()Landroid/speech/tts/TextToSpeech;
    .locals 1

    iget-object v0, p0, Lexpo/modules/speech/SpeechModule;->textToSpeech$delegate:Lkotlin/Lazy;

    .line 125
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/speech/tts/TextToSpeech;

    return-object v0
.end method

.method private final idToMap(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 2

    .line 171
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "id"

    .line 172
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private final isTextToSpeechReady()Z
    .locals 1

    iget-boolean v0, p0, Lexpo/modules/speech/SpeechModule;->_ttsReady:Z

    return v0
.end method

.method private final speakOut(Ljava/lang/String;Ljava/lang/String;Lexpo/modules/speech/SpeechOptions;)V
    .locals 4

    .line 89
    invoke-virtual {p3}, Lexpo/modules/speech/SpeechOptions;->getPitch()Ljava/lang/Float;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lexpo/modules/speech/SpeechModule;->getTextToSpeech()Landroid/speech/tts/TextToSpeech;

    move-result-object v1

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    invoke-virtual {v1, v0}, Landroid/speech/tts/TextToSpeech;->setPitch(F)I

    .line 90
    :cond_0
    invoke-virtual {p3}, Lexpo/modules/speech/SpeechOptions;->getRate()Ljava/lang/Float;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lexpo/modules/speech/SpeechModule;->getTextToSpeech()Landroid/speech/tts/TextToSpeech;

    move-result-object v1

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    invoke-virtual {v1, v0}, Landroid/speech/tts/TextToSpeech;->setSpeechRate(F)I

    .line 92
    :cond_1
    invoke-direct {p0}, Lexpo/modules/speech/SpeechModule;->getTextToSpeech()Landroid/speech/tts/TextToSpeech;

    move-result-object v0

    invoke-virtual {p3}, Lexpo/modules/speech/SpeechOptions;->getLanguage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 93
    new-instance v2, Ljava/util/Locale;

    invoke-direct {v2, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .line 94
    invoke-direct {p0}, Lexpo/modules/speech/SpeechModule;->getTextToSpeech()Landroid/speech/tts/TextToSpeech;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/speech/tts/TextToSpeech;->isLanguageAvailable(Ljava/util/Locale;)I

    move-result v1

    const/4 v3, -0x1

    if-eq v1, v3, :cond_2

    const/4 v3, -0x2

    if-eq v1, v3, :cond_2

    goto :goto_0

    .line 102
    :cond_2
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    :goto_0
    if-nez v2, :cond_4

    .line 104
    :cond_3
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    .line 92
    :cond_4
    invoke-virtual {v0, v2}, Landroid/speech/tts/TextToSpeech;->setLanguage(Ljava/util/Locale;)I

    .line 106
    invoke-virtual {p3}, Lexpo/modules/speech/SpeechOptions;->getVoice()Ljava/lang/String;

    move-result-object p3

    const/4 v0, 0x0

    if-eqz p3, :cond_7

    .line 107
    invoke-direct {p0}, Lexpo/modules/speech/SpeechModule;->getTextToSpeech()Landroid/speech/tts/TextToSpeech;

    move-result-object v1

    invoke-virtual {v1}, Landroid/speech/tts/TextToSpeech;->getVoices()Ljava/util/Set;

    move-result-object v1

    const-string v2, "getVoices(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Iterable;

    .line 361
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Landroid/speech/tts/Voice;

    .line 108
    invoke-virtual {v3}, Landroid/speech/tts/Voice;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    goto :goto_1

    :cond_6
    move-object v2, v0

    :goto_1
    check-cast v2, Landroid/speech/tts/Voice;

    if-eqz v2, :cond_7

    .line 109
    invoke-direct {p0}, Lexpo/modules/speech/SpeechModule;->getTextToSpeech()Landroid/speech/tts/TextToSpeech;

    move-result-object p3

    invoke-virtual {p3, v2}, Landroid/speech/tts/TextToSpeech;->setVoice(Landroid/speech/tts/Voice;)I

    .line 112
    :cond_7
    invoke-direct {p0}, Lexpo/modules/speech/SpeechModule;->getTextToSpeech()Landroid/speech/tts/TextToSpeech;

    move-result-object p3

    .line 113
    check-cast p2, Ljava/lang/CharSequence;

    const/4 v1, 0x1

    .line 112
    invoke-virtual {p3, p2, v1, v0, p1}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/CharSequence;ILandroid/os/Bundle;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public definition()Lexpo/modules/kotlin/modules/ModuleDefinitionData;
    .locals 11

    .line 23
    move-object v0, p0

    check-cast v0, Lexpo/modules/kotlin/modules/Module;

    .line 186
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".ModuleDefinition"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 188
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[ExpoModulesCore] "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 189
    invoke-static {v1}, Landroidx/tracing/Trace;->beginSection(Ljava/lang/String;)V

    .line 186
    :try_start_0
    new-instance v1, Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;

    invoke-direct {v1, v0}, Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;-><init>(Lexpo/modules/kotlin/modules/Module;)V

    const-string v0, "ExpoSpeech"

    .line 24
    invoke-virtual {v1, v0}, Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;->Name(Ljava/lang/String;)V

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v2, "Exponent.speakingStarted"

    const/4 v3, 0x0

    aput-object v2, v0, v3

    const-string v2, "Exponent.speakingWillSayNextString"

    const/4 v4, 0x1

    aput-object v2, v0, v4

    const-string v2, "Exponent.speakingDone"

    const/4 v5, 0x2

    aput-object v2, v0, v5

    const-string v2, "Exponent.speakingStopped"

    const/4 v6, 0x3

    aput-object v2, v0, v6

    const-string v2, "Exponent.speakingError"

    const/4 v7, 0x4

    aput-object v2, v0, v7

    .line 26
    invoke-virtual {v1, v0}, Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;->Events([Ljava/lang/String;)V

    new-array v0, v4, [Lkotlin/Pair;

    const-string v2, "maxSpeechInputLength"

    .line 34
    invoke-static {}, Landroid/speech/tts/TextToSpeech;->getMaxSpeechInputLength()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v2, v7}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    aput-object v2, v0, v3

    invoke-virtual {v1, v0}, Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;->Constants([Lkotlin/Pair;)V

    .line 192
    invoke-virtual {v1}, Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;->getEventListeners()Ljava/util/Map;

    move-result-object v0

    sget-object v2, Lexpo/modules/kotlin/events/EventName;->ACTIVITY_DESTROYS:Lexpo/modules/kotlin/events/EventName;

    new-instance v7, Lexpo/modules/kotlin/events/BasicEventListener;

    sget-object v8, Lexpo/modules/kotlin/events/EventName;->ACTIVITY_DESTROYS:Lexpo/modules/kotlin/events/EventName;

    new-instance v9, Lexpo/modules/speech/SpeechModule$definition$lambda$6$$inlined$OnActivityDestroys$1;

    invoke-direct {v9, p0}, Lexpo/modules/speech/SpeechModule$definition$lambda$6$$inlined$OnActivityDestroys$1;-><init>(Lexpo/modules/speech/SpeechModule;)V

    check-cast v9, Lkotlin/jvm/functions/Function0;

    invoke-direct {v7, v8, v9}, Lexpo/modules/kotlin/events/BasicEventListener;-><init>(Lexpo/modules/kotlin/events/EventName;Lkotlin/jvm/functions/Function0;)V

    invoke-interface {v0, v2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    move-object v0, v1

    check-cast v0, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;

    const-string v2, "isSpeaking"

    new-array v7, v3, [Lexpo/modules/kotlin/types/AnyType;

    .line 194
    new-instance v8, Lexpo/modules/speech/SpeechModule$definition$lambda$6$$inlined$AsyncFunction$1;

    invoke-direct {v8, p0}, Lexpo/modules/speech/SpeechModule$definition$lambda$6$$inlined$AsyncFunction$1;-><init>(Lexpo/modules/speech/SpeechModule;)V

    check-cast v8, Lkotlin/jvm/functions/Function1;

    .line 196
    const-class v9, Ljava/lang/Boolean;

    .line 200
    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 206
    new-instance v9, Lexpo/modules/kotlin/functions/IntAsyncFunctionComponent;

    invoke-direct {v9, v2, v7, v8}, Lexpo/modules/kotlin/functions/IntAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v9, Lexpo/modules/kotlin/functions/AsyncFunction;

    goto :goto_0

    .line 208
    :cond_0
    sget-object v10, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 210
    new-instance v9, Lexpo/modules/kotlin/functions/BoolAsyncFunctionComponent;

    invoke-direct {v9, v2, v7, v8}, Lexpo/modules/kotlin/functions/BoolAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v9, Lexpo/modules/kotlin/functions/AsyncFunction;

    goto :goto_0

    .line 212
    :cond_1
    sget-object v10, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 214
    new-instance v9, Lexpo/modules/kotlin/functions/DoubleAsyncFunctionComponent;

    invoke-direct {v9, v2, v7, v8}, Lexpo/modules/kotlin/functions/DoubleAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v9, Lexpo/modules/kotlin/functions/AsyncFunction;

    goto :goto_0

    .line 216
    :cond_2
    sget-object v10, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 218
    new-instance v9, Lexpo/modules/kotlin/functions/FloatAsyncFunctionComponent;

    invoke-direct {v9, v2, v7, v8}, Lexpo/modules/kotlin/functions/FloatAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v9, Lexpo/modules/kotlin/functions/AsyncFunction;

    goto :goto_0

    .line 220
    :cond_3
    const-class v10, Ljava/lang/String;

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 222
    new-instance v9, Lexpo/modules/kotlin/functions/StringAsyncFunctionComponent;

    invoke-direct {v9, v2, v7, v8}, Lexpo/modules/kotlin/functions/StringAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v9, Lexpo/modules/kotlin/functions/AsyncFunction;

    goto :goto_0

    .line 224
    :cond_4
    new-instance v9, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    invoke-direct {v9, v2, v7, v8}, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v9, Lexpo/modules/kotlin/functions/AsyncFunction;

    .line 225
    :goto_0
    invoke-virtual {v0}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->getAsyncFunctions()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v2, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    move-object v0, v1

    check-cast v0, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;

    const-string v2, "getVoices"

    new-array v7, v3, [Lexpo/modules/kotlin/types/AnyType;

    .line 227
    new-instance v8, Lexpo/modules/speech/SpeechModule$definition$lambda$6$$inlined$AsyncFunction$2;

    invoke-direct {v8, p0}, Lexpo/modules/speech/SpeechModule$definition$lambda$6$$inlined$AsyncFunction$2;-><init>(Lexpo/modules/speech/SpeechModule;)V

    check-cast v8, Lkotlin/jvm/functions/Function1;

    .line 229
    const-class v9, Ljava/util/List;

    .line 233
    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 239
    new-instance v9, Lexpo/modules/kotlin/functions/IntAsyncFunctionComponent;

    invoke-direct {v9, v2, v7, v8}, Lexpo/modules/kotlin/functions/IntAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v9, Lexpo/modules/kotlin/functions/AsyncFunction;

    goto :goto_1

    .line 241
    :cond_5
    sget-object v10, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 243
    new-instance v9, Lexpo/modules/kotlin/functions/BoolAsyncFunctionComponent;

    invoke-direct {v9, v2, v7, v8}, Lexpo/modules/kotlin/functions/BoolAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v9, Lexpo/modules/kotlin/functions/AsyncFunction;

    goto :goto_1

    .line 245
    :cond_6
    sget-object v10, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 247
    new-instance v9, Lexpo/modules/kotlin/functions/DoubleAsyncFunctionComponent;

    invoke-direct {v9, v2, v7, v8}, Lexpo/modules/kotlin/functions/DoubleAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v9, Lexpo/modules/kotlin/functions/AsyncFunction;

    goto :goto_1

    .line 249
    :cond_7
    sget-object v10, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 251
    new-instance v9, Lexpo/modules/kotlin/functions/FloatAsyncFunctionComponent;

    invoke-direct {v9, v2, v7, v8}, Lexpo/modules/kotlin/functions/FloatAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v9, Lexpo/modules/kotlin/functions/AsyncFunction;

    goto :goto_1

    .line 253
    :cond_8
    const-class v10, Ljava/lang/String;

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 255
    new-instance v9, Lexpo/modules/kotlin/functions/StringAsyncFunctionComponent;

    invoke-direct {v9, v2, v7, v8}, Lexpo/modules/kotlin/functions/StringAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v9, Lexpo/modules/kotlin/functions/AsyncFunction;

    goto :goto_1

    .line 257
    :cond_9
    new-instance v9, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    invoke-direct {v9, v2, v7, v8}, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v9, Lexpo/modules/kotlin/functions/AsyncFunction;

    .line 258
    :goto_1
    invoke-virtual {v0}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->getAsyncFunctions()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v2, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    move-object v0, v1

    check-cast v0, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;

    const-string v2, "stop"

    new-array v7, v3, [Lexpo/modules/kotlin/types/AnyType;

    .line 260
    new-instance v8, Lexpo/modules/speech/SpeechModule$definition$lambda$6$$inlined$AsyncFunction$3;

    invoke-direct {v8, p0}, Lexpo/modules/speech/SpeechModule$definition$lambda$6$$inlined$AsyncFunction$3;-><init>(Lexpo/modules/speech/SpeechModule;)V

    check-cast v8, Lkotlin/jvm/functions/Function1;

    .line 262
    const-class v9, Lkotlin/Unit;

    .line 266
    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 272
    new-instance v9, Lexpo/modules/kotlin/functions/IntAsyncFunctionComponent;

    invoke-direct {v9, v2, v7, v8}, Lexpo/modules/kotlin/functions/IntAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v9, Lexpo/modules/kotlin/functions/AsyncFunction;

    goto :goto_2

    .line 274
    :cond_a
    sget-object v10, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 276
    new-instance v9, Lexpo/modules/kotlin/functions/BoolAsyncFunctionComponent;

    invoke-direct {v9, v2, v7, v8}, Lexpo/modules/kotlin/functions/BoolAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v9, Lexpo/modules/kotlin/functions/AsyncFunction;

    goto :goto_2

    .line 278
    :cond_b
    sget-object v10, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_c

    .line 280
    new-instance v9, Lexpo/modules/kotlin/functions/DoubleAsyncFunctionComponent;

    invoke-direct {v9, v2, v7, v8}, Lexpo/modules/kotlin/functions/DoubleAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v9, Lexpo/modules/kotlin/functions/AsyncFunction;

    goto :goto_2

    .line 282
    :cond_c
    sget-object v10, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_d

    .line 284
    new-instance v9, Lexpo/modules/kotlin/functions/FloatAsyncFunctionComponent;

    invoke-direct {v9, v2, v7, v8}, Lexpo/modules/kotlin/functions/FloatAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v9, Lexpo/modules/kotlin/functions/AsyncFunction;

    goto :goto_2

    .line 286
    :cond_d
    const-class v10, Ljava/lang/String;

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_e

    .line 288
    new-instance v9, Lexpo/modules/kotlin/functions/StringAsyncFunctionComponent;

    invoke-direct {v9, v2, v7, v8}, Lexpo/modules/kotlin/functions/StringAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v9, Lexpo/modules/kotlin/functions/AsyncFunction;

    goto :goto_2

    .line 290
    :cond_e
    new-instance v9, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    invoke-direct {v9, v2, v7, v8}, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v9, Lexpo/modules/kotlin/functions/AsyncFunction;

    .line 291
    :goto_2
    invoke-virtual {v0}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->getAsyncFunctions()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v2, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    move-object v0, v1

    check-cast v0, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;

    const-string v2, "speak"

    .line 295
    const-class v7, Ljava/lang/String;

    .line 296
    const-class v7, Ljava/lang/String;

    .line 297
    const-class v7, Lexpo/modules/speech/SpeechOptions;

    new-array v6, v6, [Lexpo/modules/kotlin/types/AnyType;

    .line 301
    sget-object v7, Lexpo/modules/speech/SpeechModule$definition$lambda$6$$inlined$AsyncFunction$4;->INSTANCE:Lexpo/modules/speech/SpeechModule$definition$lambda$6$$inlined$AsyncFunction$4;

    check-cast v7, Lkotlin/jvm/functions/Function0;

    .line 302
    new-instance v8, Lexpo/modules/kotlin/types/AnyType;

    .line 303
    new-instance v9, Lexpo/modules/kotlin/types/LazyKType;

    const-class v10, Ljava/lang/String;

    invoke-static {v10}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v10

    invoke-direct {v9, v10, v3, v7}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;)V

    check-cast v9, Lkotlin/reflect/KType;

    .line 302
    invoke-direct {v8, v9}, Lexpo/modules/kotlin/types/AnyType;-><init>(Lkotlin/reflect/KType;)V

    aput-object v8, v6, v3

    .line 310
    sget-object v7, Lexpo/modules/speech/SpeechModule$definition$lambda$6$$inlined$AsyncFunction$5;->INSTANCE:Lexpo/modules/speech/SpeechModule$definition$lambda$6$$inlined$AsyncFunction$5;

    check-cast v7, Lkotlin/jvm/functions/Function0;

    .line 311
    new-instance v8, Lexpo/modules/kotlin/types/AnyType;

    .line 312
    new-instance v9, Lexpo/modules/kotlin/types/LazyKType;

    const-class v10, Ljava/lang/String;

    invoke-static {v10}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v10

    invoke-direct {v9, v10, v3, v7}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;)V

    check-cast v9, Lkotlin/reflect/KType;

    .line 311
    invoke-direct {v8, v9}, Lexpo/modules/kotlin/types/AnyType;-><init>(Lkotlin/reflect/KType;)V

    aput-object v8, v6, v4

    .line 319
    sget-object v4, Lexpo/modules/speech/SpeechModule$definition$lambda$6$$inlined$AsyncFunction$6;->INSTANCE:Lexpo/modules/speech/SpeechModule$definition$lambda$6$$inlined$AsyncFunction$6;

    check-cast v4, Lkotlin/jvm/functions/Function0;

    .line 320
    new-instance v7, Lexpo/modules/kotlin/types/AnyType;

    .line 321
    new-instance v8, Lexpo/modules/kotlin/types/LazyKType;

    const-class v9, Lexpo/modules/speech/SpeechOptions;

    invoke-static {v9}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v9

    invoke-direct {v8, v9, v3, v4}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;)V

    check-cast v8, Lkotlin/reflect/KType;

    .line 320
    invoke-direct {v7, v8}, Lexpo/modules/kotlin/types/AnyType;-><init>(Lkotlin/reflect/KType;)V

    aput-object v7, v6, v5

    .line 293
    new-instance v3, Lexpo/modules/speech/SpeechModule$definition$lambda$6$$inlined$AsyncFunction$7;

    invoke-direct {v3, p0}, Lexpo/modules/speech/SpeechModule$definition$lambda$6$$inlined$AsyncFunction$7;-><init>(Lexpo/modules/speech/SpeechModule;)V

    check-cast v3, Lkotlin/jvm/functions/Function1;

    .line 327
    const-class v4, Lkotlin/Unit;

    .line 331
    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 337
    new-instance v4, Lexpo/modules/kotlin/functions/IntAsyncFunctionComponent;

    invoke-direct {v4, v2, v6, v3}, Lexpo/modules/kotlin/functions/IntAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v4, Lexpo/modules/kotlin/functions/AsyncFunction;

    goto :goto_3

    .line 339
    :cond_f
    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 341
    new-instance v4, Lexpo/modules/kotlin/functions/BoolAsyncFunctionComponent;

    invoke-direct {v4, v2, v6, v3}, Lexpo/modules/kotlin/functions/BoolAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v4, Lexpo/modules/kotlin/functions/AsyncFunction;

    goto :goto_3

    .line 343
    :cond_10
    sget-object v5, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 345
    new-instance v4, Lexpo/modules/kotlin/functions/DoubleAsyncFunctionComponent;

    invoke-direct {v4, v2, v6, v3}, Lexpo/modules/kotlin/functions/DoubleAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v4, Lexpo/modules/kotlin/functions/AsyncFunction;

    goto :goto_3

    .line 347
    :cond_11
    sget-object v5, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 349
    new-instance v4, Lexpo/modules/kotlin/functions/FloatAsyncFunctionComponent;

    invoke-direct {v4, v2, v6, v3}, Lexpo/modules/kotlin/functions/FloatAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v4, Lexpo/modules/kotlin/functions/AsyncFunction;

    goto :goto_3

    .line 351
    :cond_12
    const-class v5, Ljava/lang/String;

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 353
    new-instance v4, Lexpo/modules/kotlin/functions/StringAsyncFunctionComponent;

    invoke-direct {v4, v2, v6, v3}, Lexpo/modules/kotlin/functions/StringAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v4, Lexpo/modules/kotlin/functions/AsyncFunction;

    goto :goto_3

    .line 355
    :cond_13
    new-instance v4, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    invoke-direct {v4, v2, v6, v3}, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v4, Lexpo/modules/kotlin/functions/AsyncFunction;

    .line 357
    :goto_3
    invoke-virtual {v0}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->getAsyncFunctions()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    invoke-virtual {v1}, Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;->buildModule()Lexpo/modules/kotlin/modules/ModuleDefinitionData;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 359
    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    throw v0
.end method
