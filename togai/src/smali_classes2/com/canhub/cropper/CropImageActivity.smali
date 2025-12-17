.class public Lcom/canhub/cropper/CropImageActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "CropImageActivity.kt"

# interfaces
.implements Lcom/canhub/cropper/CropImageView$OnSetImageUriCompleteListener;
.implements Lcom/canhub/cropper/CropImageView$OnCropImageCompleteListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/canhub/cropper/CropImageActivity$Source;,
        Lcom/canhub/cropper/CropImageActivity$Companion;,
        Lcom/canhub/cropper/CropImageActivity$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCropImageActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CropImageActivity.kt\ncom/canhub/cropper/CropImageActivity\n+ 2 Uri.kt\nandroidx/core/net/UriKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,375:1\n29#2:376\n1#3:377\n*S KotlinDebug\n*F\n+ 1 CropImageActivity.kt\ncom/canhub/cropper/CropImageActivity\n*L\n77#1:376\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u008e\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0016\u0018\u0000 C2\u00020\u00012\u00020\u00022\u00020\u0003:\u0002CDB\u0005\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u0013\u001a\u00020\u0014H\u0016J*\u0010\u0015\u001a\u00020\u00162\u0008\u0010\u0017\u001a\u0004\u0018\u00010\n2\u000e\u0010\u0018\u001a\n\u0018\u00010\u0019j\u0004\u0018\u0001`\u001a2\u0006\u0010\u001b\u001a\u00020\u001cH\u0016J\u0008\u0010\u001d\u001a\u00020\nH\u0002J\u0008\u0010\u001e\u001a\u00020\u0014H\u0016J\u0012\u0010\u001f\u001a\u00020\u00142\u0008\u0010 \u001a\u0004\u0018\u00010!H\u0016J\u0010\u0010\"\u001a\u00020#2\u0006\u0010$\u001a\u00020%H\u0016J\u0018\u0010&\u001a\u00020\u00142\u0006\u0010\'\u001a\u00020\u000c2\u0006\u0010(\u001a\u00020)H\u0016J\u0010\u0010*\u001a\u00020#2\u0006\u0010+\u001a\u00020,H\u0016J\u0012\u0010-\u001a\u00020\u00142\u0008\u0010.\u001a\u0004\u0018\u00010\nH\u0014J\u0010\u0010/\u001a\u00020\u00142\u0006\u00100\u001a\u00020!H\u0014J(\u00101\u001a\u00020\u00142\u0006\u0010\'\u001a\u00020\u000c2\u0006\u0010\u0017\u001a\u00020\n2\u000e\u0010\u0018\u001a\n\u0018\u00010\u0019j\u0004\u0018\u0001`\u001aH\u0016J\u0008\u00102\u001a\u00020\u0014H\u0016J\u0008\u00103\u001a\u00020\u0014H\u0016J\u0008\u00104\u001a\u00020\u0014H\u0002J\u0010\u00105\u001a\u00020\u00142\u0006\u00106\u001a\u000207H\u0002J\u0010\u00108\u001a\u00020\u00142\u0006\u00109\u001a\u00020\u001cH\u0016J\u0010\u0010:\u001a\u00020\u00142\u0006\u0010\u000b\u001a\u00020\u000cH\u0016J*\u0010;\u001a\u00020\u00142\u0008\u0010\u0017\u001a\u0004\u0018\u00010\n2\u000e\u0010\u0018\u001a\n\u0018\u00010\u0019j\u0004\u0018\u0001`\u001a2\u0006\u0010\u001b\u001a\u00020\u001cH\u0016J\u0008\u0010<\u001a\u00020\u0014H\u0016J\u001c\u0010=\u001a\u00020\u00142\u0012\u00105\u001a\u000e\u0012\u0004\u0012\u000207\u0012\u0004\u0012\u00020\u00140>H\u0016J\u0008\u0010?\u001a\u00020\u0014H\u0002J \u0010@\u001a\u00020\u00142\u0006\u0010$\u001a\u00020%2\u0006\u0010A\u001a\u00020\u001c2\u0006\u0010B\u001a\u00020\u001cH\u0016R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082.\u00a2\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u0004\u0018\u00010\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\r\u001a\u0004\u0018\u00010\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u000e\u001a\u0010\u0012\u000c\u0012\n \u0011*\u0004\u0018\u00010\u00100\u00100\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u0012\u001a\u0010\u0012\u000c\u0012\n \u0011*\u0004\u0018\u00010\n0\n0\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006E"
    }
    d2 = {
        "Lcom/canhub/cropper/CropImageActivity;",
        "Landroidx/appcompat/app/AppCompatActivity;",
        "Lcom/canhub/cropper/CropImageView$OnSetImageUriCompleteListener;",
        "Lcom/canhub/cropper/CropImageView$OnCropImageCompleteListener;",
        "()V",
        "binding",
        "Lcom/canhub/cropper/databinding/CropImageActivityBinding;",
        "cropImageOptions",
        "Lcom/canhub/cropper/CropImageOptions;",
        "cropImageUri",
        "Landroid/net/Uri;",
        "cropImageView",
        "Lcom/canhub/cropper/CropImageView;",
        "latestTmpUri",
        "pickImageGallery",
        "Landroidx/activity/result/ActivityResultLauncher;",
        "",
        "kotlin.jvm.PlatformType",
        "takePicture",
        "cropImage",
        "",
        "getResultIntent",
        "Landroid/content/Intent;",
        "uri",
        "error",
        "Ljava/lang/Exception;",
        "Lkotlin/Exception;",
        "sampleSize",
        "",
        "getTmpFileUri",
        "onBackPressed",
        "onCreate",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onCreateOptionsMenu",
        "",
        "menu",
        "Landroid/view/Menu;",
        "onCropImageComplete",
        "view",
        "result",
        "Lcom/canhub/cropper/CropImageView$CropResult;",
        "onOptionsItemSelected",
        "item",
        "Landroid/view/MenuItem;",
        "onPickImageResult",
        "resultUri",
        "onSaveInstanceState",
        "outState",
        "onSetImageUriComplete",
        "onStart",
        "onStop",
        "openCamera",
        "openSource",
        "source",
        "Lcom/canhub/cropper/CropImageActivity$Source;",
        "rotateImage",
        "degrees",
        "setCropImageView",
        "setResult",
        "setResultCancel",
        "showImageSourceDialog",
        "Lkotlin/Function1;",
        "showIntentChooser",
        "updateMenuItemIconColor",
        "itemId",
        "color",
        "Companion",
        "Source",
        "cropper_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final BUNDLE_KEY_TMP_URI:Ljava/lang/String; = "bundle_key_tmp_uri"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final Companion:Lcom/canhub/cropper/CropImageActivity$Companion;


# instance fields
.field private binding:Lcom/canhub/cropper/databinding/CropImageActivityBinding;

.field private cropImageOptions:Lcom/canhub/cropper/CropImageOptions;

.field private cropImageUri:Landroid/net/Uri;

.field private cropImageView:Lcom/canhub/cropper/CropImageView;

.field private latestTmpUri:Landroid/net/Uri;

.field private final pickImageGallery:Landroidx/activity/result/ActivityResultLauncher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/activity/result/ActivityResultLauncher<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final takePicture:Landroidx/activity/result/ActivityResultLauncher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/activity/result/ActivityResultLauncher<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$1pg3RduQ_0s0tOwHO7uQqNzynyY(Lcom/canhub/cropper/CropImageActivity;Ljava/lang/Boolean;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/canhub/cropper/CropImageActivity;->takePicture$lambda-1(Lcom/canhub/cropper/CropImageActivity;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic $r8$lambda$8d0SyBfqZBq2EMFA6nOVWjQNv2s(Lkotlin/jvm/functions/Function1;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/canhub/cropper/CropImageActivity;->showImageSourceDialog$lambda-10(Lkotlin/jvm/functions/Function1;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$i3UdKcKEjb67RjNWy9Pux3_ToAM(Lcom/canhub/cropper/CropImageActivity;Landroid/net/Uri;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/canhub/cropper/CropImageActivity;->pickImageGallery$lambda-0(Lcom/canhub/cropper/CropImageActivity;Landroid/net/Uri;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/canhub/cropper/CropImageActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/canhub/cropper/CropImageActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/canhub/cropper/CropImageActivity;->Companion:Lcom/canhub/cropper/CropImageActivity$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 25
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 44
    new-instance v0, Landroidx/activity/result/contract/ActivityResultContracts$GetContent;

    invoke-direct {v0}, Landroidx/activity/result/contract/ActivityResultContracts$GetContent;-><init>()V

    check-cast v0, Landroidx/activity/result/contract/ActivityResultContract;

    new-instance v1, Lcom/canhub/cropper/CropImageActivity$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/canhub/cropper/CropImageActivity$$ExternalSyntheticLambda1;-><init>(Lcom/canhub/cropper/CropImageActivity;)V

    invoke-virtual {p0, v0, v1}, Lcom/canhub/cropper/CropImageActivity;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v0

    const-string v1, "registerForActivityResul\u2026mageResult(uri)\n        }"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/canhub/cropper/CropImageActivity;->pickImageGallery:Landroidx/activity/result/ActivityResultLauncher;

    .line 47
    new-instance v0, Landroidx/activity/result/contract/ActivityResultContracts$TakePicture;

    invoke-direct {v0}, Landroidx/activity/result/contract/ActivityResultContracts$TakePicture;-><init>()V

    check-cast v0, Landroidx/activity/result/contract/ActivityResultContract;

    new-instance v1, Lcom/canhub/cropper/CropImageActivity$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/canhub/cropper/CropImageActivity$$ExternalSyntheticLambda2;-><init>(Lcom/canhub/cropper/CropImageActivity;)V

    invoke-virtual {p0, v0, v1}, Lcom/canhub/cropper/CropImageActivity;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v0

    const-string v1, "registerForActivityResul\u2026ckImageResult(null)\n    }"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/canhub/cropper/CropImageActivity;->takePicture:Landroidx/activity/result/ActivityResultLauncher;

    return-void
.end method

.method public static final synthetic access$openSource(Lcom/canhub/cropper/CropImageActivity;Lcom/canhub/cropper/CropImageActivity$Source;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lcom/canhub/cropper/CropImageActivity;->openSource(Lcom/canhub/cropper/CropImageActivity$Source;)V

    return-void
.end method

.method private final getTmpFileUri()Landroid/net/Uri;
    .locals 3

    const-string v0, ".png"

    .line 138
    invoke-virtual {p0}, Lcom/canhub/cropper/CropImageActivity;->getCacheDir()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "tmp_image_file"

    invoke-static {v2, v0, v1}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    .line 139
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 140
    invoke-virtual {v0}, Ljava/io/File;->deleteOnExit()V

    .line 143
    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    const-string/jumbo v2, "tmpFile"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v0}, Lcom/canhub/cropper/utils/GetUriForFileKt;->getUriForFile(Landroid/content/Context;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private final openCamera()V
    .locals 2

    .line 131
    invoke-direct {p0}, Lcom/canhub/cropper/CropImageActivity;->getTmpFileUri()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/canhub/cropper/CropImageActivity;->latestTmpUri:Landroid/net/Uri;

    iget-object v1, p0, Lcom/canhub/cropper/CropImageActivity;->takePicture:Landroidx/activity/result/ActivityResultLauncher;

    .line 133
    invoke-virtual {v1, v0}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    return-void
.end method

.method private final openSource(Lcom/canhub/cropper/CropImageActivity$Source;)V
    .locals 1

    .line 124
    sget-object v0, Lcom/canhub/cropper/CropImageActivity$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Lcom/canhub/cropper/CropImageActivity$Source;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/canhub/cropper/CropImageActivity;->pickImageGallery:Landroidx/activity/result/ActivityResultLauncher;

    const-string v0, "image/*"

    .line 126
    invoke-virtual {p1, v0}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    goto :goto_0

    .line 125
    :cond_1
    invoke-direct {p0}, Lcom/canhub/cropper/CropImageActivity;->openCamera()V

    :goto_0
    return-void
.end method

.method private static final pickImageGallery$lambda-0(Lcom/canhub/cropper/CropImageActivity;Landroid/net/Uri;)V
    .locals 1

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    invoke-virtual {p0, p1}, Lcom/canhub/cropper/CropImageActivity;->onPickImageResult(Landroid/net/Uri;)V

    return-void
.end method

.method private static final showImageSourceDialog$lambda-10(Lkotlin/jvm/functions/Function1;Landroid/content/DialogInterface;I)V
    .locals 0

    const-string p1, "$openSource"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p2, :cond_0

    .line 159
    sget-object p1, Lcom/canhub/cropper/CropImageActivity$Source;->CAMERA:Lcom/canhub/cropper/CropImageActivity$Source;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/canhub/cropper/CropImageActivity$Source;->GALLERY:Lcom/canhub/cropper/CropImageActivity$Source;

    :goto_0
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private final showIntentChooser()V
    .locals 5

    .line 91
    new-instance v0, Lcom/canhub/cropper/CropImageIntentChooser;

    .line 92
    move-object v1, p0

    check-cast v1, Landroidx/activity/ComponentActivity;

    .line 93
    new-instance v2, Lcom/canhub/cropper/CropImageActivity$showIntentChooser$ciIntentChooser$1;

    invoke-direct {v2, p0}, Lcom/canhub/cropper/CropImageActivity$showIntentChooser$ciIntentChooser$1;-><init>(Lcom/canhub/cropper/CropImageActivity;)V

    check-cast v2, Lcom/canhub/cropper/CropImageIntentChooser$ResultCallback;

    .line 91
    invoke-direct {v0, v1, v2}, Lcom/canhub/cropper/CropImageIntentChooser;-><init>(Landroidx/activity/ComponentActivity;Lcom/canhub/cropper/CropImageIntentChooser$ResultCallback;)V

    iget-object v1, p0, Lcom/canhub/cropper/CropImageActivity;->cropImageOptions:Lcom/canhub/cropper/CropImageOptions;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const-string v1, "cropImageOptions"

    .line 103
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v2

    .line 104
    :cond_0
    iget-object v3, v1, Lcom/canhub/cropper/CropImageOptions;->intentChooserTitle:Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 105
    move-object v4, v3

    check-cast v4, Ljava/lang/CharSequence;

    invoke-static {v4}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_1

    goto :goto_0

    :cond_1
    move-object v3, v2

    :goto_0
    if-eqz v3, :cond_2

    .line 107
    invoke-virtual {v0, v3}, Lcom/canhub/cropper/CropImageIntentChooser;->setIntentChooserTitle(Ljava/lang/String;)Lcom/canhub/cropper/CropImageIntentChooser;

    .line 109
    :cond_2
    iget-object v3, v1, Lcom/canhub/cropper/CropImageOptions;->intentChooserPriorityList:Ljava/util/List;

    if-eqz v3, :cond_4

    .line 110
    move-object v4, v3

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_3

    goto :goto_1

    :cond_3
    move-object v3, v2

    :goto_1
    if-eqz v3, :cond_4

    .line 112
    invoke-virtual {v0, v3}, Lcom/canhub/cropper/CropImageIntentChooser;->setupPriorityAppsList(Ljava/util/List;)Lcom/canhub/cropper/CropImageIntentChooser;

    .line 114
    :cond_4
    iget-boolean v3, v1, Lcom/canhub/cropper/CropImageOptions;->imageSourceIncludeCamera:Z

    if-eqz v3, :cond_5

    invoke-direct {p0}, Lcom/canhub/cropper/CropImageActivity;->getTmpFileUri()Landroid/net/Uri;

    move-result-object v2

    .line 116
    :cond_5
    iget-boolean v3, v1, Lcom/canhub/cropper/CropImageOptions;->imageSourceIncludeCamera:Z

    .line 117
    iget-boolean v1, v1, Lcom/canhub/cropper/CropImageOptions;->imageSourceIncludeGallery:Z

    .line 115
    invoke-virtual {v0, v3, v1, v2}, Lcom/canhub/cropper/CropImageIntentChooser;->showChooserIntent(ZZLandroid/net/Uri;)V

    return-void
.end method

.method private static final takePicture$lambda-1(Lcom/canhub/cropper/CropImageActivity;Ljava/lang/Boolean;)V
    .locals 1

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    .line 48
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/canhub/cropper/CropImageActivity;->latestTmpUri:Landroid/net/Uri;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/canhub/cropper/CropImageActivity;->onPickImageResult(Landroid/net/Uri;)V

    return-void
.end method


# virtual methods
.method public cropImage()V
    .locals 10

    iget-object v0, p0, Lcom/canhub/cropper/CropImageActivity;->cropImageOptions:Lcom/canhub/cropper/CropImageOptions;

    const-string v1, "cropImageOptions"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 280
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_0
    iget-boolean v0, v0, Lcom/canhub/cropper/CropImageOptions;->noOutputImage:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p0, v2, v2, v0}, Lcom/canhub/cropper/CropImageActivity;->setResult(Landroid/net/Uri;Ljava/lang/Exception;I)V

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lcom/canhub/cropper/CropImageActivity;->cropImageView:Lcom/canhub/cropper/CropImageView;

    if-eqz v3, :cond_8

    iget-object v0, p0, Lcom/canhub/cropper/CropImageActivity;->cropImageOptions:Lcom/canhub/cropper/CropImageOptions;

    if-nez v0, :cond_2

    .line 282
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_2
    iget-object v4, v0, Lcom/canhub/cropper/CropImageOptions;->outputCompressFormat:Landroid/graphics/Bitmap$CompressFormat;

    iget-object v0, p0, Lcom/canhub/cropper/CropImageActivity;->cropImageOptions:Lcom/canhub/cropper/CropImageOptions;

    if-nez v0, :cond_3

    .line 283
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_3
    iget v5, v0, Lcom/canhub/cropper/CropImageOptions;->outputCompressQuality:I

    iget-object v0, p0, Lcom/canhub/cropper/CropImageActivity;->cropImageOptions:Lcom/canhub/cropper/CropImageOptions;

    if-nez v0, :cond_4

    .line 284
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_4
    iget v6, v0, Lcom/canhub/cropper/CropImageOptions;->outputRequestWidth:I

    iget-object v0, p0, Lcom/canhub/cropper/CropImageActivity;->cropImageOptions:Lcom/canhub/cropper/CropImageOptions;

    if-nez v0, :cond_5

    .line 285
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_5
    iget v7, v0, Lcom/canhub/cropper/CropImageOptions;->outputRequestHeight:I

    iget-object v0, p0, Lcom/canhub/cropper/CropImageActivity;->cropImageOptions:Lcom/canhub/cropper/CropImageOptions;

    if-nez v0, :cond_6

    .line 286
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_6
    iget-object v8, v0, Lcom/canhub/cropper/CropImageOptions;->outputRequestSizeOptions:Lcom/canhub/cropper/CropImageView$RequestSizeOptions;

    iget-object v0, p0, Lcom/canhub/cropper/CropImageActivity;->cropImageOptions:Lcom/canhub/cropper/CropImageOptions;

    if-nez v0, :cond_7

    .line 287
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_7
    move-object v2, v0

    :goto_0
    iget-object v9, v2, Lcom/canhub/cropper/CropImageOptions;->customOutputUri:Landroid/net/Uri;

    .line 281
    invoke-virtual/range {v3 .. v9}, Lcom/canhub/cropper/CropImageView;->croppedImageAsync(Landroid/graphics/Bitmap$CompressFormat;IIILcom/canhub/cropper/CropImageView$RequestSizeOptions;Landroid/net/Uri;)V

    :cond_8
    :goto_1
    return-void
.end method

.method public getResultIntent(Landroid/net/Uri;Ljava/lang/Exception;I)Landroid/content/Intent;
    .locals 10

    .line 328
    new-instance v9, Lcom/canhub/cropper/CropImage$ActivityResult;

    iget-object v0, p0, Lcom/canhub/cropper/CropImageActivity;->cropImageView:Lcom/canhub/cropper/CropImageView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 329
    invoke-virtual {v0}, Lcom/canhub/cropper/CropImageView;->getImageUri()Landroid/net/Uri;

    move-result-object v0

    move-object v2, v0

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    iget-object v0, p0, Lcom/canhub/cropper/CropImageActivity;->cropImageView:Lcom/canhub/cropper/CropImageView;

    if-eqz v0, :cond_1

    .line 332
    invoke-virtual {v0}, Lcom/canhub/cropper/CropImageView;->getCropPoints()[F

    move-result-object v0

    move-object v4, v0

    goto :goto_1

    :cond_1
    move-object v4, v1

    :goto_1
    iget-object v0, p0, Lcom/canhub/cropper/CropImageActivity;->cropImageView:Lcom/canhub/cropper/CropImageView;

    if-eqz v0, :cond_2

    .line 333
    invoke-virtual {v0}, Lcom/canhub/cropper/CropImageView;->getCropRect()Landroid/graphics/Rect;

    move-result-object v0

    move-object v5, v0

    goto :goto_2

    :cond_2
    move-object v5, v1

    :goto_2
    iget-object v0, p0, Lcom/canhub/cropper/CropImageActivity;->cropImageView:Lcom/canhub/cropper/CropImageView;

    if-eqz v0, :cond_3

    .line 334
    invoke-virtual {v0}, Lcom/canhub/cropper/CropImageView;->getRotatedDegrees()I

    move-result v0

    goto :goto_3

    :cond_3
    const/4 v0, 0x0

    :goto_3
    move v6, v0

    iget-object v0, p0, Lcom/canhub/cropper/CropImageActivity;->cropImageView:Lcom/canhub/cropper/CropImageView;

    if-eqz v0, :cond_4

    .line 335
    invoke-virtual {v0}, Lcom/canhub/cropper/CropImageView;->getWholeImageRect()Landroid/graphics/Rect;

    move-result-object v0

    move-object v7, v0

    goto :goto_4

    :cond_4
    move-object v7, v1

    :goto_4
    move-object v0, v9

    move-object v1, v2

    move-object v2, p1

    move-object v3, p2

    move v8, p3

    .line 328
    invoke-direct/range {v0 .. v8}, Lcom/canhub/cropper/CropImage$ActivityResult;-><init>(Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/Exception;[FLandroid/graphics/Rect;ILandroid/graphics/Rect;I)V

    .line 338
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 339
    invoke-virtual {p0}, Lcom/canhub/cropper/CropImageActivity;->getIntent()Landroid/content/Intent;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    const-string p2, "CROP_IMAGE_EXTRA_RESULT"

    .line 340
    check-cast v9, Landroid/os/Parcelable;

    invoke-virtual {p1, p2, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    return-object p1
.end method

.method public onBackPressed()V
    .locals 0

    .line 244
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onBackPressed()V

    .line 245
    invoke-virtual {p0}, Lcom/canhub/cropper/CropImageActivity;->setResultCancel()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 52
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 54
    invoke-virtual {p0}, Lcom/canhub/cropper/CropImageActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lcom/canhub/cropper/databinding/CropImageActivityBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/canhub/cropper/databinding/CropImageActivityBinding;

    move-result-object v0

    const-string v1, "inflate(layoutInflater)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/canhub/cropper/CropImageActivity;->binding:Lcom/canhub/cropper/databinding/CropImageActivityBinding;

    const-string v1, "binding"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 55
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_0
    invoke-virtual {v0}, Lcom/canhub/cropper/databinding/CropImageActivityBinding;->getRoot()Lcom/canhub/cropper/CropImageView;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/canhub/cropper/CropImageActivity;->setContentView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/canhub/cropper/CropImageActivity;->binding:Lcom/canhub/cropper/databinding/CropImageActivityBinding;

    if-nez v0, :cond_1

    .line 56
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_1
    iget-object v0, v0, Lcom/canhub/cropper/databinding/CropImageActivityBinding;->cropImageView:Lcom/canhub/cropper/CropImageView;

    const-string v1, "binding.cropImageView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/canhub/cropper/CropImageActivity;->setCropImageView(Lcom/canhub/cropper/CropImageView;)V

    .line 57
    invoke-virtual {p0}, Lcom/canhub/cropper/CropImageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "CROP_IMAGE_EXTRA_BUNDLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v1, "CROP_IMAGE_EXTRA_SOURCE"

    .line 58
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    goto :goto_0

    :cond_2
    move-object v1, v2

    :goto_0
    iput-object v1, p0, Lcom/canhub/cropper/CropImageActivity;->cropImageUri:Landroid/net/Uri;

    if-eqz v0, :cond_3

    const-string v1, "CROP_IMAGE_EXTRA_OPTIONS"

    .line 60
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/canhub/cropper/CropImageOptions;

    goto :goto_1

    :cond_3
    move-object v0, v2

    :goto_1
    if-nez v0, :cond_4

    new-instance v0, Lcom/canhub/cropper/CropImageOptions;

    invoke-direct {v0}, Lcom/canhub/cropper/CropImageOptions;-><init>()V

    :cond_4
    iput-object v0, p0, Lcom/canhub/cropper/CropImageActivity;->cropImageOptions:Lcom/canhub/cropper/CropImageOptions;

    const-string v0, "cropImageOptions"

    if-nez p1, :cond_10

    iget-object p1, p0, Lcom/canhub/cropper/CropImageActivity;->cropImageUri:Landroid/net/Uri;

    if-eqz p1, :cond_6

    .line 63
    sget-object v1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_2

    :cond_5
    iget-object p1, p0, Lcom/canhub/cropper/CropImageActivity;->cropImageView:Lcom/canhub/cropper/CropImageView;

    if-eqz p1, :cond_12

    iget-object v1, p0, Lcom/canhub/cropper/CropImageActivity;->cropImageUri:Landroid/net/Uri;

    .line 75
    invoke-virtual {p1, v1}, Lcom/canhub/cropper/CropImageView;->setImageUriAsync(Landroid/net/Uri;)V

    goto/16 :goto_4

    :cond_6
    :goto_2
    iget-object p1, p0, Lcom/canhub/cropper/CropImageActivity;->cropImageOptions:Lcom/canhub/cropper/CropImageOptions;

    if-nez p1, :cond_7

    .line 65
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v2

    :cond_7
    iget-boolean p1, p1, Lcom/canhub/cropper/CropImageOptions;->showIntentChooser:Z

    if-eqz p1, :cond_8

    invoke-direct {p0}, Lcom/canhub/cropper/CropImageActivity;->showIntentChooser()V

    goto/16 :goto_4

    :cond_8
    iget-object p1, p0, Lcom/canhub/cropper/CropImageActivity;->cropImageOptions:Lcom/canhub/cropper/CropImageOptions;

    if-nez p1, :cond_9

    .line 66
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v2

    :cond_9
    iget-boolean p1, p1, Lcom/canhub/cropper/CropImageOptions;->imageSourceIncludeGallery:Z

    if-eqz p1, :cond_b

    iget-object p1, p0, Lcom/canhub/cropper/CropImageActivity;->cropImageOptions:Lcom/canhub/cropper/CropImageOptions;

    if-nez p1, :cond_a

    .line 67
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v2

    :cond_a
    iget-boolean p1, p1, Lcom/canhub/cropper/CropImageOptions;->imageSourceIncludeCamera:Z

    if-eqz p1, :cond_b

    .line 68
    new-instance p1, Lcom/canhub/cropper/CropImageActivity$onCreate$1;

    invoke-direct {p1, p0}, Lcom/canhub/cropper/CropImageActivity$onCreate$1;-><init>(Ljava/lang/Object;)V

    check-cast p1, Lkotlin/jvm/functions/Function1;

    invoke-virtual {p0, p1}, Lcom/canhub/cropper/CropImageActivity;->showImageSourceDialog(Lkotlin/jvm/functions/Function1;)V

    goto :goto_4

    :cond_b
    iget-object p1, p0, Lcom/canhub/cropper/CropImageActivity;->cropImageOptions:Lcom/canhub/cropper/CropImageOptions;

    if-nez p1, :cond_c

    .line 69
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v2

    :cond_c
    iget-boolean p1, p1, Lcom/canhub/cropper/CropImageOptions;->imageSourceIncludeGallery:Z

    if-eqz p1, :cond_d

    iget-object p1, p0, Lcom/canhub/cropper/CropImageActivity;->pickImageGallery:Landroidx/activity/result/ActivityResultLauncher;

    const-string v1, "image/*"

    .line 70
    invoke-virtual {p1, v1}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    goto :goto_4

    :cond_d
    iget-object p1, p0, Lcom/canhub/cropper/CropImageActivity;->cropImageOptions:Lcom/canhub/cropper/CropImageOptions;

    if-nez p1, :cond_e

    .line 71
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v2

    :cond_e
    iget-boolean p1, p1, Lcom/canhub/cropper/CropImageOptions;->imageSourceIncludeCamera:Z

    if-eqz p1, :cond_f

    .line 72
    invoke-direct {p0}, Lcom/canhub/cropper/CropImageActivity;->openCamera()V

    goto :goto_4

    .line 73
    :cond_f
    invoke-virtual {p0}, Lcom/canhub/cropper/CropImageActivity;->finish()V

    goto :goto_4

    :cond_10
    const-string v1, "bundle_key_tmp_uri"

    .line 77
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_11

    .line 376
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string v1, "parse(this)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_3

    :cond_11
    move-object p1, v2

    :goto_3
    iput-object p1, p0, Lcom/canhub/cropper/CropImageActivity;->latestTmpUri:Landroid/net/Uri;

    .line 80
    :cond_12
    :goto_4
    invoke-virtual {p0}, Lcom/canhub/cropper/CropImageActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    if-eqz p1, :cond_16

    iget-object v1, p0, Lcom/canhub/cropper/CropImageActivity;->cropImageOptions:Lcom/canhub/cropper/CropImageOptions;

    if-nez v1, :cond_13

    .line 82
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v2

    :cond_13
    iget-object v1, v1, Lcom/canhub/cropper/CropImageOptions;->activityTitle:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_15

    iget-object v1, p0, Lcom/canhub/cropper/CropImageActivity;->cropImageOptions:Lcom/canhub/cropper/CropImageOptions;

    if-nez v1, :cond_14

    .line 83
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_5

    :cond_14
    move-object v2, v1

    :goto_5
    iget-object v0, v2, Lcom/canhub/cropper/CropImageOptions;->activityTitle:Ljava/lang/CharSequence;

    goto :goto_6

    .line 85
    :cond_15
    invoke-virtual {p0}, Lcom/canhub/cropper/CropImageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/canhub/cropper/R$string;->crop_image_activity_title:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 81
    :goto_6
    invoke-virtual {p0, v0}, Lcom/canhub/cropper/CropImageActivity;->setTitle(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    .line 86
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_16
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 8

    const-string v0, "menu"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/canhub/cropper/CropImageActivity;->cropImageOptions:Lcom/canhub/cropper/CropImageOptions;

    const-string v1, "cropImageOptions"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 181
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_0
    iget-boolean v0, v0, Lcom/canhub/cropper/CropImageOptions;->skipEditing:Z

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    return v3

    .line 182
    :cond_1
    invoke-virtual {p0}, Lcom/canhub/cropper/CropImageActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    sget v4, Lcom/canhub/cropper/R$menu;->crop_image_menu:I

    invoke-virtual {v0, v4, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    iget-object v0, p0, Lcom/canhub/cropper/CropImageActivity;->cropImageOptions:Lcom/canhub/cropper/CropImageOptions;

    if-nez v0, :cond_2

    .line 184
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_2
    iget-boolean v0, v0, Lcom/canhub/cropper/CropImageOptions;->allowRotation:Z

    if-nez v0, :cond_3

    .line 185
    sget v0, Lcom/canhub/cropper/R$id;->ic_rotate_left_24:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->removeItem(I)V

    .line 186
    sget v0, Lcom/canhub/cropper/R$id;->ic_rotate_right_24:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->removeItem(I)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/canhub/cropper/CropImageActivity;->cropImageOptions:Lcom/canhub/cropper/CropImageOptions;

    if-nez v0, :cond_4

    .line 187
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_4
    iget-boolean v0, v0, Lcom/canhub/cropper/CropImageOptions;->allowCounterRotation:Z

    if-eqz v0, :cond_5

    .line 188
    sget v0, Lcom/canhub/cropper/R$id;->ic_rotate_left_24:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_5
    :goto_0
    iget-object v0, p0, Lcom/canhub/cropper/CropImageActivity;->cropImageOptions:Lcom/canhub/cropper/CropImageOptions;

    if-nez v0, :cond_6

    .line 191
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_6
    iget-boolean v0, v0, Lcom/canhub/cropper/CropImageOptions;->allowFlipping:Z

    if-nez v0, :cond_7

    sget v0, Lcom/canhub/cropper/R$id;->ic_flip_24:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->removeItem(I)V

    :cond_7
    iget-object v0, p0, Lcom/canhub/cropper/CropImageActivity;->cropImageOptions:Lcom/canhub/cropper/CropImageOptions;

    if-nez v0, :cond_8

    .line 193
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_8
    iget-object v0, v0, Lcom/canhub/cropper/CropImageOptions;->cropMenuCropButtonTitle:Ljava/lang/CharSequence;

    if-eqz v0, :cond_a

    .line 194
    sget v0, Lcom/canhub/cropper/R$id;->crop_image_menu_crop:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v4, p0, Lcom/canhub/cropper/CropImageActivity;->cropImageOptions:Lcom/canhub/cropper/CropImageOptions;

    if-nez v4, :cond_9

    .line 195
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v4, v2

    :cond_9
    iget-object v4, v4, Lcom/canhub/cropper/CropImageOptions;->cropMenuCropButtonTitle:Ljava/lang/CharSequence;

    .line 194
    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    :cond_a
    :try_start_0
    iget-object v0, p0, Lcom/canhub/cropper/CropImageActivity;->cropImageOptions:Lcom/canhub/cropper/CropImageOptions;

    if-nez v0, :cond_b

    .line 199
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_b
    iget v0, v0, Lcom/canhub/cropper/CropImageOptions;->cropMenuCropButtonIcon:I

    if-eqz v0, :cond_d

    .line 200
    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    iget-object v4, p0, Lcom/canhub/cropper/CropImageActivity;->cropImageOptions:Lcom/canhub/cropper/CropImageOptions;

    if-nez v4, :cond_c

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v4, v2

    :cond_c
    iget v4, v4, Lcom/canhub/cropper/CropImageOptions;->cropMenuCropButtonIcon:I

    invoke-static {v0, v4}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 201
    :try_start_1
    sget v4, Lcom/canhub/cropper/R$id;->crop_image_menu_crop:I

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v0}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v4

    move-object v7, v4

    move-object v4, v0

    move-object v0, v7

    goto :goto_1

    :cond_d
    move-object v0, v2

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v4, v2

    :goto_1
    const-string v5, "Failed to read menu crop drawable"

    .line 204
    check-cast v0, Ljava/lang/Throwable;

    const-string v6, "AIC"

    invoke-static {v6, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v4

    :goto_2
    iget-object v4, p0, Lcom/canhub/cropper/CropImageActivity;->cropImageOptions:Lcom/canhub/cropper/CropImageOptions;

    if-nez v4, :cond_e

    .line 206
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v4, v2

    :cond_e
    iget v4, v4, Lcom/canhub/cropper/CropImageOptions;->activityMenuIconColor:I

    if-eqz v4, :cond_13

    .line 209
    sget v4, Lcom/canhub/cropper/R$id;->ic_rotate_left_24:I

    iget-object v5, p0, Lcom/canhub/cropper/CropImageActivity;->cropImageOptions:Lcom/canhub/cropper/CropImageOptions;

    if-nez v5, :cond_f

    .line 210
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v5, v2

    :cond_f
    iget v5, v5, Lcom/canhub/cropper/CropImageOptions;->activityMenuIconColor:I

    .line 207
    invoke-virtual {p0, p1, v4, v5}, Lcom/canhub/cropper/CropImageActivity;->updateMenuItemIconColor(Landroid/view/Menu;II)V

    .line 214
    sget v4, Lcom/canhub/cropper/R$id;->ic_rotate_right_24:I

    iget-object v5, p0, Lcom/canhub/cropper/CropImageActivity;->cropImageOptions:Lcom/canhub/cropper/CropImageOptions;

    if-nez v5, :cond_10

    .line 215
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v5, v2

    :cond_10
    iget v5, v5, Lcom/canhub/cropper/CropImageOptions;->activityMenuIconColor:I

    .line 212
    invoke-virtual {p0, p1, v4, v5}, Lcom/canhub/cropper/CropImageActivity;->updateMenuItemIconColor(Landroid/view/Menu;II)V

    .line 217
    sget v4, Lcom/canhub/cropper/R$id;->ic_flip_24:I

    iget-object v5, p0, Lcom/canhub/cropper/CropImageActivity;->cropImageOptions:Lcom/canhub/cropper/CropImageOptions;

    if-nez v5, :cond_11

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v5, v2

    :cond_11
    iget v5, v5, Lcom/canhub/cropper/CropImageOptions;->activityMenuIconColor:I

    invoke-virtual {p0, p1, v4, v5}, Lcom/canhub/cropper/CropImageActivity;->updateMenuItemIconColor(Landroid/view/Menu;II)V

    if-eqz v0, :cond_13

    .line 222
    sget v0, Lcom/canhub/cropper/R$id;->crop_image_menu_crop:I

    iget-object v4, p0, Lcom/canhub/cropper/CropImageActivity;->cropImageOptions:Lcom/canhub/cropper/CropImageOptions;

    if-nez v4, :cond_12

    .line 223
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_3

    :cond_12
    move-object v2, v4

    :goto_3
    iget v1, v2, Lcom/canhub/cropper/CropImageOptions;->activityMenuIconColor:I

    .line 220
    invoke-virtual {p0, p1, v0, v1}, Lcom/canhub/cropper/CropImageActivity;->updateMenuItemIconColor(Landroid/view/Menu;II)V

    :cond_13
    return v3
.end method

.method public onCropImageComplete(Lcom/canhub/cropper/CropImageView;Lcom/canhub/cropper/CropImageView$CropResult;)V
    .locals 1

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "result"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 273
    invoke-virtual {p2}, Lcom/canhub/cropper/CropImageView$CropResult;->getUriContent()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p2}, Lcom/canhub/cropper/CropImageView$CropResult;->getError()Ljava/lang/Exception;

    move-result-object v0

    invoke-virtual {p2}, Lcom/canhub/cropper/CropImageView$CropResult;->getSampleSize()I

    move-result p2

    invoke-virtual {p0, p1, v0, p2}, Lcom/canhub/cropper/CropImageActivity;->setResult(Landroid/net/Uri;Ljava/lang/Exception;I)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 231
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 232
    sget v1, Lcom/canhub/cropper/R$id;->crop_image_menu_crop:I

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/canhub/cropper/CropImageActivity;->cropImage()V

    goto :goto_2

    .line 233
    :cond_0
    sget v1, Lcom/canhub/cropper/R$id;->ic_rotate_left_24:I

    const/4 v2, 0x0

    const-string v3, "cropImageOptions"

    if-ne v0, v1, :cond_2

    iget-object p1, p0, Lcom/canhub/cropper/CropImageActivity;->cropImageOptions:Lcom/canhub/cropper/CropImageOptions;

    if-nez p1, :cond_1

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v2, p1

    :goto_0
    iget p1, v2, Lcom/canhub/cropper/CropImageOptions;->rotationDegrees:I

    neg-int p1, p1

    invoke-virtual {p0, p1}, Lcom/canhub/cropper/CropImageActivity;->rotateImage(I)V

    goto :goto_2

    .line 234
    :cond_2
    sget v1, Lcom/canhub/cropper/R$id;->ic_rotate_right_24:I

    if-ne v0, v1, :cond_4

    iget-object p1, p0, Lcom/canhub/cropper/CropImageActivity;->cropImageOptions:Lcom/canhub/cropper/CropImageOptions;

    if-nez p1, :cond_3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    move-object v2, p1

    :goto_1
    iget p1, v2, Lcom/canhub/cropper/CropImageOptions;->rotationDegrees:I

    invoke-virtual {p0, p1}, Lcom/canhub/cropper/CropImageActivity;->rotateImage(I)V

    goto :goto_2

    .line 235
    :cond_4
    sget v1, Lcom/canhub/cropper/R$id;->ic_flip_24_horizontally:I

    if-ne v0, v1, :cond_5

    iget-object p1, p0, Lcom/canhub/cropper/CropImageActivity;->cropImageView:Lcom/canhub/cropper/CropImageView;

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lcom/canhub/cropper/CropImageView;->flipImageHorizontally()V

    goto :goto_2

    .line 236
    :cond_5
    sget v1, Lcom/canhub/cropper/R$id;->ic_flip_24_vertically:I

    if-ne v0, v1, :cond_6

    iget-object p1, p0, Lcom/canhub/cropper/CropImageActivity;->cropImageView:Lcom/canhub/cropper/CropImageView;

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lcom/canhub/cropper/CropImageView;->flipImageVertically()V

    goto :goto_2

    :cond_6
    const v1, 0x102002c

    if-ne v0, v1, :cond_8

    .line 237
    invoke-virtual {p0}, Lcom/canhub/cropper/CropImageActivity;->setResultCancel()V

    :cond_7
    :goto_2
    const/4 p1, 0x1

    return p1

    .line 238
    :cond_8
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method protected onPickImageResult(Landroid/net/Uri;)V
    .locals 1

    if-nez p1, :cond_0

    .line 250
    invoke-virtual {p0}, Lcom/canhub/cropper/CropImageActivity;->setResultCancel()V

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/canhub/cropper/CropImageActivity;->cropImageUri:Landroid/net/Uri;

    iget-object v0, p0, Lcom/canhub/cropper/CropImageActivity;->cropImageView:Lcom/canhub/cropper/CropImageView;

    if-eqz v0, :cond_1

    .line 253
    invoke-virtual {v0, p1}, Lcom/canhub/cropper/CropImageView;->setImageUriAsync(Landroid/net/Uri;)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "outState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 176
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/canhub/cropper/CropImageActivity;->latestTmpUri:Landroid/net/Uri;

    .line 177
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "bundle_key_tmp_uri"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onSetImageUriComplete(Lcom/canhub/cropper/CropImageView;Landroid/net/Uri;Ljava/lang/Exception;)V
    .locals 1

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p1, "uri"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    if-nez p3, :cond_9

    iget-object p2, p0, Lcom/canhub/cropper/CropImageActivity;->cropImageOptions:Lcom/canhub/cropper/CropImageOptions;

    const-string p3, "cropImageOptions"

    if-nez p2, :cond_0

    .line 260
    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p2, p1

    :cond_0
    iget-object p2, p2, Lcom/canhub/cropper/CropImageOptions;->initialCropWindowRectangle:Landroid/graphics/Rect;

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/canhub/cropper/CropImageActivity;->cropImageView:Lcom/canhub/cropper/CropImageView;

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/canhub/cropper/CropImageActivity;->cropImageOptions:Lcom/canhub/cropper/CropImageOptions;

    if-nez v0, :cond_2

    .line 261
    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, p1

    :cond_2
    iget-object v0, v0, Lcom/canhub/cropper/CropImageOptions;->initialCropWindowRectangle:Landroid/graphics/Rect;

    invoke-virtual {p2, v0}, Lcom/canhub/cropper/CropImageView;->setCropRect(Landroid/graphics/Rect;)V

    :cond_3
    :goto_0
    iget-object p2, p0, Lcom/canhub/cropper/CropImageActivity;->cropImageOptions:Lcom/canhub/cropper/CropImageOptions;

    if-nez p2, :cond_4

    .line 263
    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p2, p1

    :cond_4
    iget p2, p2, Lcom/canhub/cropper/CropImageOptions;->initialRotation:I

    if-lez p2, :cond_7

    iget-object p2, p0, Lcom/canhub/cropper/CropImageActivity;->cropImageView:Lcom/canhub/cropper/CropImageView;

    if-nez p2, :cond_5

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/canhub/cropper/CropImageActivity;->cropImageOptions:Lcom/canhub/cropper/CropImageOptions;

    if-nez v0, :cond_6

    .line 264
    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, p1

    :cond_6
    iget v0, v0, Lcom/canhub/cropper/CropImageOptions;->initialRotation:I

    invoke-virtual {p2, v0}, Lcom/canhub/cropper/CropImageView;->setRotatedDegrees(I)V

    :cond_7
    :goto_1
    iget-object p2, p0, Lcom/canhub/cropper/CropImageActivity;->cropImageOptions:Lcom/canhub/cropper/CropImageOptions;

    if-nez p2, :cond_8

    .line 266
    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_2

    :cond_8
    move-object p1, p2

    :goto_2
    iget-boolean p1, p1, Lcom/canhub/cropper/CropImageOptions;->skipEditing:Z

    if-eqz p1, :cond_a

    .line 267
    invoke-virtual {p0}, Lcom/canhub/cropper/CropImageActivity;->cropImage()V

    goto :goto_3

    :cond_9
    const/4 p2, 0x1

    .line 269
    invoke-virtual {p0, p1, p3, p2}, Lcom/canhub/cropper/CropImageActivity;->setResult(Landroid/net/Uri;Ljava/lang/Exception;I)V

    :cond_a
    :goto_3
    return-void
.end method

.method public onStart()V
    .locals 2

    .line 164
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStart()V

    iget-object v0, p0, Lcom/canhub/cropper/CropImageActivity;->cropImageView:Lcom/canhub/cropper/CropImageView;

    if-eqz v0, :cond_0

    .line 165
    move-object v1, p0

    check-cast v1, Lcom/canhub/cropper/CropImageView$OnSetImageUriCompleteListener;

    invoke-virtual {v0, v1}, Lcom/canhub/cropper/CropImageView;->setOnSetImageUriCompleteListener(Lcom/canhub/cropper/CropImageView$OnSetImageUriCompleteListener;)V

    :cond_0
    iget-object v0, p0, Lcom/canhub/cropper/CropImageActivity;->cropImageView:Lcom/canhub/cropper/CropImageView;

    if-eqz v0, :cond_1

    .line 166
    move-object v1, p0

    check-cast v1, Lcom/canhub/cropper/CropImageView$OnCropImageCompleteListener;

    invoke-virtual {v0, v1}, Lcom/canhub/cropper/CropImageView;->setOnCropImageCompleteListener(Lcom/canhub/cropper/CropImageView$OnCropImageCompleteListener;)V

    :cond_1
    return-void
.end method

.method public onStop()V
    .locals 2

    .line 170
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStop()V

    iget-object v0, p0, Lcom/canhub/cropper/CropImageActivity;->cropImageView:Lcom/canhub/cropper/CropImageView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 171
    invoke-virtual {v0, v1}, Lcom/canhub/cropper/CropImageView;->setOnSetImageUriCompleteListener(Lcom/canhub/cropper/CropImageView$OnSetImageUriCompleteListener;)V

    :cond_0
    iget-object v0, p0, Lcom/canhub/cropper/CropImageActivity;->cropImageView:Lcom/canhub/cropper/CropImageView;

    if-eqz v0, :cond_1

    .line 172
    invoke-virtual {v0, v1}, Lcom/canhub/cropper/CropImageView;->setOnCropImageCompleteListener(Lcom/canhub/cropper/CropImageView$OnCropImageCompleteListener;)V

    :cond_1
    return-void
.end method

.method public rotateImage(I)V
    .locals 1

    iget-object v0, p0, Lcom/canhub/cropper/CropImageActivity;->cropImageView:Lcom/canhub/cropper/CropImageView;

    if-eqz v0, :cond_0

    .line 302
    invoke-virtual {v0, p1}, Lcom/canhub/cropper/CropImageView;->rotateImage(I)V

    :cond_0
    return-void
.end method

.method public setCropImageView(Lcom/canhub/cropper/CropImageView;)V
    .locals 1

    const-string v0, "cropImageView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/canhub/cropper/CropImageActivity;->cropImageView:Lcom/canhub/cropper/CropImageView;

    return-void
.end method

.method public setResult(Landroid/net/Uri;Ljava/lang/Exception;I)V
    .locals 1

    if-eqz p2, :cond_0

    const/16 v0, 0xcc

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    .line 311
    :goto_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/canhub/cropper/CropImageActivity;->getResultIntent(Landroid/net/Uri;Ljava/lang/Exception;I)Landroid/content/Intent;

    move-result-object p1

    .line 309
    invoke-virtual {p0, v0, p1}, Lcom/canhub/cropper/CropImageActivity;->setResult(ILandroid/content/Intent;)V

    .line 313
    invoke-virtual {p0}, Lcom/canhub/cropper/CropImageActivity;->finish()V

    return-void
.end method

.method public setResultCancel()V
    .locals 1

    const/4 v0, 0x0

    .line 320
    invoke-virtual {p0, v0}, Lcom/canhub/cropper/CropImageActivity;->setResult(I)V

    .line 321
    invoke-virtual {p0}, Lcom/canhub/cropper/CropImageActivity;->finish()V

    return-void
.end method

.method public showImageSourceDialog(Lkotlin/jvm/functions/Function1;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/canhub/cropper/CropImageActivity$Source;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "openSource"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 151
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 152
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 153
    sget v1, Lcom/canhub/cropper/R$string;->pick_image_chooser_title:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 156
    sget v1, Lcom/canhub/cropper/R$string;->pick_image_camera:I

    invoke-virtual {p0, v1}, Lcom/canhub/cropper/CropImageActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 157
    sget v2, Lcom/canhub/cropper/R$string;->pick_image_gallery:I

    invoke-virtual {p0, v2}, Lcom/canhub/cropper/CropImageActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    .line 156
    check-cast v1, [Ljava/lang/CharSequence;

    .line 154
    new-instance v2, Lcom/canhub/cropper/CropImageActivity$$ExternalSyntheticLambda0;

    invoke-direct {v2, p1}, Lcom/canhub/cropper/CropImageActivity$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 160
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    return-void
.end method

.method public updateMenuItemIconColor(Landroid/view/Menu;II)V
    .locals 1

    const-string v0, "menu"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 348
    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 350
    invoke-interface {p1}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 354
    :try_start_0
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 357
    sget-object v0, Landroidx/core/graphics/BlendModeCompat;->SRC_ATOP:Landroidx/core/graphics/BlendModeCompat;

    .line 355
    invoke-static {p3, v0}, Landroidx/core/graphics/BlendModeColorFilterCompat;->createBlendModeColorFilterCompat(ILandroidx/core/graphics/BlendModeCompat;)Landroid/graphics/ColorFilter;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 360
    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "Failed to update menu item color"

    .line 362
    check-cast p1, Ljava/lang/Throwable;

    const-string p3, "AIC"

    invoke-static {p3, p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method
