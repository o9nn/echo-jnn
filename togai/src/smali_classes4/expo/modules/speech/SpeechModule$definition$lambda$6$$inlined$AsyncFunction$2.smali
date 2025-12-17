.class public final Lexpo/modules/speech/SpeechModule$definition$lambda$6$$inlined$AsyncFunction$2;
.super Lkotlin/jvm/internal/Lambda;
.source "ObjectDefinitionBuilder.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/speech/SpeechModule;->definition()Lexpo/modules/kotlin/modules/ModuleDefinitionData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "[",
        "Ljava/lang/Object;",
        "Ljava/util/List<",
        "+",
        "Lexpo/modules/speech/VoiceRecord;",
        ">;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nObjectDefinitionBuilder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ObjectDefinitionBuilder.kt\nexpo/modules/kotlin/objects/ObjectDefinitionBuilder$AsyncFunction$3\n+ 2 SpeechModule.kt\nexpo/modules/speech/SpeechModule\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,505:1\n45#2,7:506\n52#2,11:516\n1549#3:513\n1620#3,2:514\n1622#3:527\n*S KotlinDebug\n*F\n+ 1 SpeechModule.kt\nexpo/modules/speech/SpeechModule\n*L\n51#1:513\n51#1:514,2\n51#1:527\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0008\u0003\n\u0002\u0010\u0011\n\u0002\u0010\u0000\n\u0002\u0008\u0003\u0010\u0000\u001a\u0002H\u0001\"\u0006\u0008\u0000\u0010\u0001\u0018\u00012\u0010\u0010\u0002\u001a\u000c\u0012\u0008\u0008\u0001\u0012\u0004\u0018\u00010\u00040\u0003H\n\u00a2\u0006\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "<anonymous>",
        "R",
        "it",
        "",
        "",
        "invoke",
        "([Ljava/lang/Object;)Ljava/lang/Object;",
        "expo/modules/kotlin/objects/ObjectDefinitionBuilder$AsyncFunction$3"
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
.method public constructor <init>(Lexpo/modules/speech/SpeechModule;)V
    .locals 0

    iput-object p1, p0, Lexpo/modules/speech/SpeechModule$definition$lambda$6$$inlined$AsyncFunction$2;->this$0:Lexpo/modules/speech/SpeechModule;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 206
    check-cast p1, [Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lexpo/modules/speech/SpeechModule$definition$lambda$6$$inlined$AsyncFunction$2;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List<",
            "+",
            "Lexpo/modules/speech/VoiceRecord;",
            ">;"
        }
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    iget-object p1, p0, Lexpo/modules/speech/SpeechModule$definition$lambda$6$$inlined$AsyncFunction$2;->this$0:Lexpo/modules/speech/SpeechModule;

    .line 507
    invoke-static {p1}, Lexpo/modules/speech/SpeechModule;->access$getTextToSpeech(Lexpo/modules/speech/SpeechModule;)Landroid/speech/tts/TextToSpeech;

    move-result-object p1

    invoke-virtual {p1}, Landroid/speech/tts/TextToSpeech;->getVoices()Ljava/util/Set;

    move-result-object p1

    const-string v0, "getVoices(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Iterable;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 509
    :catch_0
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    .line 512
    :goto_0
    check-cast p1, Ljava/lang/Iterable;

    .line 513
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v0, Ljava/util/Collection;

    .line 514
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 515
    check-cast v1, Landroid/speech/tts/Voice;

    .line 516
    invoke-virtual {v1}, Landroid/speech/tts/Voice;->getQuality()I

    move-result v2

    const/16 v3, 0x12c

    if-le v2, v3, :cond_0

    .line 517
    sget-object v2, Lexpo/modules/speech/VoiceQuality;->ENHANCED:Lexpo/modules/speech/VoiceQuality;

    goto :goto_2

    .line 519
    :cond_0
    sget-object v2, Lexpo/modules/speech/VoiceQuality;->DEFAULT:Lexpo/modules/speech/VoiceQuality;

    .line 522
    :goto_2
    new-instance v3, Lexpo/modules/speech/VoiceRecord;

    .line 523
    invoke-virtual {v1}, Landroid/speech/tts/Voice;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "getName(...)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 524
    invoke-virtual {v1}, Landroid/speech/tts/Voice;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 526
    sget-object v5, Lexpo/modules/speech/LanguageUtils;->INSTANCE:Lexpo/modules/speech/LanguageUtils;

    invoke-virtual {v1}, Landroid/speech/tts/Voice;->getLocale()Ljava/util/Locale;

    move-result-object v1

    const-string v7, "getLocale(...)"

    invoke-static {v1, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Lexpo/modules/speech/LanguageUtils;->getISOCode(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 522
    invoke-direct {v3, v4, v6, v2, v1}, Lexpo/modules/speech/VoiceRecord;-><init>(Ljava/lang/String;Ljava/lang/String;Lexpo/modules/speech/VoiceQuality;Ljava/lang/String;)V

    .line 515
    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 527
    :cond_1
    check-cast v0, Ljava/util/List;

    return-object v0
.end method
