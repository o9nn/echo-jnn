.class public final Lexpo/modules/documentpicker/DocumentPickerOptions;
.super Ljava/lang/Object;
.source "DocumentPickerOptions.kt"

# interfaces
.implements Lexpo/modules/kotlin/records/Record;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\u0008\u0011\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0086\u0008\u0018\u00002\u00020\u0001B#\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0008J\t\u0010\u0012\u001a\u00020\u0003H\u00c6\u0003J\u000f\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005H\u00c6\u0003J\t\u0010\u0014\u001a\u00020\u0003H\u00c6\u0003J-\u0010\u0015\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u000e\u0008\u0002\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u00052\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0003H\u00c6\u0001J\u0013\u0010\u0016\u001a\u00020\u00032\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0018H\u00d6\u0003J\t\u0010\u0019\u001a\u00020\u001aH\u00d6\u0001J\t\u0010\u001b\u001a\u00020\u0006H\u00d6\u0001R\u001c\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\t\u0010\n\u001a\u0004\u0008\u000b\u0010\u000cR\u001c\u0010\u0007\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\r\u0010\n\u001a\u0004\u0008\u000e\u0010\u000cR\"\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u00058\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u000f\u0010\n\u001a\u0004\u0008\u0010\u0010\u0011\u00a8\u0006\u001c"
    }
    d2 = {
        "Lexpo/modules/documentpicker/DocumentPickerOptions;",
        "Lexpo/modules/kotlin/records/Record;",
        "copyToCacheDirectory",
        "",
        "type",
        "",
        "",
        "multiple",
        "(ZLjava/util/List;Z)V",
        "getCopyToCacheDirectory$annotations",
        "()V",
        "getCopyToCacheDirectory",
        "()Z",
        "getMultiple$annotations",
        "getMultiple",
        "getType$annotations",
        "getType",
        "()Ljava/util/List;",
        "component1",
        "component2",
        "component3",
        "copy",
        "equals",
        "other",
        "",
        "hashCode",
        "",
        "toString",
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
.field private final copyToCacheDirectory:Z

.field private final multiple:Z

.field private final type:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ZLjava/util/List;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    const-string v0, "type"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lexpo/modules/documentpicker/DocumentPickerOptions;->copyToCacheDirectory:Z

    iput-object p2, p0, Lexpo/modules/documentpicker/DocumentPickerOptions;->type:Ljava/util/List;

    iput-boolean p3, p0, Lexpo/modules/documentpicker/DocumentPickerOptions;->multiple:Z

    return-void
.end method

.method public static synthetic copy$default(Lexpo/modules/documentpicker/DocumentPickerOptions;ZLjava/util/List;ZILjava/lang/Object;)Lexpo/modules/documentpicker/DocumentPickerOptions;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-boolean p1, p0, Lexpo/modules/documentpicker/DocumentPickerOptions;->copyToCacheDirectory:Z

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget-object p2, p0, Lexpo/modules/documentpicker/DocumentPickerOptions;->type:Ljava/util/List;

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-boolean p3, p0, Lexpo/modules/documentpicker/DocumentPickerOptions;->multiple:Z

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lexpo/modules/documentpicker/DocumentPickerOptions;->copy(ZLjava/util/List;Z)Lexpo/modules/documentpicker/DocumentPickerOptions;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic getCopyToCacheDirectory$annotations()V
    .locals 0
    .annotation runtime Lexpo/modules/kotlin/records/Field;
    .end annotation

    return-void
.end method

.method public static synthetic getMultiple$annotations()V
    .locals 0
    .annotation runtime Lexpo/modules/kotlin/records/Field;
    .end annotation

    return-void
.end method

.method public static synthetic getType$annotations()V
    .locals 0
    .annotation runtime Lexpo/modules/kotlin/records/Field;
    .end annotation

    .annotation runtime Lexpo/modules/kotlin/records/IsNotEmpty;
    .end annotation

    return-void
.end method


# virtual methods
.method public final component1()Z
    .locals 1

    iget-boolean v0, p0, Lexpo/modules/documentpicker/DocumentPickerOptions;->copyToCacheDirectory:Z

    return v0
.end method

.method public final component2()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lexpo/modules/documentpicker/DocumentPickerOptions;->type:Ljava/util/List;

    return-object v0
.end method

.method public final component3()Z
    .locals 1

    iget-boolean v0, p0, Lexpo/modules/documentpicker/DocumentPickerOptions;->multiple:Z

    return v0
.end method

.method public final copy(ZLjava/util/List;Z)Lexpo/modules/documentpicker/DocumentPickerOptions;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)",
            "Lexpo/modules/documentpicker/DocumentPickerOptions;"
        }
    .end annotation

    const-string v0, "type"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lexpo/modules/documentpicker/DocumentPickerOptions;

    invoke-direct {v0, p1, p2, p3}, Lexpo/modules/documentpicker/DocumentPickerOptions;-><init>(ZLjava/util/List;Z)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lexpo/modules/documentpicker/DocumentPickerOptions;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lexpo/modules/documentpicker/DocumentPickerOptions;

    iget-boolean v1, p0, Lexpo/modules/documentpicker/DocumentPickerOptions;->copyToCacheDirectory:Z

    iget-boolean v3, p1, Lexpo/modules/documentpicker/DocumentPickerOptions;->copyToCacheDirectory:Z

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lexpo/modules/documentpicker/DocumentPickerOptions;->type:Ljava/util/List;

    iget-object v3, p1, Lexpo/modules/documentpicker/DocumentPickerOptions;->type:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-boolean v1, p0, Lexpo/modules/documentpicker/DocumentPickerOptions;->multiple:Z

    iget-boolean p1, p1, Lexpo/modules/documentpicker/DocumentPickerOptions;->multiple:Z

    if-eq v1, p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getCopyToCacheDirectory()Z
    .locals 1

    iget-boolean v0, p0, Lexpo/modules/documentpicker/DocumentPickerOptions;->copyToCacheDirectory:Z

    return v0
.end method

.method public final getMultiple()Z
    .locals 1

    iget-boolean v0, p0, Lexpo/modules/documentpicker/DocumentPickerOptions;->multiple:Z

    return v0
.end method

.method public final getType()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lexpo/modules/documentpicker/DocumentPickerOptions;->type:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-boolean v0, p0, Lexpo/modules/documentpicker/DocumentPickerOptions;->copyToCacheDirectory:Z

    invoke-static {v0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lexpo/modules/documentpicker/DocumentPickerOptions;->type:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lexpo/modules/documentpicker/DocumentPickerOptions;->multiple:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    iget-boolean v0, p0, Lexpo/modules/documentpicker/DocumentPickerOptions;->copyToCacheDirectory:Z

    iget-object v1, p0, Lexpo/modules/documentpicker/DocumentPickerOptions;->type:Ljava/util/List;

    iget-boolean v2, p0, Lexpo/modules/documentpicker/DocumentPickerOptions;->multiple:Z

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "DocumentPickerOptions(copyToCacheDirectory="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", type="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", multiple="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
