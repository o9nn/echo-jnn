.class public final Lcom/dooboolab/rniap/RNIapActivityListener;
.super Ljava/lang/Object;
.source "RNIapActivityListener.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dooboolab/rniap/RNIapActivityListener$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\u0018\u0000 \u00032\u00020\u0001:\u0001\u0003B\u0005\u00a2\u0006\u0002\u0010\u0002\u00a8\u0006\u0004"
    }
    d2 = {
        "Lcom/dooboolab/rniap/RNIapActivityListener;",
        "",
        "()V",
        "Companion",
        "react-native-iap_playRelease"
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
.field public static final Companion:Lcom/dooboolab/rniap/RNIapActivityListener$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/dooboolab/rniap/RNIapActivityListener$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/dooboolab/rniap/RNIapActivityListener$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/dooboolab/rniap/RNIapActivityListener;->Companion:Lcom/dooboolab/rniap/RNIapActivityListener$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final registerActivity(Landroid/app/Activity;)V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/dooboolab/rniap/RNIapActivityListener;->Companion:Lcom/dooboolab/rniap/RNIapActivityListener$Companion;

    invoke-virtual {v0, p0}, Lcom/dooboolab/rniap/RNIapActivityListener$Companion;->registerActivity(Landroid/app/Activity;)V

    return-void
.end method
