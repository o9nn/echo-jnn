.class public Lcom/reactnativedocumentpicker/RNDocumentPickerModule;
.super Lcom/reactnativedocumentpicker/NativeDocumentPickerSpec;
.source "RNDocumentPickerModule.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/reactnativedocumentpicker/RNDocumentPickerModule$ProcessDataTask;
    }
.end annotation


# static fields
.field private static final E_ACTIVITY_DOES_NOT_EXIST:Ljava/lang/String; = "ACTIVITY_DOES_NOT_EXIST"

.field private static final E_DOCUMENT_PICKER_CANCELED:Ljava/lang/String; = "DOCUMENT_PICKER_CANCELED"

.field private static final E_FAILED_TO_SHOW_PICKER:Ljava/lang/String; = "FAILED_TO_SHOW_PICKER"

.field private static final E_INVALID_DATA_RETURNED:Ljava/lang/String; = "INVALID_DATA_RETURNED"

.field private static final E_UNABLE_TO_OPEN_FILE_TYPE:Ljava/lang/String; = "UNABLE_TO_OPEN_FILE_TYPE"

.field private static final E_UNEXPECTED_EXCEPTION:Ljava/lang/String; = "UNEXPECTED_EXCEPTION"

.field private static final E_UNKNOWN_ACTIVITY_RESULT:Ljava/lang/String; = "UNKNOWN_ACTIVITY_RESULT"

.field private static final FIELD_COPY_ERROR:Ljava/lang/String; = "copyError"

.field private static final FIELD_FILE_COPY_URI:Ljava/lang/String; = "fileCopyUri"

.field private static final FIELD_NAME:Ljava/lang/String; = "name"

.field private static final FIELD_SIZE:Ljava/lang/String; = "size"

.field private static final FIELD_TYPE:Ljava/lang/String; = "type"

.field private static final FIELD_URI:Ljava/lang/String; = "uri"

.field public static final NAME:Ljava/lang/String; = "RNDocumentPicker"

.field private static final OPTION_COPY_TO:Ljava/lang/String; = "copyTo"

.field private static final OPTION_MULTIPLE:Ljava/lang/String; = "allowMultiSelection"

.field private static final OPTION_TYPE:Ljava/lang/String; = "type"

.field private static final PICK_DIR_REQUEST_CODE:I = 0x2a

.field private static final READ_REQUEST_CODE:I = 0x29


# instance fields
.field private final activityEventListener:Lcom/facebook/react/bridge/ActivityEventListener;

.field private copyTo:Ljava/lang/String;

.field private promise:Lcom/facebook/react/bridge/Promise;


