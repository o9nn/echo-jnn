.class public final Lexpo/modules/speech/SpeechModule$definition$lambda$6$$inlined$AsyncFunction$7;
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
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nObjectDefinitionBuilder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ObjectDefinitionBuilder.kt\nexpo/modules/kotlin/objects/ObjectDefinitionBuilder$AsyncFunction$12\n+ 2 EnforceType.kt\nexpo/modules/kotlin/types/EnforceTypeKt\n+ 3 SpeechModule.kt\nexpo/modules/speech/SpeechModule\n*L\n1#1,505:1\n22#2,4:506\n72#3,14:510\n*S KotlinDebug\n*F\n+ 1 ObjectDefinitionBuilder.kt\nexpo/modules/kotlin/objects/ObjectDefinitionBuilder$AsyncFunction$12\n*L\n258#1:506,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0008\u0006\n\u0002\u0010\u0011\n\u0002\u0010\u0000\n\u0002\u0008\u0003\u0010\u0000\u001a\u0002H\u0001\"\u0006\u0008\u0000\u0010\u0001\u0018\u0001\"\u0006\u0008\u0001\u0010\u0002\u0018\u0001\"\u0006\u0008\u0002\u0010\u0003\u0018\u0001\"\u0006\u0008\u0003\u0010\u0004\u0018\u00012\u0010\u0010\u0005\u001a\u000c\u0012\u0008\u0008\u0001\u0012\u0004\u0018\u00010\u00070\u0006H\n\u00a2\u0006\u0004\u0008\u0008\u0010\t\u00a8\u0006\n"
    }
    d2 = {
        "<anonymous>",
        "R",
        "P0",
        "P1",
        "P2",
        "<name for destructuring parameter 0>",
        "",
        "",
        "invoke",
        "([Ljava/lang/Object;)Ljava/lang/Object;",
        "expo/modules/kotlin/objects/ObjectDefinitionBuilder$AsyncFunction$12"
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

    iput-object p1, p0, Lexpo/modules/speech/SpeechModule$definition$lambda$6$$inlined$AsyncFunction$7;->this$0:Lexpo/modules/speech/SpeechModule;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 257
    check-cast p1, [Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lexpo/modules/speech/SpeechModule$definition$lambda$6$$inlined$AsyncFunction$7;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")",
            "Lkotlin/Unit;"
        }
    .end annotation

    const-string v0, "<name for destructuring parameter 0>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 257
    aget-object v0, p1, v0

    const/4 v1, 0x1

    aget-object v1, p1, v1

    const/4 v2, 0x2

    aget-object p1, p1, v2

    .line 259
    check-cast p1, Lexpo/modules/speech/SpeechOptions;

    check-cast v1, Ljava/lang/String;

    check-cast v0, Ljava/lang/String;

    .line 510
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {}, Landroid/speech/tts/TextToSpeech;->getMaxSpeechInputLength()I

    move-result v3

    if-gt v2, v3, :cond_1

    iget-object v2, p0, Lexpo/modules/speech/SpeechModule$definition$lambda$6$$inlined$AsyncFunction$7;->this$0:Lexpo/modules/speech/SpeechModule;

    .line 514
    invoke-static {v2}, Lexpo/modules/speech/SpeechModule;->access$isTextToSpeechReady(Lexpo/modules/speech/SpeechModule;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lexpo/modules/speech/SpeechModule$definition$lambda$6$$inlined$AsyncFunction$7;->this$0:Lexpo/modules/speech/SpeechModule;

    .line 515
    invoke-static {v2, v0, v1, p1}, Lexpo/modules/speech/SpeechModule;->access$speakOut(Lexpo/modules/speech/SpeechModule;Ljava/lang/String;Ljava/lang/String;Lexpo/modules/speech/SpeechOptions;)V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lexpo/modules/speech/SpeechModule$definition$lambda$6$$inlined$AsyncFunction$7;->this$0:Lexpo/modules/speech/SpeechModule;

    .line 517
    invoke-static {v2}, Lexpo/modules/speech/SpeechModule;->access$getDelayedUtterances$p(Lexpo/modules/speech/SpeechModule;)Ljava/util/Queue;

    move-result-object v2

    new-instance v3, Lexpo/modules/speech/SpeechModule$Utterance;

    invoke-direct {v3, v0, v1, p1}, Lexpo/modules/speech/SpeechModule$Utterance;-><init>(Ljava/lang/String;Ljava/lang/String;Lexpo/modules/speech/SpeechOptions;)V

    invoke-interface {v2, v3}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lexpo/modules/speech/SpeechModule$definition$lambda$6$$inlined$AsyncFunction$7;->this$0:Lexpo/modules/speech/SpeechModule;

    .line 520
    invoke-static {p1}, Lexpo/modules/speech/SpeechModule;->access$getTextToSpeech(Lexpo/modules/speech/SpeechModule;)Landroid/speech/tts/TextToSpeech;

    .line 523
    :goto_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 511
    :cond_1
    new-instance p1, Lexpo/modules/speech/SpeechInputIsToLongException;

    invoke-direct {p1}, Lexpo/modules/speech/SpeechInputIsToLongException;-><init>()V

    throw p1
.end method
