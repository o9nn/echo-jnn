.class Lcom/google/androidbrowserhelper/trusted/splashscreens/SplashImageTransferTask$1;
.super Landroid/os/AsyncTask;
.source "SplashImageTransferTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/androidbrowserhelper/trusted/splashscreens/SplashImageTransferTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/androidbrowserhelper/trusted/splashscreens/SplashImageTransferTask;


# direct methods
.method constructor <init>(Lcom/google/androidbrowserhelper/trusted/splashscreens/SplashImageTransferTask;)V
    .locals 0

    iput-object p1, p0, Lcom/google/androidbrowserhelper/trusted/splashscreens/SplashImageTransferTask$1;->this$0:Lcom/google/androidbrowserhelper/trusted/splashscreens/SplashImageTransferTask;

    .line 91
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method private getLastAppUpdateTime()J
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/google/androidbrowserhelper/trusted/splashscreens/SplashImageTransferTask$1;->this$0:Lcom/google/androidbrowserhelper/trusted/splashscreens/SplashImageTransferTask;

    .line 133
    invoke-static {v0}, Lcom/google/androidbrowserhelper/trusted/splashscreens/SplashImageTransferTask;->access$000(Lcom/google/androidbrowserhelper/trusted/splashscreens/SplashImageTransferTask;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/google/androidbrowserhelper/trusted/splashscreens/SplashImageTransferTask$1;->this$0:Lcom/google/androidbrowserhelper/trusted/splashscreens/SplashImageTransferTask;

    .line 134
    invoke-static {v1}, Lcom/google/androidbrowserhelper/trusted/splashscreens/SplashImageTransferTask;->access$000(Lcom/google/androidbrowserhelper/trusted/splashscreens/SplashImageTransferTask;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-wide v0, v0, Landroid/content/pm/PackageInfo;->lastUpdateTime:J
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception v0

    .line 137
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private transferToCustomTabsProvider(Ljava/io/File;)Z
    .locals 4

    iget-object v0, p0, Lcom/google/androidbrowserhelper/trusted/splashscreens/SplashImageTransferTask$1;->this$0:Lcom/google/androidbrowserhelper/trusted/splashscreens/SplashImageTransferTask;

    .line 127
    invoke-static {v0}, Lcom/google/androidbrowserhelper/trusted/splashscreens/SplashImageTransferTask;->access$000(Lcom/google/androidbrowserhelper/trusted/splashscreens/SplashImageTransferTask;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/google/androidbrowserhelper/trusted/splashscreens/SplashImageTransferTask$1;->this$0:Lcom/google/androidbrowserhelper/trusted/splashscreens/SplashImageTransferTask;

    invoke-static {v1}, Lcom/google/androidbrowserhelper/trusted/splashscreens/SplashImageTransferTask;->access$200(Lcom/google/androidbrowserhelper/trusted/splashscreens/SplashImageTransferTask;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/androidbrowserhelper/trusted/splashscreens/SplashImageTransferTask$1;->this$0:Lcom/google/androidbrowserhelper/trusted/splashscreens/SplashImageTransferTask;

    invoke-static {v2}, Lcom/google/androidbrowserhelper/trusted/splashscreens/SplashImageTransferTask;->access$300(Lcom/google/androidbrowserhelper/trusted/splashscreens/SplashImageTransferTask;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/androidbrowserhelper/trusted/splashscreens/SplashImageTransferTask$1;->this$0:Lcom/google/androidbrowserhelper/trusted/splashscreens/SplashImageTransferTask;

    .line 128
    invoke-static {v3}, Lcom/google/androidbrowserhelper/trusted/splashscreens/SplashImageTransferTask;->access$400(Lcom/google/androidbrowserhelper/trusted/splashscreens/SplashImageTransferTask;)Landroidx/browser/customtabs/CustomTabsSession;

    move-result-object v3

    .line 127
    invoke-static {v0, p1, v1, v2, v3}, Landroidx/browser/customtabs/TrustedWebUtils;->transferSplashImage(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Landroidx/browser/customtabs/CustomTabsSession;)Z

    move-result p1

    return p1
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 9

    .line 95
    invoke-virtual {p0}, Lcom/google/androidbrowserhelper/trusted/splashscreens/SplashImageTransferTask$1;->isCancelled()Z

    move-result p1

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    if-eqz p1, :cond_0

    return-object v1

    .line 96
    :cond_0
    new-instance p1, Ljava/io/File;

    iget-object v2, p0, Lcom/google/androidbrowserhelper/trusted/splashscreens/SplashImageTransferTask$1;->this$0:Lcom/google/androidbrowserhelper/trusted/splashscreens/SplashImageTransferTask;

    invoke-static {v2}, Lcom/google/androidbrowserhelper/trusted/splashscreens/SplashImageTransferTask;->access$000(Lcom/google/androidbrowserhelper/trusted/splashscreens/SplashImageTransferTask;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "twa_splash"

    invoke-direct {p1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 97
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 98
    invoke-virtual {p1}, Ljava/io/File;->mkdir()Z

    move-result v2

    if-nez v2, :cond_1

    const-string p1, "SplashImageTransferTask"

    const-string v0, "Failed to create a directory for storing a splash image"

    .line 100
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 104
    :cond_1
    new-instance v2, Ljava/io/File;

    const-string v3, "splash_image.png"

    invoke-direct {v2, p1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/androidbrowserhelper/trusted/splashscreens/SplashImageTransferTask$1;->this$0:Lcom/google/androidbrowserhelper/trusted/splashscreens/SplashImageTransferTask;

    .line 106
    invoke-static {p1}, Lcom/google/androidbrowserhelper/trusted/splashscreens/SplashImageTransferTask;->access$000(Lcom/google/androidbrowserhelper/trusted/splashscreens/SplashImageTransferTask;)Landroid/content/Context;

    move-result-object p1

    const-string v3, "splashImagePrefs"

    invoke-virtual {p1, v3, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 107
    invoke-direct {p0}, Lcom/google/androidbrowserhelper/trusted/splashscreens/SplashImageTransferTask$1;->getLastAppUpdateTime()J

    move-result-wide v3

    .line 108
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    const-string v5, "lastUpdateTime"

    if-eqz v0, :cond_2

    const-wide/16 v6, 0x0

    invoke-interface {p1, v5, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    cmp-long v0, v3, v6

    if-nez v0, :cond_2

    .line 111
    invoke-direct {p0, v2}, Lcom/google/androidbrowserhelper/trusted/splashscreens/SplashImageTransferTask$1;->transferToCustomTabsProvider(Ljava/io/File;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 113
    :cond_2
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    :try_start_1
    invoke-virtual {p0}, Lcom/google/androidbrowserhelper/trusted/splashscreens/SplashImageTransferTask$1;->isCancelled()Z

    move-result v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v6, :cond_3

    .line 121
    :try_start_2
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-object v1

    :cond_3
    :try_start_3
    iget-object v6, p0, Lcom/google/androidbrowserhelper/trusted/splashscreens/SplashImageTransferTask$1;->this$0:Lcom/google/androidbrowserhelper/trusted/splashscreens/SplashImageTransferTask;

    .line 115
    invoke-static {v6}, Lcom/google/androidbrowserhelper/trusted/splashscreens/SplashImageTransferTask;->access$100(Lcom/google/androidbrowserhelper/trusted/splashscreens/SplashImageTransferTask;)Landroid/graphics/Bitmap;

    move-result-object v6

    sget-object v7, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v8, 0x64

    invoke-virtual {v6, v7, v8, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 116
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 117
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1, v5, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 119
    invoke-virtual {p0}, Lcom/google/androidbrowserhelper/trusted/splashscreens/SplashImageTransferTask$1;->isCancelled()Z

    move-result p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz p1, :cond_4

    .line 121
    :try_start_4
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    return-object v1

    .line 120
    :cond_4
    :try_start_5
    invoke-direct {p0, v2}, Lcom/google/androidbrowserhelper/trusted/splashscreens/SplashImageTransferTask$1;->transferToCustomTabsProvider(Ljava/io/File;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 121
    :try_start_6
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    return-object p1

    :catchall_0
    move-exception p1

    .line 113
    :try_start_7
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    :try_start_8
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p1
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    :catch_0
    move-exception p1

    .line 122
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 91
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/google/androidbrowserhelper/trusted/splashscreens/SplashImageTransferTask$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 1

    iget-object v0, p0, Lcom/google/androidbrowserhelper/trusted/splashscreens/SplashImageTransferTask$1;->this$0:Lcom/google/androidbrowserhelper/trusted/splashscreens/SplashImageTransferTask;

    .line 143
    invoke-static {v0}, Lcom/google/androidbrowserhelper/trusted/splashscreens/SplashImageTransferTask;->access$500(Lcom/google/androidbrowserhelper/trusted/splashscreens/SplashImageTransferTask;)Lcom/google/androidbrowserhelper/trusted/splashscreens/SplashImageTransferTask$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/androidbrowserhelper/trusted/splashscreens/SplashImageTransferTask$1;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/androidbrowserhelper/trusted/splashscreens/SplashImageTransferTask$1;->this$0:Lcom/google/androidbrowserhelper/trusted/splashscreens/SplashImageTransferTask;

    .line 144
    invoke-static {v0}, Lcom/google/androidbrowserhelper/trusted/splashscreens/SplashImageTransferTask;->access$500(Lcom/google/androidbrowserhelper/trusted/splashscreens/SplashImageTransferTask;)Lcom/google/androidbrowserhelper/trusted/splashscreens/SplashImageTransferTask$Callback;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {v0, p1}, Lcom/google/androidbrowserhelper/trusted/splashscreens/SplashImageTransferTask$Callback;->onFinished(Z)V

    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 91
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/google/androidbrowserhelper/trusted/splashscreens/SplashImageTransferTask$1;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