# direct methods
.method static bridge synthetic -$$Nest$fgetpromise(Lcom/reactnativedocumentpicker/RNDocumentPickerModule;)Lcom/facebook/react/bridge/Promise;
    .locals 0

    iget-object p0, p0, Lcom/reactnativedocumentpicker/RNDocumentPickerModule;->promise:Lcom/facebook/react/bridge/Promise;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$monPickDirectoryResult(Lcom/reactnativedocumentpicker/RNDocumentPickerModule;ILandroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/reactnativedocumentpicker/RNDocumentPickerModule;->onPickDirectoryResult(ILandroid/content/Intent;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msendError(Lcom/reactnativedocumentpicker/RNDocumentPickerModule;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/reactnativedocumentpicker/RNDocumentPickerModule;->sendError(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V
    .locals 1

    .line 68
    invoke-direct {p0, p1}, Lcom/reactnativedocumentpicker/NativeDocumentPickerSpec;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    .line 72
    new-instance v0, Lcom/reactnativedocumentpicker/RNDocumentPickerModule$1;

    invoke-direct {v0, p0}, Lcom/reactnativedocumentpicker/RNDocumentPickerModule$1;-><init>(Lcom/reactnativedocumentpicker/RNDocumentPickerModule;)V

    iput-object v0, p0, Lcom/reactnativedocumentpicker/RNDocumentPickerModule;->activityEventListener:Lcom/facebook/react/bridge/ActivityEventListener;

    .line 69
    invoke-virtual {p1, v0}, Lcom/facebook/react/bridge/ReactApplicationContext;->addActivityEventListener(Lcom/facebook/react/bridge/ActivityEventListener;)V

    return-void
.end method

.method private onPickDirectoryResult(ILandroid/content/Intent;)V
    .locals 1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 182
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Unknown activity result: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "UNKNOWN_ACTIVITY_RESULT"

    invoke-direct {p0, p2, p1}, Lcom/reactnativedocumentpicker/RNDocumentPickerModule;->sendError(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    if-eqz p2, :cond_2

    .line 186
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_0

    .line 190
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    .line 192
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object p2

    const-string v0, "uri"

    .line 193
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, v0, p1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/reactnativedocumentpicker/RNDocumentPickerModule;->promise:Lcom/facebook/react/bridge/Promise;

    .line 194
    invoke-interface {p1, p2}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    return-void

    :cond_2
    :goto_0
    const-string p1, "INVALID_DATA_RETURNED"

    const-string p2, "Invalid data returned by intent"

    .line 187
    invoke-direct {p0, p1, p2}, Lcom/reactnativedocumentpicker/RNDocumentPickerModule;->sendError(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private readableArrayToStringArray(Lcom/facebook/react/bridge/ReadableArray;)[Ljava/lang/String;
    .locals 4

    .line 97
    invoke-interface {p1}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v0

    .line 98
    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 100
    invoke-interface {p1, v2}, Lcom/facebook/react/bridge/ReadableArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private sendError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 351
    invoke-direct {p0, p1, p2, v0}, Lcom/reactnativedocumentpicker/RNDocumentPickerModule;->sendError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method private sendError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 2

    iget-object v0, p0, Lcom/reactnativedocumentpicker/RNDocumentPickerModule;->promise:Lcom/facebook/react/bridge/Promise;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/reactnativedocumentpicker/RNDocumentPickerModule;->promise:Lcom/facebook/react/bridge/Promise;

    .line 358
    invoke-interface {v0, p1, p2, p3}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "RNDocumentPicker"

    return-object v0
.end method

.method public invalidate()V
    .locals 2

    .line 107
    invoke-virtual {p0}, Lcom/reactnativedocumentpicker/RNDocumentPickerModule;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v0

    iget-object v1, p0, Lcom/reactnativedocumentpicker/RNDocumentPickerModule;->activityEventListener:Lcom/facebook/react/bridge/ActivityEventListener;

    invoke-virtual {v0, v1}, Lcom/facebook/react/bridge/ReactApplicationContext;->removeActivityEventListener(Lcom/facebook/react/bridge/ActivityEventListener;)V

    .line 108
    invoke-super {p0}, Lcom/reactnativedocumentpicker/NativeDocumentPickerSpec;->invalidate()V

    return-void
.end method

.method public onShowActivityResult(ILandroid/content/Intent;Lcom/facebook/react/bridge/Promise;)V
    .locals 4

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 199
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Unknown activity result: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "UNKNOWN_ACTIVITY_RESULT"

    invoke-direct {p0, p2, p1}, Lcom/reactnativedocumentpicker/RNDocumentPickerModule;->sendError(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    if-eqz p2, :cond_1

    .line 206
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    .line 207
    invoke-virtual {p2}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object p2

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    move-object p2, p1

    .line 211
    :goto_0
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    if-eqz p2, :cond_2

    .line 213
    invoke-virtual {p2}, Landroid/content/ClipData;->getItemCount()I

    move-result v2

    if-lez v2, :cond_2

    .line 214
    invoke-virtual {p2}, Landroid/content/ClipData;->getItemCount()I

    move-result p1

    move v2, v1

    :goto_1
    if-ge v2, p1, :cond_3

    .line 216
    invoke-virtual {p2, v2}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v3

    .line 217
    invoke-virtual {v3}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    if-eqz p1, :cond_4

    .line 220
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 226
    :cond_3
    new-instance p1, Lcom/reactnativedocumentpicker/RNDocumentPickerModule$ProcessDataTask;

    invoke-virtual {p0}, Lcom/reactnativedocumentpicker/RNDocumentPickerModule;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object p2

    iget-object v2, p0, Lcom/reactnativedocumentpicker/RNDocumentPickerModule;->copyTo:Ljava/lang/String;

    invoke-direct {p1, p2, v0, v2, p3}, Lcom/reactnativedocumentpicker/RNDocumentPickerModule$ProcessDataTask;-><init>(Lcom/facebook/react/bridge/ReactContext;Ljava/util/List;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V

    new-array p2, v1, [Ljava/lang/Void;

    invoke-virtual {p1, p2}, Lcom/reactnativedocumentpicker/RNDocumentPickerModule$ProcessDataTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_2

    :cond_4
    const-string p1, "INVALID_DATA_RETURNED"

    const-string p2, "Invalid data returned by intent"

    .line 222
    invoke-direct {p0, p1, p2}, Lcom/reactnativedocumentpicker/RNDocumentPickerModule;->sendError(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string p2, "UNEXPECTED_EXCEPTION"

    .line 228
    invoke-virtual {p1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p2, p3, p1}, Lcom/reactnativedocumentpicker/RNDocumentPickerModule;->sendError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_2
    return-void
.end method

.method public pick(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V
    .locals 6
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    const-string v0, "allowMultiSelection"

    const-string v1, "type"

    .line 119
    invoke-virtual {p0}, Lcom/reactnativedocumentpicker/RNDocumentPickerModule;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v2

    iput-object p2, p0, Lcom/reactnativedocumentpicker/RNDocumentPickerModule;->promise:Lcom/facebook/react/bridge/Promise;

    const-string p2, "copyTo"

    .line 121
    invoke-interface {p1, p2}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {p1, p2}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iput-object p2, p0, Lcom/reactnativedocumentpicker/RNDocumentPickerModule;->copyTo:Ljava/lang/String;

    if-nez v2, :cond_1

    const-string p1, "ACTIVITY_DOES_NOT_EXIST"

    const-string p2, "Current activity does not exist"

    .line 124
    invoke-direct {p0, p1, p2}, Lcom/reactnativedocumentpicker/RNDocumentPickerModule;->sendError(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 129
    :cond_1
    :try_start_0
    new-instance p2, Landroid/content/Intent;

    const-string v3, "android.intent.action.GET_CONTENT"

    invoke-direct {p2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "android.intent.category.OPENABLE"

    .line 130
    invoke-virtual {p2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "*/*"

    .line 132
    invoke-virtual {p2, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 133
    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->isNull(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v3, :cond_3

    .line 134
    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->getArray(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableArray;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 136
    invoke-interface {v1}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v3

    if-le v3, v5, :cond_2

    .line 137
    invoke-direct {p0, v1}, Lcom/reactnativedocumentpicker/RNDocumentPickerModule;->readableArrayToStringArray(Lcom/facebook/react/bridge/ReadableArray;)[Ljava/lang/String;

    move-result-object v1

    const-string v3, "android.intent.extra.MIME_TYPES"

    .line 138
    invoke-virtual {p2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "|"

    .line 139
    invoke-static {v3, v1}, Ljava/lang/String;->join(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 140
    :cond_2
    invoke-interface {v1}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v3

    if-ne v3, v5, :cond_3

    .line 141
    invoke-interface {v1, v4}, Lcom/facebook/react/bridge/ReadableArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 146
    :cond_3
    :goto_1
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    move v4, v5

    :cond_4
    const-string p1, "android.intent.extra.ALLOW_MULTIPLE"

    .line 147
    invoke-virtual {p2, p1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 149
    sget-object p1, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    const/16 v0, 0x29

    invoke-virtual {v2, p2, v0, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 153
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const-string p2, "FAILED_TO_SHOW_PICKER"

    .line 154
    invoke-virtual {p1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lcom/reactnativedocumentpicker/RNDocumentPickerModule;->sendError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :catch_1
    move-exception p1

    const-string p2, "UNABLE_TO_OPEN_FILE_TYPE"

    .line 151
    invoke-virtual {p1}, Landroid/content/ActivityNotFoundException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lcom/reactnativedocumentpicker/RNDocumentPickerModule;->sendError(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method public pickDirectory(Lcom/facebook/react/bridge/Promise;)V
    .locals 3
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 160
    invoke-virtual {p0}, Lcom/reactnativedocumentpicker/RNDocumentPickerModule;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "ACTIVITY_DOES_NOT_EXIST"

    const-string v1, "Current activity does not exist"

    .line 163
    invoke-interface {p1, v0, v1}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iput-object p1, p0, Lcom/reactnativedocumentpicker/RNDocumentPickerModule;->promise:Lcom/facebook/react/bridge/Promise;

    .line 168
    :try_start_0
    new-instance p1, Landroid/content/Intent;

    const-string v1, "android.intent.action.OPEN_DOCUMENT_TREE"

    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x2a

    const/4 v2, 0x0

    .line 169
    invoke-virtual {v0, p1, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "FAILED_TO_SHOW_PICKER"

    const-string v1, "Failed to create directory picker"

    .line 171
    invoke-direct {p0, v0, v1, p1}, Lcom/reactnativedocumentpicker/RNDocumentPickerModule;->sendError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public releaseSecureAccess(Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/Promise;)V
    .locals 1

    const-string p1, "RNDocumentPicker:releaseSecureAccess"

    const-string v0, "releaseSecureAccess is not supported on Android"

    .line 177
    invoke-interface {p2, p1, v0}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
