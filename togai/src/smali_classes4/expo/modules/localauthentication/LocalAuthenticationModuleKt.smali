.class public final Lexpo/modules/localauthentication/LocalAuthenticationModuleKt;
.super Ljava/lang/Object;
.source "LocalAuthenticationModule.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0008\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010#\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\u001a+\u0010\t\u001a\u00020\n\"\u0004\u0008\u0000\u0010\u000b*\u0008\u0012\u0004\u0012\u0002H\u000b0\u000c2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u0002H\u000b\u00a2\u0006\u0002\u0010\u0010\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0002\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0003\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0004\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0005\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0006\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0007\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0008\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0011"
    }
    d2 = {
        "AUTHENTICATION_TYPE_FACIAL_RECOGNITION",
        "",
        "AUTHENTICATION_TYPE_FINGERPRINT",
        "AUTHENTICATION_TYPE_IRIS",
        "DEVICE_CREDENTIAL_FALLBACK_CODE",
        "SECURITY_LEVEL_BIOMETRIC_STRONG",
        "SECURITY_LEVEL_BIOMETRIC_WEAK",
        "SECURITY_LEVEL_NONE",
        "SECURITY_LEVEL_SECRET",
        "addIf",
        "",
        "T",
        "",
        "condition",
        "",
        "valueToAdd",
        "(Ljava/util/Set;ZLjava/lang/Object;)V",
        "expo-local-authentication_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final AUTHENTICATION_TYPE_FACIAL_RECOGNITION:I = 0x2

.field private static final AUTHENTICATION_TYPE_FINGERPRINT:I = 0x1

.field private static final AUTHENTICATION_TYPE_IRIS:I = 0x3

.field private static final DEVICE_CREDENTIAL_FALLBACK_CODE:I = 0x6

.field private static final SECURITY_LEVEL_BIOMETRIC_STRONG:I = 0x3

.field private static final SECURITY_LEVEL_BIOMETRIC_WEAK:I = 0x2

.field private static final SECURITY_LEVEL_NONE:I = 0x0

.field private static final SECURITY_LEVEL_SECRET:I = 0x1


# direct methods
.method public static final addIf(Ljava/util/Set;ZLjava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set<",
            "TT;>;ZTT;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 345
    invoke-interface {p0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
