.class Lcom/reactnativedocumentpicker/RNDocumentPickerModule$1;
.super Lcom/facebook/react/bridge/BaseActivityEventListener;
.source "RNDocumentPickerModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/reactnativedocumentpicker/RNDocumentPickerModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/reactnativedocumentpicker/RNDocumentPickerModule;


# direct methods
.method constructor <init>(Lcom/reactnativedocumentpicker/RNDocumentPickerModule;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/reactnativedocumentpicker/RNDocumentPickerModule$1;->this$0:Lcom/reactnativedocumentpicker/RNDocumentPickerModule;

    .line 72
    invoke-direct {p0}, Lcom/facebook/react/bridge/BaseActivityEventListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V
    .locals 1

    const/16 p1, 0x29

    if-eq p2, p1, :cond_0

    const/16 v0, 0x2a

    if-eq p2, v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/reactnativedocumentpicker/RNDocumentPickerModule$1;->this$0:Lcom/reactnativedocumentpicker/RNDocumentPickerModule;

    .line 79
    invoke-static {v0}, Lcom/reactnativedocumentpicker/RNDocumentPickerModule;->-$$Nest$fgetpromise(Lcom/reactnativedocumentpicker/RNDocumentPickerModule;)Lcom/facebook/react/bridge/Promise;

    move-result-object v0

    if-nez v0, :cond_1

    const-string p1, "RNDocumentPicker"

    const-string p2, "promise was null in onActivityResult"

    .line 81
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    if-nez p3, :cond_2

    iget-object p1, p0, Lcom/reactnativedocumentpicker/RNDocumentPickerModule$1;->this$0:Lcom/reactnativedocumentpicker/RNDocumentPickerModule;

    const-string p2, "DOCUMENT_PICKER_CANCELED"

    const-string p3, "User canceled directory picker"

    .line 85
    invoke-static {p1, p2, p3}, Lcom/reactnativedocumentpicker/RNDocumentPickerModule;->-$$Nest$msendError(Lcom/reactnativedocumentpicker/RNDocumentPickerModule;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    if-ne p2, p1, :cond_3

    iget-object p1, p0, Lcom/reactnativedocumentpicker/RNDocumentPickerModule$1;->this$0:Lcom/reactnativedocumentpicker/RNDocumentPickerModule;

    .line 89
    invoke-virtual {p1, p3, p4, v0}, Lcom/reactnativedocumentpicker/RNDocumentPickerModule;->onShowActivityResult(ILandroid/content/Intent;Lcom/facebook/react/bridge/Promise;)V

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/reactnativedocumentpicker/RNDocumentPickerModule$1;->this$0:Lcom/reactnativedocumentpicker/RNDocumentPickerModule;

    .line 91
    invoke-static {p1, p3, p4}, Lcom/reactnativedocumentpicker/RNDocumentPickerModule;->-$$Nest$monPickDirectoryResult(Lcom/reactnativedocumentpicker/RNDocumentPickerModule;ILandroid/content/Intent;)V

    :goto_0
    return-void
.end method
