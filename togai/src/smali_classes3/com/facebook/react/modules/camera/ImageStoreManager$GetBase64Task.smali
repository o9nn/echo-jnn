.class Lcom/facebook/react/modules/camera/ImageStoreManager$GetBase64Task;
.super Lcom/facebook/react/bridge/GuardedAsyncTask;
.source "ImageStoreManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/react/modules/camera/ImageStoreManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetBase64Task"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/react/bridge/GuardedAsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final mError:Lcom/facebook/react/bridge/Callback;

.field private final mSuccess:Lcom/facebook/react/bridge/Callback;

.field private final mUri:Ljava/lang/String;

.field final synthetic this$0:Lcom/facebook/react/modules/camera/ImageStoreManager;


# direct methods
.method private constructor <init>(Lcom/facebook/react/modules/camera/ImageStoreManager;Lcom/facebook/react/bridge/ReactContext;Ljava/lang/String;Lcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/Callback;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/react/modules/camera/ImageStoreManager$GetBase64Task;->this$0:Lcom/facebook/react/modules/camera/ImageStoreManager;

    .line 55
    invoke-direct {p0, p2}, Lcom/facebook/react/bridge/GuardedAsyncTask;-><init>(Lcom/facebook/react/bridge/ReactContext;)V

    iput-object p3, p0, Lcom/facebook/react/modules/camera/ImageStoreManager$GetBase64Task;->mUri:Ljava/lang/String;

    iput-object p4, p0, Lcom/facebook/react/modules/camera/ImageStoreManager$GetBase64Task;->mSuccess:Lcom/facebook/react/bridge/Callback;

    iput-object p5, p0, Lcom/facebook/react/modules/camera/ImageStoreManager$GetBase64Task;->mError:Lcom/facebook/react/bridge/Callback;

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/react/modules/camera/ImageStoreManager;Lcom/facebook/react/bridge/ReactContext;Ljava/lang/String;Lcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/Callback;Lcom/facebook/react/modules/camera/ImageStoreManager$GetBase64Task-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/facebook/react/modules/camera/ImageStoreManager$GetBase64Task;-><init>(Lcom/facebook/react/modules/camera/ImageStoreManager;Lcom/facebook/react/bridge/ReactContext;Ljava/lang/String;Lcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/Callback;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackgroundGuarded([Ljava/lang/Object;)V
    .locals 0

    .line 49
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/facebook/react/modules/camera/ImageStoreManager$GetBase64Task;->doInBackgroundGuarded([Ljava/lang/Void;)V

    return-void
.end method

.method protected varargs doInBackgroundGuarded([Ljava/lang/Void;)V
    .locals 5

    :try_start_0
    iget-object p1, p0, Lcom/facebook/react/modules/camera/ImageStoreManager$GetBase64Task;->this$0:Lcom/facebook/react/modules/camera/ImageStoreManager;

    .line 64
    invoke-static {p1}, Lcom/facebook/react/modules/camera/ImageStoreManager;->access$000(Lcom/facebook/react/modules/camera/ImageStoreManager;)Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object p1

    invoke-virtual {p1}, Lcom/facebook/react/bridge/ReactApplicationContext;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object v0, p0, Lcom/facebook/react/modules/camera/ImageStoreManager$GetBase64Task;->mUri:Ljava/lang/String;

    .line 65
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 66
    invoke-virtual {p1, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_1
    iget-object v2, p0, Lcom/facebook/react/modules/camera/ImageStoreManager$GetBase64Task;->mSuccess:Lcom/facebook/react/bridge/Callback;

    new-array v3, v1, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/facebook/react/modules/camera/ImageStoreManager$GetBase64Task;->this$0:Lcom/facebook/react/modules/camera/ImageStoreManager;

    .line 68
    invoke-virtual {v4, p1}, Lcom/facebook/react/modules/camera/ImageStoreManager;->convertInputStreamToBase64OutputStream(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-interface {v2, v3}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 72
    :goto_0
    :try_start_2
    invoke-static {p1}, Lcom/facebook/react/modules/camera/ImageStoreManager;->-$$Nest$smcloseQuietly(Ljava/io/Closeable;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v2

    :try_start_3
    iget-object v3, p0, Lcom/facebook/react/modules/camera/ImageStoreManager$GetBase64Task;->mError:Lcom/facebook/react/bridge/Callback;

    new-array v1, v1, [Ljava/lang/Object;

    .line 70
    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    invoke-interface {v3, v1}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 72
    :goto_1
    :try_start_4
    invoke-static {p1}, Lcom/facebook/react/modules/camera/ImageStoreManager;->-$$Nest$smcloseQuietly(Ljava/io/Closeable;)V

    .line 73
    throw v0
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    move-exception p1

    iget-object v0, p0, Lcom/facebook/react/modules/camera/ImageStoreManager$GetBase64Task;->mError:Lcom/facebook/react/bridge/Callback;

    .line 75
    invoke-virtual {p1}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    :goto_2
    return-void
.end method
