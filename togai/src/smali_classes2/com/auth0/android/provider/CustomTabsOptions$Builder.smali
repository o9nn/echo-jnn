.class public Lcom/auth0/android/provider/CustomTabsOptions$Builder;
.super Ljava/lang/Object;
.source "CustomTabsOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/auth0/android/provider/CustomTabsOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private browserPicker:Lcom/auth0/android/provider/BrowserPicker;

.field private showTitle:Z

.field private toolbarColor:I


# direct methods
.method constructor <init>()V
    .locals 1

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/auth0/android/provider/CustomTabsOptions$Builder;->showTitle:Z

    iput v0, p0, Lcom/auth0/android/provider/CustomTabsOptions$Builder;->toolbarColor:I

    .line 126
    invoke-static {}, Lcom/auth0/android/provider/BrowserPicker;->newBuilder()Lcom/auth0/android/provider/BrowserPicker$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/auth0/android/provider/BrowserPicker$Builder;->build()Lcom/auth0/android/provider/BrowserPicker;

    move-result-object v0

    iput-object v0, p0, Lcom/auth0/android/provider/CustomTabsOptions$Builder;->browserPicker:Lcom/auth0/android/provider/BrowserPicker;

    return-void
.end method


# virtual methods
.method public build()Lcom/auth0/android/provider/CustomTabsOptions;
    .locals 5

    .line 181
    new-instance v0, Lcom/auth0/android/provider/CustomTabsOptions;

    iget-boolean v1, p0, Lcom/auth0/android/provider/CustomTabsOptions$Builder;->showTitle:Z

    iget v2, p0, Lcom/auth0/android/provider/CustomTabsOptions$Builder;->toolbarColor:I

    iget-object v3, p0, Lcom/auth0/android/provider/CustomTabsOptions$Builder;->browserPicker:Lcom/auth0/android/provider/BrowserPicker;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/auth0/android/provider/CustomTabsOptions;-><init>(ZILcom/auth0/android/provider/BrowserPicker;Lcom/auth0/android/provider/CustomTabsOptions$1;)V

    return-object v0
.end method

.method public showTitle(Z)Lcom/auth0/android/provider/CustomTabsOptions$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "showTitle"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/auth0/android/provider/CustomTabsOptions$Builder;->showTitle:Z

    return-object p0
.end method

.method public withBrowserPicker(Lcom/auth0/android/provider/BrowserPicker;)Lcom/auth0/android/provider/CustomTabsOptions$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "browserPicker"
        }
    .end annotation

    iput-object p1, p0, Lcom/auth0/android/provider/CustomTabsOptions$Builder;->browserPicker:Lcom/auth0/android/provider/BrowserPicker;

    return-object p0
.end method

.method public withToolbarColor(I)Lcom/auth0/android/provider/CustomTabsOptions$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "toolbarColor"
        }
    .end annotation

    iput p1, p0, Lcom/auth0/android/provider/CustomTabsOptions$Builder;->toolbarColor:I

    return-object p0
.end method
