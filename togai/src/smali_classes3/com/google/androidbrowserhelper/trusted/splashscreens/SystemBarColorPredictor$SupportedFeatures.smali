.class Lcom/google/androidbrowserhelper/trusted/splashscreens/SystemBarColorPredictor$SupportedFeatures;
.super Ljava/lang/Object;
.source "SystemBarColorPredictor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/androidbrowserhelper/trusted/splashscreens/SystemBarColorPredictor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SupportedFeatures"
.end annotation


# instance fields
.field public final colorSchemeCustomization:Z

.field public final navbarColorCustomization:Z


# direct methods
.method private constructor <init>(ZZ)V
    .locals 0

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/google/androidbrowserhelper/trusted/splashscreens/SystemBarColorPredictor$SupportedFeatures;->navbarColorCustomization:Z

    iput-boolean p2, p0, Lcom/google/androidbrowserhelper/trusted/splashscreens/SystemBarColorPredictor$SupportedFeatures;->colorSchemeCustomization:Z

    return-void
.end method

.method synthetic constructor <init>(ZZLcom/google/androidbrowserhelper/trusted/splashscreens/SystemBarColorPredictor$1;)V
    .locals 0

    .line 144
    invoke-direct {p0, p1, p2}, Lcom/google/androidbrowserhelper/trusted/splashscreens/SystemBarColorPredictor$SupportedFeatures;-><init>(ZZ)V

    return-void
.end method
