.class public final Lexpo/modules/speech/SpeechModule$textToSpeech$2$newTtsInstance$1$1$1;
.super Landroid/speech/tts/UtteranceProgressListener;
.source "SpeechModule.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/speech/SpeechModule$textToSpeech$2;->invoke()Landroid/speech/tts/TextToSpeech;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\'\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J(\u0010\u0007\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\tH\u0016J\u0010\u0010\u000c\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0018\u0010\r\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u000e\u001a\u00020\u000fH\u0016\u00a8\u0006\u0010"
    }
    d2 = {
        "expo/modules/speech/SpeechModule$textToSpeech$2$newTtsInstance$1$1$1",
        "Landroid/speech/tts/UtteranceProgressListener;",
        "onDone",
        "",
        "utteranceId",
        "",
        "onError",
        "onRangeStart",
        "start",
        "",
        "end",
        "frame",
        "onStart",
        "onStop",
        "interrupted",
        "",
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
.field final synthetic this$0:Lexpo/modules/speech/SpeechModule;


# direct methods
.method constructor <init>(Lexpo/modules/speech/SpeechModule;)V
    .locals 0

    iput-object p1, p0, Lexpo/modules/speech/SpeechModule$textToSpeech$2$newTtsInstance$1$1$1;->this$0:Lexpo/modules/speech/SpeechModule;

    .line 131
    invoke-direct {p0}, Landroid/speech/tts/UtteranceProgressListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDone(Ljava/lang/String;)V
    .locals 2

    const-string v0, "utteranceId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "expo-speech"

    const-string v1, "emitting onDone event"

    .line 148
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lexpo/modules/speech/SpeechModule$textToSpeech$2$newTtsInstance$1$1$1;->this$0:Lexpo/modules/speech/SpeechModule;

    const-string v1, "Exponent.speakingDone"

    .line 149
    invoke-static {v0, p1}, Lexpo/modules/speech/SpeechModule;->access$idToMap(Lexpo/modules/speech/SpeechModule;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lexpo/modules/speech/SpeechModule;->sendEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .locals 2

    const-string v0, "utteranceId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lexpo/modules/speech/SpeechModule$textToSpeech$2$newTtsInstance$1$1$1;->this$0:Lexpo/modules/speech/SpeechModule;

    const-string v1, "Exponent.speakingError"

    .line 157
    invoke-static {v0, p1}, Lexpo/modules/speech/SpeechModule;->access$idToMap(Lexpo/modules/speech/SpeechModule;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lexpo/modules/speech/SpeechModule;->sendEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public onRangeStart(Ljava/lang/String;III)V
    .locals 1

    const-string p4, "utteranceId"

    invoke-static {p1, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 139
    new-instance p4, Landroid/os/Bundle;

    invoke-direct {p4}, Landroid/os/Bundle;-><init>()V

    const-string v0, "id"

    .line 140
    invoke-virtual {p4, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "charIndex"

    .line 141
    invoke-virtual {p4, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "charLength"

    sub-int/2addr p3, p2

    .line 142
    invoke-virtual {p4, p1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object p1, p0, Lexpo/modules/speech/SpeechModule$textToSpeech$2$newTtsInstance$1$1$1;->this$0:Lexpo/modules/speech/SpeechModule;

    const-string p2, "Exponent.speakingWillSayNextString"

    .line 144
    invoke-virtual {p1, p2, p4}, Lexpo/modules/speech/SpeechModule;->sendEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public onStart(Ljava/lang/String;)V
    .locals 2

    const-string v0, "utteranceId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "expo-speech"

    const-string v1, "emitting onStart event"

    .line 134
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lexpo/modules/speech/SpeechModule$textToSpeech$2$newTtsInstance$1$1$1;->this$0:Lexpo/modules/speech/SpeechModule;

    const-string v1, "Exponent.speakingStarted"

    .line 135
    invoke-static {v0, p1}, Lexpo/modules/speech/SpeechModule;->access$idToMap(Lexpo/modules/speech/SpeechModule;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lexpo/modules/speech/SpeechModule;->sendEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public onStop(Ljava/lang/String;Z)V
    .locals 1

    const-string p2, "utteranceId"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lexpo/modules/speech/SpeechModule$textToSpeech$2$newTtsInstance$1$1$1;->this$0:Lexpo/modules/speech/SpeechModule;

    const-string v0, "Exponent.speakingStopped"

    .line 153
    invoke-static {p2, p1}, Lexpo/modules/speech/SpeechModule;->access$idToMap(Lexpo/modules/speech/SpeechModule;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Lexpo/modules/speech/SpeechModule;->sendEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method
