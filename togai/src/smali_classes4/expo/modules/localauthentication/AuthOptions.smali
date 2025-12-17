.class public final Lexpo/modules/localauthentication/AuthOptions;
.super Ljava/lang/Object;
.source "LocalAuthenticationRecords.kt"

# interfaces
.implements Lexpo/modules/kotlin/records/Record;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\n\u0008\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002R\u001c\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u0005\u0010\u0002\u001a\u0004\u0008\u0006\u0010\u0007R\u001c\u0010\u0008\u001a\u00020\t8\u0006X\u0087D\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\n\u0010\u0002\u001a\u0004\u0008\u000b\u0010\u000cR\u001c\u0010\r\u001a\u00020\u000e8\u0006X\u0087D\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u000f\u0010\u0002\u001a\u0004\u0008\u0010\u0010\u0011R\u001c\u0010\u0012\u001a\u00020\t8\u0006X\u0087D\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u0013\u0010\u0002\u001a\u0004\u0008\u0014\u0010\u000cR\u001c\u0010\u0015\u001a\u00020\u000e8\u0006X\u0087D\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u0016\u0010\u0002\u001a\u0004\u0008\u0017\u0010\u0011\u00a8\u0006\u0018"
    }
    d2 = {
        "Lexpo/modules/localauthentication/AuthOptions;",
        "Lexpo/modules/kotlin/records/Record;",
        "()V",
        "biometricsSecurityLevel",
        "Lexpo/modules/localauthentication/BiometricsSecurityLevel;",
        "getBiometricsSecurityLevel$annotations",
        "getBiometricsSecurityLevel",
        "()Lexpo/modules/localauthentication/BiometricsSecurityLevel;",
        "cancelLabel",
        "",
        "getCancelLabel$annotations",
        "getCancelLabel",
        "()Ljava/lang/String;",
        "disableDeviceFallback",
        "",
        "getDisableDeviceFallback$annotations",
        "getDisableDeviceFallback",
        "()Z",
        "promptMessage",
        "getPromptMessage$annotations",
        "getPromptMessage",
        "requireConfirmation",
        "getRequireConfirmation$annotations",
        "getRequireConfirmation",
        "expo-local-authentication_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final biometricsSecurityLevel:Lexpo/modules/localauthentication/BiometricsSecurityLevel;

.field private final cancelLabel:Ljava/lang/String;

.field private final disableDeviceFallback:Z

.field private final promptMessage:Ljava/lang/String;

.field private final requireConfirmation:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lexpo/modules/localauthentication/AuthOptions;->promptMessage:Ljava/lang/String;

    iput-object v0, p0, Lexpo/modules/localauthentication/AuthOptions;->cancelLabel:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lexpo/modules/localauthentication/AuthOptions;->requireConfirmation:Z

    .line 34
    sget-object v0, Lexpo/modules/localauthentication/BiometricsSecurityLevel;->WEAK:Lexpo/modules/localauthentication/BiometricsSecurityLevel;

    iput-object v0, p0, Lexpo/modules/localauthentication/AuthOptions;->biometricsSecurityLevel:Lexpo/modules/localauthentication/BiometricsSecurityLevel;

    return-void
.end method

.method public static synthetic getBiometricsSecurityLevel$annotations()V
    .locals 0
    .annotation runtime Lexpo/modules/kotlin/records/Field;
    .end annotation

    return-void
.end method

.method public static synthetic getCancelLabel$annotations()V
    .locals 0
    .annotation runtime Lexpo/modules/kotlin/records/Field;
    .end annotation

    return-void
.end method

.method public static synthetic getDisableDeviceFallback$annotations()V
    .locals 0
    .annotation runtime Lexpo/modules/kotlin/records/Field;
    .end annotation

    return-void
.end method

.method public static synthetic getPromptMessage$annotations()V
    .locals 0
    .annotation runtime Lexpo/modules/kotlin/records/Field;
    .end annotation

    return-void
.end method

.method public static synthetic getRequireConfirmation$annotations()V
    .locals 0
    .annotation runtime Lexpo/modules/kotlin/records/Field;
    .end annotation

    return-void
.end method


# virtual methods
.method public final getBiometricsSecurityLevel()Lexpo/modules/localauthentication/BiometricsSecurityLevel;
    .locals 1

    iget-object v0, p0, Lexpo/modules/localauthentication/AuthOptions;->biometricsSecurityLevel:Lexpo/modules/localauthentication/BiometricsSecurityLevel;

    return-object v0
.end method

.method public final getCancelLabel()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lexpo/modules/localauthentication/AuthOptions;->cancelLabel:Ljava/lang/String;

    return-object v0
.end method

.method public final getDisableDeviceFallback()Z
    .locals 1

    iget-boolean v0, p0, Lexpo/modules/localauthentication/AuthOptions;->disableDeviceFallback:Z

    return v0
.end method

.method public final getPromptMessage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lexpo/modules/localauthentication/AuthOptions;->promptMessage:Ljava/lang/String;

    return-object v0
.end method

.method public final getRequireConfirmation()Z
    .locals 1

    iget-boolean v0, p0, Lexpo/modules/localauthentication/AuthOptions;->requireConfirmation:Z

    return v0
.end method
