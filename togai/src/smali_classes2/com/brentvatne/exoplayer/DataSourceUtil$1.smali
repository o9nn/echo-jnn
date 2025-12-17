.class Lcom/brentvatne/exoplayer/DataSourceUtil$1;
.super Ljava/lang/Object;
.source "DataSourceUtil.java"

# interfaces
.implements Landroidx/media3/datasource/DataSource$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/brentvatne/exoplayer/DataSourceUtil;->buildAssetDataSourceFactory(Lcom/facebook/react/bridge/ReactContext;Landroid/net/Uri;)Landroidx/media3/datasource/DataSource$Factory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$rawResourceDataSource:Landroidx/media3/datasource/AssetDataSource;


# direct methods
.method constructor <init>(Landroidx/media3/datasource/AssetDataSource;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/brentvatne/exoplayer/DataSourceUtil$1;->val$rawResourceDataSource:Landroidx/media3/datasource/AssetDataSource;

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createDataSource()Landroidx/media3/datasource/DataSource;
    .locals 1

    iget-object v0, p0, Lcom/brentvatne/exoplayer/DataSourceUtil$1;->val$rawResourceDataSource:Landroidx/media3/datasource/AssetDataSource;

    return-object v0
.end method
