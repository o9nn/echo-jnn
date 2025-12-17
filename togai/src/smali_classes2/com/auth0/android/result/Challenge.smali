.class public final Lcom/auth0/android/result/Challenge;
.super Ljava/lang/Object;
.source "Challenge.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0008\u0018\u00002\u00020\u0001B!\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0002\u0010\u0006R\u0018\u0010\u0005\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\u0008R\u0018\u0010\u0004\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u0008\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/auth0/android/result/Challenge;",
        "",
        "challengeType",
        "",
        "oobCode",
        "bindingMethod",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V",
        "getBindingMethod",
        "()Ljava/lang/String;",
        "getChallengeType",
        "getOobCode",
        "auth0_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final bindingMethod:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "binding_method"
    .end annotation
.end field

.field private final challengeType:Ljava/lang/String;
    .annotation runtime Lcom/auth0/android/request/internal/JsonRequired;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "challenge_type"
    .end annotation
.end field

.field private final oobCode:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "oob_code"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "challengeType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/auth0/android/result/Challenge;->challengeType:Ljava/lang/String;

    iput-object p2, p0, Lcom/auth0/android/result/Challenge;->oobCode:Ljava/lang/String;

    iput-object p3, p0, Lcom/auth0/android/result/Challenge;->bindingMethod:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getBindingMethod()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/auth0/android/result/Challenge;->bindingMethod:Ljava/lang/String;

    return-object v0
.end method

.method public final getChallengeType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/auth0/android/result/Challenge;->challengeType:Ljava/lang/String;

    return-object v0
.end method

.method public final getOobCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/auth0/android/result/Challenge;->oobCode:Ljava/lang/String;

    return-object v0
.end method
