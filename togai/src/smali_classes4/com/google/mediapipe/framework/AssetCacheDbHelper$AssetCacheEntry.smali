.class public abstract Lcom/google/mediapipe/framework/AssetCacheDbHelper$AssetCacheEntry;
.super Ljava/lang/Object;
.source "AssetCacheDbHelper.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mediapipe/framework/AssetCacheDbHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AssetCacheEntry"
.end annotation


# static fields
.field public static final COLUMN_NAME_ASSET:Ljava/lang/String; = "asset"

.field public static final COLUMN_NAME_CACHE_PATH:Ljava/lang/String; = "cache_path"

.field public static final COLUMN_NAME_VERSION:Ljava/lang/String; = "version"

.field public static final TABLE_NAME:Ljava/lang/String; = "AssetVersion"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
