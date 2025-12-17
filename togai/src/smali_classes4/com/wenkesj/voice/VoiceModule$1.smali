.class Lcom/wenkesj/voice/VoiceModule$1;
.super Ljava/lang/Object;
.source "VoiceModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wenkesj/voice/VoiceModule;->startSpeechWithPermissions(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wenkesj/voice/VoiceModule;

.field final synthetic val$callback:Lcom/facebook/react/bridge/Callback;

.field final synthetic val$opts:Lcom/facebook/react/bridge/ReadableMap;


# direct methods
.method constructor <init>(Lcom/wenkesj/voice/VoiceModule;Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/wenkesj/voice/VoiceModule$1;->this$0:Lcom/wenkesj/voice/VoiceModule;

    iput-object p2, p0, Lcom/wenkesj/voice/VoiceModule$1;->val$opts:Lcom/facebook/react/bridge/ReadableMap;

    iput-object p3, p0, Lcom/wenkesj/voice/VoiceModule$1;->val$callback:Lcom/facebook/react/bridge/Callback;

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/wenkesj/voice/VoiceModule$1;->this$0:Lcom/wenkesj/voice/VoiceModule;

    iget-object v1, p0, Lcom/wenkesj/voice/VoiceModule$1;->val$opts:Lcom/facebook/react/bridge/ReadableMap;

    .line 137
    invoke-static {v0, v1}, Lcom/wenkesj/voice/VoiceModule;->-$$Nest$mstartListening(Lcom/wenkesj/voice/VoiceModule;Lcom/facebook/react/bridge/ReadableMap;)V

    iget-object v0, p0, Lcom/wenkesj/voice/VoiceModule$1;->this$0:Lcom/wenkesj/voice/VoiceModule;

    const/4 v1, 0x1

    .line 138
    invoke-static {v0, v1}, Lcom/wenkesj/voice/VoiceModule;->-$$Nest$fputisRecognizing(Lcom/wenkesj/voice/VoiceModule;Z)V

    iget-object v0, p0, Lcom/wenkesj/voice/VoiceModule$1;->val$callback:Lcom/facebook/react/bridge/Callback;

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 139
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/wenkesj/voice/VoiceModule$1;->val$callback:Lcom/facebook/react/bridge/Callback;

    .line 141
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
