.class public final synthetic Lcom/transistorsoft/tsbackgroundfetch/FetchJobService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/transistorsoft/tsbackgroundfetch/FetchJobService$CompletionHandler;


# instance fields
.field public final synthetic f$0:Lcom/transistorsoft/tsbackgroundfetch/FetchJobService;

.field public final synthetic f$1:Landroid/app/job/JobParameters;


# direct methods
.method public synthetic constructor <init>(Lcom/transistorsoft/tsbackgroundfetch/FetchJobService;Landroid/app/job/JobParameters;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transistorsoft/tsbackgroundfetch/FetchJobService$$ExternalSyntheticLambda0;->f$0:Lcom/transistorsoft/tsbackgroundfetch/FetchJobService;

    iput-object p2, p0, Lcom/transistorsoft/tsbackgroundfetch/FetchJobService$$ExternalSyntheticLambda0;->f$1:Landroid/app/job/JobParameters;

    return-void
.end method


# virtual methods
.method public final finish()V
    .locals 2

    iget-object v0, p0, Lcom/transistorsoft/tsbackgroundfetch/FetchJobService$$ExternalSyntheticLambda0;->f$0:Lcom/transistorsoft/tsbackgroundfetch/FetchJobService;

    iget-object v1, p0, Lcom/transistorsoft/tsbackgroundfetch/FetchJobService$$ExternalSyntheticLambda0;->f$1:Landroid/app/job/JobParameters;

    invoke-virtual {v0, v1}, Lcom/transistorsoft/tsbackgroundfetch/FetchJobService;->lambda$onStartJob$0$com-transistorsoft-tsbackgroundfetch-FetchJobService(Landroid/app/job/JobParameters;)V

    return-void
.end method
