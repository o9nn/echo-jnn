.class public interface abstract Lexpo/modules/medialibrary/albums/AssetFileStrategy;
.super Ljava/lang/Object;
.source "AssetFileStrategy.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lexpo/modules/medialibrary/albums/AssetFileStrategy$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u00e0\u0080\u0001\u0018\u0000 \u00082\u00020\u0001:\u0001\u0008J \u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0007H&\u00a8\u0006\t"
    }
    d2 = {
        "Lexpo/modules/medialibrary/albums/AssetFileStrategy;",
        "",
        "apply",
        "Ljava/io/File;",
        "src",
        "dir",
        "context",
        "Landroid/content/Context;",
        "Companion",
        "expo-media-library_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lexpo/modules/medialibrary/albums/AssetFileStrategy$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lexpo/modules/medialibrary/albums/AssetFileStrategy$Companion;->$$INSTANCE:Lexpo/modules/medialibrary/albums/AssetFileStrategy$Companion;

    sput-object v0, Lexpo/modules/medialibrary/albums/AssetFileStrategy;->Companion:Lexpo/modules/medialibrary/albums/AssetFileStrategy$Companion;

    return-void
.end method


# virtual methods
.method public abstract apply(Ljava/io/File;Ljava/io/File;Landroid/content/Context;)Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
