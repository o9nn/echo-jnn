.class public final synthetic Lexpo/modules/medialibrary/MediaLibraryModule$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lexpo/modules/medialibrary/MediaLibraryModule$Action;


# instance fields
.field public final synthetic f$0:Lexpo/modules/kotlin/Promise;

.field public final synthetic f$1:Lkotlin/jvm/functions/Function0;


# direct methods
.method public synthetic constructor <init>(Lexpo/modules/kotlin/Promise;Lkotlin/jvm/functions/Function0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lexpo/modules/medialibrary/MediaLibraryModule$$ExternalSyntheticLambda0;->f$0:Lexpo/modules/kotlin/Promise;

    iput-object p2, p0, Lexpo/modules/medialibrary/MediaLibraryModule$$ExternalSyntheticLambda0;->f$1:Lkotlin/jvm/functions/Function0;

    return-void
.end method


# virtual methods
.method public final runWithPermissions(Z)V
    .locals 2

    iget-object v0, p0, Lexpo/modules/medialibrary/MediaLibraryModule$$ExternalSyntheticLambda0;->f$0:Lexpo/modules/kotlin/Promise;

    iget-object v1, p0, Lexpo/modules/medialibrary/MediaLibraryModule$$ExternalSyntheticLambda0;->f$1:Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v1, p1}, Lexpo/modules/medialibrary/MediaLibraryModule;->$r8$lambda$rZqRkk9B7I2Os2My_zMs9itTcu0(Lexpo/modules/kotlin/Promise;Lkotlin/jvm/functions/Function0;Z)V

    return-void
.end method
