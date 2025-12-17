.class synthetic Lcom/tom_roush/pdfbox/multipdf/Overlay$1;
.super Ljava/lang/Object;
.source "Overlay.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tom_roush/pdfbox/multipdf/Overlay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$tom_roush$pdfbox$multipdf$Overlay$Position:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 397
    invoke-static {}, Lcom/tom_roush/pdfbox/multipdf/Overlay$Position;->values()[Lcom/tom_roush/pdfbox/multipdf/Overlay$Position;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/tom_roush/pdfbox/multipdf/Overlay$1;->$SwitchMap$com$tom_roush$pdfbox$multipdf$Overlay$Position:[I

    :try_start_0
    sget-object v1, Lcom/tom_roush/pdfbox/multipdf/Overlay$Position;->FOREGROUND:Lcom/tom_roush/pdfbox/multipdf/Overlay$Position;

    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/multipdf/Overlay$Position;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/tom_roush/pdfbox/multipdf/Overlay$1;->$SwitchMap$com$tom_roush$pdfbox$multipdf$Overlay$Position:[I

    sget-object v1, Lcom/tom_roush/pdfbox/multipdf/Overlay$Position;->BACKGROUND:Lcom/tom_roush/pdfbox/multipdf/Overlay$Position;

    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/multipdf/Overlay$Position;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
