.class public Lcom/google/androidbrowserhelper/trusted/splashscreens/SplashImageTransferTask;
.super Ljava/lang/Object;
.source "SplashImageTransferTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/androidbrowserhelper/trusted/splashscreens/SplashImageTransferTask$Callback;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final FILE_NAME:Ljava/lang/String; = "splash_image.png"

.field private static final FOLDER_NAME:Ljava/lang/String; = "twa_splash"

.field private static final PREFS_FILE:Ljava/lang/String; = "splashImagePrefs"

.field private static final PREF_LAST_UPDATE_TIME:Ljava/lang/String; = "lastUpdateTime"

.field private static final TAG:Ljava/lang/String; = "SplashImageTransferTask"


# instance fields
.field private final mAsyncTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mAuthority:Ljava/lang/String;

.field private final mBitmap:Landroid/graphics/Bitmap;

.field private mCallback:Lcom/google/androidbrowserhelper/trusted/splashscreens/SplashImageTransferTask$Callback;

.field private final mContext:Landroid/content/Context;

.field private final mProviderPackage:Ljava/lang/String;

.field private final mSession:Landroidx/browser/customtabs/CustomTabsSession;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;Landroidx/browser/customtabs/CustomTabsSession;Ljava/lang/String;)V
    .locals 1

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    new-instance v0, Lcom/google/androidbrowserhelper/trusted/splashscreens/SplashImageTransferTask$1;

    invoke-direct {v0, p0}, Lcom/google/androidbrowserhelper/trusted/splashscreens/SplashImageTransferTask$1;-><init>(Lcom/google/androidbrowserhelper/trusted/splashscreens/SplashImageTransferTask;)V

    iput-object v0, p0, Lcom/google/androidbrowserhelper/trusted/splashscreens/SplashImageTransferTask;->mAsyncTask:Landroid/os/AsyncTask;

    .line 64
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/google/androidbrowserhelper/trusted/splashscreens/SplashImageTransferTask;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/androidbrowserhelper/trusted/splashscreens/SplashImageTransferTask;->mBitmap:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lcom/google/androidbrowserhelper/trusted/splashscreens/SplashImageTransferTask;->mAuthority:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/androidbrowserhelper/trusted/splashscreens/SplashImageTransferTask;->mSession:Landroidx/browser/customtabs/CustomTabsSession;

    iput-object p5, p0, Lcom/google/androidbrowserhelper/trusted/splashscreens/SplashImageTransferTask;->mProviderPackage:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/google/androidbrowserhelper/trusted/splashscreens/SplashImageTransferTask;)Landroid/content/Context;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/google/androidbrowserhelper/trusted/splashscreens/SplashImageTransferTask;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/google/androidbrowserhelper/trusted/splashscreens/SplashImageTransferTask;)Landroid/graphics/Bitmap;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/google/androidbrowserhelper/trusted/splashscreens/SplashImageTransferTask;->mBitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static synthetic access$200(Lcom/google/androidbrowserhelper/trusted/splashscreens/SplashImageTransferTask;)Ljava/lang/String;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/google/androidbrowserhelper/trusted/splashscreens/SplashImageTransferTask;->mAuthority:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/google/androidbrowserhelper/trusted/splashscreens/SplashImageTransferTask;)Ljava/lang/String;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/google/androidbrowserhelper/trusted/splashscreens/SplashImageTransferTask;->mProviderPackage:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lcom/google/androidbrowserhelper/trusted/splashscreens/SplashImageTransferTask;)Landroidx/browser/customtabs/CustomTabsSession;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/google/androidbrowserhelper/trusted/splashscreens/SplashImageTransferTask;->mSession:Landroidx/browser/customtabs/CustomTabsSession;

    return-object p0
.end method

.method static synthetic access$500(Lcom/google/androidbrowserhelper/trusted/splashscreens/SplashImageTransferTask;)Lcom/google/androidbrowserhelper/trusted/splashscreens/SplashImageTransferTask$Callback;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/google/androidbrowserhelper/trusted/splashscreens/SplashImageTransferTask;->mCallback:Lcom/google/androidbrowserhelper/trusted/splashscreens/SplashImageTransferTask$Callback;

    return-object p0
.end method


# virtual methods
.method public cancel()V
    .locals 2

    iget-object v0, p0, Lcom/google/androidbrowserhelper/trusted/splashscreens/SplashImageTransferTask;->mAsyncTask:Landroid/os/AsyncTask;

    const/4 v1, 0x1

    .line 86
    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/androidbrowserhelper/trusted/splashscreens/SplashImageTransferTask;->mCallback:Lcom/google/androidbrowserhelper/trusted/splashscreens/SplashImageTransferTask$Callback;

    return-void
.end method

.method public execute(Lcom/google/androidbrowserhelper/trusted/splashscreens/SplashImageTransferTask$Callback;)V
    .locals 1

    iput-object p1, p0, Lcom/google/androidbrowserhelper/trusted/splashscreens/SplashImageTransferTask;->mCallback:Lcom/google/androidbrowserhelper/trusted/splashscreens/SplashImageTransferTask$Callback;

    iget-object p1, p0, Lcom/google/androidbrowserhelper/trusted/splashscreens/SplashImageTransferTask;->mAsyncTask:Landroid/os/AsyncTask;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    .line 78
    invoke-virtual {p1, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
