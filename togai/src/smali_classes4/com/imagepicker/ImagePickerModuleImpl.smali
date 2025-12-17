.class public Lcom/imagepicker/ImagePickerModuleImpl;
.super Ljava/lang/Object;
.source "ImagePickerModuleImpl.java"

# interfaces
.implements Lcom/facebook/react/bridge/ActivityEventListener;


# static fields
.field static final NAME:Ljava/lang/String; = "ImagePicker"

.field public static final REQUEST_LAUNCH_IMAGE_CAPTURE:I = 0x32c9

.field public static final REQUEST_LAUNCH_LIBRARY:I = 0x32cb

.field public static final REQUEST_LAUNCH_VIDEO_CAPTURE:I = 0x32ca


# instance fields
.field callback:Lcom/facebook/react/bridge/Callback;

.field cameraCaptureURI:Landroid/net/Uri;

.field private fileUri:Landroid/net/Uri;

.field options:Lcom/imagepicker/Options;

.field private reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;


# direct methods
.method public static synthetic $r8$lambda$8oASgjjn_pxZs4iUHHoPmpTmf2g(Lcom/imagepicker/ImagePickerModuleImpl;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/imagepicker/ImagePickerModuleImpl;->lambda$onAssetsObtained$0(Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/imagepicker/ImagePickerModuleImpl;->reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    .line 45
    invoke-virtual {p1, p0}, Lcom/facebook/react/bridge/ReactApplicationContext;->addActivityEventListener(Lcom/facebook/react/bridge/ActivityEventListener;)V

    return-void
.end method

.method private synthetic lambda$onAssetsObtained$0(Ljava/util/List;)V
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/imagepicker/ImagePickerModuleImpl;->callback:Lcom/facebook/react/bridge/Callback;

    new-array v4, v1, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/imagepicker/ImagePickerModuleImpl;->options:Lcom/imagepicker/Options;

    iget-object v6, p0, Lcom/imagepicker/ImagePickerModuleImpl;->reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    .line 173
    invoke-static {p1, v5, v6}, Lcom/imagepicker/Utils;->getResponseMap(Ljava/util/List;Lcom/imagepicker/Options;Landroid/content/Context;)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object p1

    aput-object p1, v4, v0

    invoke-interface {v3, v4}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    iput-object v2, p0, Lcom/imagepicker/ImagePickerModuleImpl;->callback:Lcom/facebook/react/bridge/Callback;

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    :try_start_1
    iget-object v3, p0, Lcom/imagepicker/ImagePickerModuleImpl;->callback:Lcom/facebook/react/bridge/Callback;

    new-array v1, v1, [Ljava/lang/Object;

    .line 175
    sget-object v4, Lcom/imagepicker/Utils;->errOthers:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/imagepicker/Utils;->getErrorMap(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object p1

    aput-object p1, v1, v0

    invoke-interface {v3, v1}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    return-void

    :goto_2
    iput-object v2, p0, Lcom/imagepicker/ImagePickerModuleImpl;->callback:Lcom/facebook/react/bridge/Callback;

    .line 178
    throw p1
.end method


# virtual methods
.method public launchCamera(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Callback;)V
    .locals 5

    iget-object v0, p0, Lcom/imagepicker/ImagePickerModuleImpl;->reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    .line 49
    invoke-static {v0}, Lcom/imagepicker/Utils;->isCameraAvailable(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 50
    sget-object p1, Lcom/imagepicker/Utils;->errCameraUnavailable:Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/imagepicker/Utils;->getErrorMap(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/imagepicker/ImagePickerModuleImpl;->reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    .line 54
    invoke-virtual {v0}, Lcom/facebook/react/bridge/ReactApplicationContext;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_1

    .line 56
    sget-object p1, Lcom/imagepicker/Utils;->errOthers:Ljava/lang/String;

    const-string v0, "Activity error"

    invoke-static {p1, v0}, Lcom/imagepicker/Utils;->getErrorMap(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    return-void

    :cond_1
    iget-object v2, p0, Lcom/imagepicker/ImagePickerModuleImpl;->reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    .line 60
    invoke-static {v2, v0}, Lcom/imagepicker/Utils;->isCameraPermissionFulfilled(Landroid/content/Context;Landroid/app/Activity;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 61
    sget-object p1, Lcom/imagepicker/Utils;->errOthers:Ljava/lang/String;

    sget-object v0, Lcom/imagepicker/Utils;->cameraPermissionDescription:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/imagepicker/Utils;->getErrorMap(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    return-void

    :cond_2
    iput-object p2, p0, Lcom/imagepicker/ImagePickerModuleImpl;->callback:Lcom/facebook/react/bridge/Callback;

    .line 66
    new-instance v2, Lcom/imagepicker/Options;

    invoke-direct {v2, p1}, Lcom/imagepicker/Options;-><init>(Lcom/facebook/react/bridge/ReadableMap;)V

    iput-object v2, p0, Lcom/imagepicker/ImagePickerModuleImpl;->options:Lcom/imagepicker/Options;

    .line 68
    iget-object p1, v2, Lcom/imagepicker/Options;->saveToPhotos:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_3

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-gt p1, v2, :cond_3

    invoke-static {v0}, Lcom/imagepicker/Utils;->hasPermission(Landroid/app/Activity;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 69
    sget-object p1, Lcom/imagepicker/Utils;->errPermission:Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/imagepicker/Utils;->getErrorMap(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    return-void

    :cond_3
    iget-object p1, p0, Lcom/imagepicker/ImagePickerModuleImpl;->options:Lcom/imagepicker/Options;

    .line 77
    iget-object p1, p1, Lcom/imagepicker/Options;->mediaType:Ljava/lang/String;

    sget-object v2, Lcom/imagepicker/Utils;->mediaTypeVideo:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 79
    new-instance p1, Landroid/content/Intent;

    const-string v2, "android.media.action.VIDEO_CAPTURE"

    invoke-direct {p1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/imagepicker/ImagePickerModuleImpl;->options:Lcom/imagepicker/Options;

    .line 80
    iget v2, v2, Lcom/imagepicker/Options;->videoQuality:I

    const-string v3, "android.intent.extra.videoQuality"

    invoke-virtual {p1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/imagepicker/ImagePickerModuleImpl;->options:Lcom/imagepicker/Options;

    .line 81
    iget v2, v2, Lcom/imagepicker/Options;->durationLimit:I

    if-lez v2, :cond_4

    iget-object v2, p0, Lcom/imagepicker/ImagePickerModuleImpl;->options:Lcom/imagepicker/Options;

    .line 82
    iget v2, v2, Lcom/imagepicker/Options;->durationLimit:I

    const-string v3, "android.intent.extra.durationLimit"

    invoke-virtual {p1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_4
    iget-object v2, p0, Lcom/imagepicker/ImagePickerModuleImpl;->reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    const-string v3, "mp4"

    .line 84
    invoke-static {v2, v3}, Lcom/imagepicker/Utils;->createFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    iget-object v3, p0, Lcom/imagepicker/ImagePickerModuleImpl;->reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    .line 85
    invoke-static {v2, v3}, Lcom/imagepicker/Utils;->createUri(Ljava/io/File;Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v3

    iput-object v3, p0, Lcom/imagepicker/ImagePickerModuleImpl;->cameraCaptureURI:Landroid/net/Uri;

    const/16 v3, 0x32ca

    goto :goto_0

    .line 88
    :cond_5
    new-instance p1, Landroid/content/Intent;

    const-string v2, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {p1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/imagepicker/ImagePickerModuleImpl;->reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    const-string v3, "jpg"

    .line 89
    invoke-static {v2, v3}, Lcom/imagepicker/Utils;->createFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    iget-object v3, p0, Lcom/imagepicker/ImagePickerModuleImpl;->reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    .line 90
    invoke-static {v2, v3}, Lcom/imagepicker/Utils;->createUri(Ljava/io/File;Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v3

    iput-object v3, p0, Lcom/imagepicker/ImagePickerModuleImpl;->cameraCaptureURI:Landroid/net/Uri;

    const/16 v3, 0x32c9

    :goto_0
    iget-object v4, p0, Lcom/imagepicker/ImagePickerModuleImpl;->options:Lcom/imagepicker/Options;

    .line 93
    iget-object v4, v4, Lcom/imagepicker/Options;->useFrontCamera:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 94
    invoke-static {p1}, Lcom/imagepicker/Utils;->setFrontCamera(Landroid/content/Intent;)V

    .line 97
    :cond_6
    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Lcom/imagepicker/ImagePickerModuleImpl;->fileUri:Landroid/net/Uri;

    const-string v2, "output"

    iget-object v4, p0, Lcom/imagepicker/ImagePickerModuleImpl;->cameraCaptureURI:Landroid/net/Uri;

    .line 98
    invoke-virtual {p1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 v2, 0x3

    .line 99
    invoke-virtual {p1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 102
    :try_start_0
    invoke-virtual {v0, p1, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 104
    sget-object v0, Lcom/imagepicker/Utils;->errOthers:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/ActivityNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/imagepicker/Utils;->getErrorMap(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/imagepicker/ImagePickerModuleImpl;->callback:Lcom/facebook/react/bridge/Callback;

    :goto_1
    return-void
.end method

.method public launchImageLibrary(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Callback;)V
    .locals 8

    iget-object v0, p0, Lcom/imagepicker/ImagePickerModuleImpl;->reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    .line 110
    invoke-virtual {v0}, Lcom/facebook/react/bridge/ReactApplicationContext;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 112
    sget-object p1, Lcom/imagepicker/Utils;->errOthers:Ljava/lang/String;

    const-string v0, "Activity error"

    invoke-static {p1, v0}, Lcom/imagepicker/Utils;->getErrorMap(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    return-void

    :cond_0
    iput-object p2, p0, Lcom/imagepicker/ImagePickerModuleImpl;->callback:Lcom/facebook/react/bridge/Callback;

    .line 117
    new-instance v1, Lcom/imagepicker/Options;

    invoke-direct {v1, p1}, Lcom/imagepicker/Options;-><init>(Lcom/facebook/react/bridge/ReadableMap;)V

    iput-object v1, p0, Lcom/imagepicker/ImagePickerModuleImpl;->options:Lcom/imagepicker/Options;

    .line 123
    iget p1, v1, Lcom/imagepicker/Options;->selectionLimit:I

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    move v2, v1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lcom/imagepicker/ImagePickerModuleImpl;->options:Lcom/imagepicker/Options;

    .line 125
    iget-object v3, v3, Lcom/imagepicker/Options;->mediaType:Ljava/lang/String;

    sget-object v4, Lcom/imagepicker/Utils;->mediaTypePhoto:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    iget-object v4, p0, Lcom/imagepicker/ImagePickerModuleImpl;->options:Lcom/imagepicker/Options;

    .line 126
    iget-object v4, v4, Lcom/imagepicker/Options;->mediaType:Ljava/lang/String;

    sget-object v5, Lcom/imagepicker/Utils;->mediaTypeVideo:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x21

    if-ge v5, v6, :cond_4

    if-eqz v2, :cond_3

    if-nez v3, :cond_2

    if-eqz v4, :cond_3

    .line 130
    :cond_2
    new-instance v5, Landroid/content/Intent;

    const-string v7, "android.intent.action.PICK"

    invoke-direct {v5, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 132
    :cond_3
    new-instance v5, Landroid/content/Intent;

    const-string v7, "android.intent.action.GET_CONTENT"

    invoke-direct {v5, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v7, "android.intent.category.OPENABLE"

    .line 133
    invoke-virtual {v5, v7}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 136
    :cond_4
    new-instance v5, Landroid/content/Intent;

    const-string v7, "android.provider.action.PICK_IMAGES"

    invoke-direct {v5, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    :goto_1
    if-nez v2, :cond_7

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v2, v6, :cond_5

    const-string p1, "android.intent.extra.ALLOW_MULTIPLE"

    .line 141
    invoke-virtual {v5, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_2

    :cond_5
    if-eq p1, v1, :cond_7

    if-nez p1, :cond_6

    .line 145
    invoke-static {}, Landroid/provider/MediaStore;->getPickImagesMaxLimit()I

    move-result p1

    :cond_6
    const-string v1, "android.provider.extra.PICK_IMAGES_MAX"

    .line 146
    invoke-virtual {v5, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_7
    :goto_2
    const-string p1, "image/*"

    if-eqz v3, :cond_8

    .line 152
    invoke-virtual {v5, p1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_3

    :cond_8
    const-string v1, "video/*"

    if-eqz v4, :cond_9

    .line 154
    invoke-virtual {v5, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_3

    :cond_9
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v2, v6, :cond_a

    const-string v2, "*/*"

    .line 156
    invoke-virtual {v5, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "android.intent.extra.MIME_TYPES"

    .line 157
    filled-new-array {p1, v1}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    :cond_a
    :goto_3
    const/16 p1, 0x32cb

    .line 161
    :try_start_0
    invoke-virtual {v0, v5, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception p1

    .line 163
    sget-object v0, Lcom/imagepicker/Utils;->errOthers:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/ActivityNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/imagepicker/Utils;->getErrorMap(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/imagepicker/ImagePickerModuleImpl;->callback:Lcom/facebook/react/bridge/Callback;

    :goto_4
    return-void
.end method

.method public onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V
    .locals 4

    .line 186
    invoke-static {p2}, Lcom/imagepicker/Utils;->isValidRequestCode(I)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/imagepicker/ImagePickerModuleImpl;->callback:Lcom/facebook/react/bridge/Callback;

    if-nez p1, :cond_0

    goto/16 :goto_2

    :cond_0
    const/4 p1, -0x1

    if-eq p3, p1, :cond_2

    const/16 p1, 0x32c9

    if-ne p2, p1, :cond_1

    iget-object p1, p0, Lcom/imagepicker/ImagePickerModuleImpl;->fileUri:Landroid/net/Uri;

    .line 192
    invoke-static {p1}, Lcom/imagepicker/Utils;->deleteFile(Landroid/net/Uri;)V

    :cond_1
    const/4 p1, 0x0

    const/4 p3, 0x1

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/imagepicker/ImagePickerModuleImpl;->callback:Lcom/facebook/react/bridge/Callback;

    new-array v2, p3, [Ljava/lang/Object;

    .line 195
    invoke-static {}, Lcom/imagepicker/Utils;->getCancelMap()Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v3

    aput-object v3, v2, p1

    invoke-interface {v1, v2}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v0, p0, Lcom/imagepicker/ImagePickerModuleImpl;->callback:Lcom/facebook/react/bridge/Callback;

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_1
    iget-object v2, p0, Lcom/imagepicker/ImagePickerModuleImpl;->callback:Lcom/facebook/react/bridge/Callback;

    new-array p3, p3, [Ljava/lang/Object;

    .line 198
    sget-object v3, Lcom/imagepicker/Utils;->errOthers:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/imagepicker/Utils;->getErrorMap(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v1

    aput-object v1, p3, p1

    invoke-interface {v2, p3}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iput-object v0, p0, Lcom/imagepicker/ImagePickerModuleImpl;->callback:Lcom/facebook/react/bridge/Callback;

    goto :goto_1

    :goto_0
    iput-object v0, p0, Lcom/imagepicker/ImagePickerModuleImpl;->callback:Lcom/facebook/react/bridge/Callback;

    .line 201
    throw p1

    :cond_2
    :goto_1
    packed-switch p2, :pswitch_data_0

    goto :goto_2

    .line 214
    :pswitch_0
    invoke-static {p4}, Lcom/imagepicker/Utils;->collectUrisFromData(Landroid/content/Intent;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/imagepicker/ImagePickerModuleImpl;->onAssetsObtained(Ljava/util/List;)V

    goto :goto_2

    :pswitch_1
    iget-object p1, p0, Lcom/imagepicker/ImagePickerModuleImpl;->options:Lcom/imagepicker/Options;

    .line 218
    iget-object p1, p1, Lcom/imagepicker/Options;->saveToPhotos:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/imagepicker/ImagePickerModuleImpl;->cameraCaptureURI:Landroid/net/Uri;

    iget-object p2, p0, Lcom/imagepicker/ImagePickerModuleImpl;->reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    const-string p3, "video"

    .line 219
    invoke-static {p1, p2, p3}, Lcom/imagepicker/Utils;->saveToPublicDirectory(Landroid/net/Uri;Landroid/content/Context;Ljava/lang/String;)V

    :cond_3
    iget-object p1, p0, Lcom/imagepicker/ImagePickerModuleImpl;->fileUri:Landroid/net/Uri;

    .line 222
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/imagepicker/ImagePickerModuleImpl;->onAssetsObtained(Ljava/util/List;)V

    goto :goto_2

    :pswitch_2
    iget-object p1, p0, Lcom/imagepicker/ImagePickerModuleImpl;->options:Lcom/imagepicker/Options;

    .line 206
    iget-object p1, p1, Lcom/imagepicker/Options;->saveToPhotos:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/imagepicker/ImagePickerModuleImpl;->cameraCaptureURI:Landroid/net/Uri;

    iget-object p2, p0, Lcom/imagepicker/ImagePickerModuleImpl;->reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    const-string p3, "photo"

    .line 207
    invoke-static {p1, p2, p3}, Lcom/imagepicker/Utils;->saveToPublicDirectory(Landroid/net/Uri;Landroid/content/Context;Ljava/lang/String;)V

    :cond_4
    iget-object p1, p0, Lcom/imagepicker/ImagePickerModuleImpl;->fileUri:Landroid/net/Uri;

    .line 210
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/imagepicker/ImagePickerModuleImpl;->onAssetsObtained(Ljava/util/List;)V

    :cond_5
    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x32c9
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method onAssetsObtained(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .line 169
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 171
    new-instance v1, Lcom/imagepicker/ImagePickerModuleImpl$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/imagepicker/ImagePickerModuleImpl$$ExternalSyntheticLambda0;-><init>(Lcom/imagepicker/ImagePickerModuleImpl;Ljava/util/List;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 0

    return-void
.end method
