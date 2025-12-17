.class public final Lexpo/modules/localauthentication/LocalAuthenticationModule$definition$lambda$8$$inlined$AsyncFunction$1;
.super Lkotlin/jvm/internal/Lambda;
.source "ObjectDefinitionBuilder.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/localauthentication/LocalAuthenticationModule;->definition()Lexpo/modules/kotlin/modules/ModuleDefinitionData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "[",
        "Ljava/lang/Object;",
        "Ljava/util/Set<",
        "+",
        "Ljava/lang/Integer;",
        ">;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nObjectDefinitionBuilder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ObjectDefinitionBuilder.kt\nexpo/modules/kotlin/objects/ObjectDefinitionBuilder$AsyncFunction$3\n+ 2 LocalAuthenticationModule.kt\nexpo/modules/localauthentication/LocalAuthenticationModule\n*L\n1#1,505:1\n38#2,15:506\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0008\u0003\n\u0002\u0010\u0011\n\u0002\u0010\u0000\n\u0002\u0008\u0003\u0010\u0000\u001a\u0002H\u0001\"\u0006\u0008\u0000\u0010\u0001\u0018\u00012\u0010\u0010\u0002\u001a\u000c\u0012\u0008\u0008\u0001\u0012\u0004\u0018\u00010\u00040\u0003H\n\u00a2\u0006\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "<anonymous>",
        "R",
        "it",
        "",
        "",
        "invoke",
        "([Ljava/lang/Object;)Ljava/lang/Object;",
        "expo/modules/kotlin/objects/ObjectDefinitionBuilder$AsyncFunction$3"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lexpo/modules/localauthentication/LocalAuthenticationModule;


# direct methods
.method public constructor <init>(Lexpo/modules/localauthentication/LocalAuthenticationModule;)V
    .locals 0

    iput-object p1, p0, Lexpo/modules/localauthentication/LocalAuthenticationModule$definition$lambda$8$$inlined$AsyncFunction$1;->this$0:Lexpo/modules/localauthentication/LocalAuthenticationModule;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 206
    check-cast p1, [Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lexpo/modules/localauthentication/LocalAuthenticationModule$definition$lambda$8$$inlined$AsyncFunction$1;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Set<",
            "+",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 506
    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    check-cast p1, Ljava/util/Set;

    iget-object v0, p0, Lexpo/modules/localauthentication/LocalAuthenticationModule$definition$lambda$8$$inlined$AsyncFunction$1;->this$0:Lexpo/modules/localauthentication/LocalAuthenticationModule;

    .line 507
    invoke-static {v0}, Lexpo/modules/localauthentication/LocalAuthenticationModule;->access$canAuthenticateUsingWeakBiometrics(Lexpo/modules/localauthentication/LocalAuthenticationModule;)I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lexpo/modules/localauthentication/LocalAuthenticationModule$definition$lambda$8$$inlined$AsyncFunction$1;->this$0:Lexpo/modules/localauthentication/LocalAuthenticationModule;

    const-string v1, "android.hardware.fingerprint"

    .line 514
    invoke-static {v0, v1}, Lexpo/modules/localauthentication/LocalAuthenticationModule;->access$hasSystemFeature(Lexpo/modules/localauthentication/LocalAuthenticationModule;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lexpo/modules/localauthentication/LocalAuthenticationModuleKt;->addIf(Ljava/util/Set;ZLjava/lang/Object;)V

    iget-object v0, p0, Lexpo/modules/localauthentication/LocalAuthenticationModule$definition$lambda$8$$inlined$AsyncFunction$1;->this$0:Lexpo/modules/localauthentication/LocalAuthenticationModule;

    const-string v1, "android.hardware.biometrics.face"

    .line 515
    invoke-static {v0, v1}, Lexpo/modules/localauthentication/LocalAuthenticationModule;->access$hasSystemFeature(Lexpo/modules/localauthentication/LocalAuthenticationModule;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p1, v0, v2}, Lexpo/modules/localauthentication/LocalAuthenticationModuleKt;->addIf(Ljava/util/Set;ZLjava/lang/Object;)V

    iget-object v0, p0, Lexpo/modules/localauthentication/LocalAuthenticationModule$definition$lambda$8$$inlined$AsyncFunction$1;->this$0:Lexpo/modules/localauthentication/LocalAuthenticationModule;

    const-string v2, "android.hardware.biometrics.iris"

    .line 516
    invoke-static {v0, v2}, Lexpo/modules/localauthentication/LocalAuthenticationModule;->access$hasSystemFeature(Lexpo/modules/localauthentication/LocalAuthenticationModule;Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p1, v0, v2}, Lexpo/modules/localauthentication/LocalAuthenticationModuleKt;->addIf(Ljava/util/Set;ZLjava/lang/Object;)V

    iget-object v0, p0, Lexpo/modules/localauthentication/LocalAuthenticationModule$definition$lambda$8$$inlined$AsyncFunction$1;->this$0:Lexpo/modules/localauthentication/LocalAuthenticationModule;

    const-string v2, "com.samsung.android.bio.face"

    .line 517
    invoke-static {v0, v2}, Lexpo/modules/localauthentication/LocalAuthenticationModule;->access$hasSystemFeature(Lexpo/modules/localauthentication/LocalAuthenticationModule;Ljava/lang/String;)Z

    move-result v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lexpo/modules/localauthentication/LocalAuthenticationModuleKt;->addIf(Ljava/util/Set;ZLjava/lang/Object;)V

    :goto_0
    return-object p1
.end method
