.class public final Lexpo/modules/documentpicker/DocumentPickerResult;
.super Ljava/lang/Object;
.source "DocumentPickerResults.kt"

# interfaces
.implements Lexpo/modules/kotlin/records/Record;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B!\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0010\u0008\u0002\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u0007J\t\u0010\u000f\u001a\u00020\u0003H\u00c6\u0003J\u0011\u0010\u0010\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005H\u00c6\u0003J%\u0010\u0011\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0010\u0008\u0002\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005H\u00c6\u0001J\u0013\u0010\u0012\u001a\u00020\u00032\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u00d6\u0003J\t\u0010\u0015\u001a\u00020\u0016H\u00d6\u0001J\t\u0010\u0017\u001a\u00020\u0018H\u00d6\u0001R$\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u00058\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u0008\u0010\t\u001a\u0004\u0008\n\u0010\u000bR\u001c\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u000c\u0010\t\u001a\u0004\u0008\r\u0010\u000e\u00a8\u0006\u0019"
    }
    d2 = {
        "Lexpo/modules/documentpicker/DocumentPickerResult;",
        "Lexpo/modules/kotlin/records/Record;",
        "canceled",
        "",
        "assets",
        "",
        "Lexpo/modules/documentpicker/DocumentInfo;",
        "(ZLjava/util/List;)V",
        "getAssets$annotations",
        "()V",
        "getAssets",
        "()Ljava/util/List;",
        "getCanceled$annotations",
        "getCanceled",
        "()Z",
        "component1",
        "component2",
        "copy",
        "equals",
        "other",
        "",
        "hashCode",
        "",
        "toString",
        "",
        "expo-document-picker_release"
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
.field private final assets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lexpo/modules/documentpicker/DocumentInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final canceled:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1, v0}, Lexpo/modules/documentpicker/DocumentPickerResult;-><init>(ZLjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(ZLjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "Lexpo/modules/documentpicker/DocumentInfo;",
            ">;)V"
        }
    .end annotation

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lexpo/modules/documentpicker/DocumentPickerResult;->canceled:Z

    iput-object p2, p0, Lexpo/modules/documentpicker/DocumentPickerResult;->assets:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(ZLjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    const/4 p1, 0x0

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    const/4 p2, 0x0

    .line 6
    :cond_1
    invoke-direct {p0, p1, p2}, Lexpo/modules/documentpicker/DocumentPickerResult;-><init>(ZLjava/util/List;)V

    return-void
.end method

.method public static synthetic copy$default(Lexpo/modules/documentpicker/DocumentPickerResult;ZLjava/util/List;ILjava/lang/Object;)Lexpo/modules/documentpicker/DocumentPickerResult;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-boolean p1, p0, Lexpo/modules/documentpicker/DocumentPickerResult;->canceled:Z

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Lexpo/modules/documentpicker/DocumentPickerResult;->assets:Ljava/util/List;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lexpo/modules/documentpicker/DocumentPickerResult;->copy(ZLjava/util/List;)Lexpo/modules/documentpicker/DocumentPickerResult;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic getAssets$annotations()V
    .locals 0
    .annotation runtime Lexpo/modules/kotlin/records/Field;
    .end annotation

    return-void
.end method

.method public static synthetic getCanceled$annotations()V
    .locals 0
    .annotation runtime Lexpo/modules/kotlin/records/Field;
    .end annotation

    return-void
.end method


# virtual methods
.method public final component1()Z
    .locals 1

    iget-boolean v0, p0, Lexpo/modules/documentpicker/DocumentPickerResult;->canceled:Z

    return v0
.end method

.method public final component2()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lexpo/modules/documentpicker/DocumentInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lexpo/modules/documentpicker/DocumentPickerResult;->assets:Ljava/util/List;

    return-object v0
.end method

.method public final copy(ZLjava/util/List;)Lexpo/modules/documentpicker/DocumentPickerResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "Lexpo/modules/documentpicker/DocumentInfo;",
            ">;)",
            "Lexpo/modules/documentpicker/DocumentPickerResult;"
        }
    .end annotation

    new-instance v0, Lexpo/modules/documentpicker/DocumentPickerResult;

    invoke-direct {v0, p1, p2}, Lexpo/modules/documentpicker/DocumentPickerResult;-><init>(ZLjava/util/List;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lexpo/modules/documentpicker/DocumentPickerResult;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lexpo/modules/documentpicker/DocumentPickerResult;

    iget-boolean v1, p0, Lexpo/modules/documentpicker/DocumentPickerResult;->canceled:Z

    iget-boolean v3, p1, Lexpo/modules/documentpicker/DocumentPickerResult;->canceled:Z

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lexpo/modules/documentpicker/DocumentPickerResult;->assets:Ljava/util/List;

    iget-object p1, p1, Lexpo/modules/documentpicker/DocumentPickerResult;->assets:Ljava/util/List;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getAssets()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lexpo/modules/documentpicker/DocumentInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lexpo/modules/documentpicker/DocumentPickerResult;->assets:Ljava/util/List;

    return-object v0
.end method

.method public final getCanceled()Z
    .locals 1

    iget-boolean v0, p0, Lexpo/modules/documentpicker/DocumentPickerResult;->canceled:Z

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-boolean v0, p0, Lexpo/modules/documentpicker/DocumentPickerResult;->canceled:Z

    invoke-static {v0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lexpo/modules/documentpicker/DocumentPickerResult;->assets:Ljava/util/List;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget-boolean v0, p0, Lexpo/modules/documentpicker/DocumentPickerResult;->canceled:Z

    iget-object v1, p0, Lexpo/modules/documentpicker/DocumentPickerResult;->assets:Ljava/util/List;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "DocumentPickerResult(canceled="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", assets="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
