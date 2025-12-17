.class public interface abstract annotation Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInputField;
.super Ljava/lang/Object;
.source "TaskerInputField.kt"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInputField;
        descriptionResId = -0x1
        descriptionResIdName = ""
        ignoreInStringBlurb = false
        labelResId = -0x1
        labelResIdName = ""
        order = 0x7fffffff
    .end subannotation
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->FIELD:Ljava/lang/annotation/ElementType;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u001b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0007\u0008\u0087\u0002\u0018\u00002\u00020\u0001BD\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0008\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\n\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u0003R\u000f\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0006\u001a\u0004\u0008\u0006\u0010\u000cR\u000f\u0010\u000b\u001a\u00020\u0003\u00a2\u0006\u0006\u001a\u0004\u0008\u000b\u0010\rR\u000f\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0006\u001a\u0004\u0008\u0007\u0010\u000eR\u000f\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0006\u001a\u0004\u0008\u0002\u0010\rR\u000f\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u000cR\u000f\u0010\n\u001a\u00020\u0003\u00a2\u0006\u0006\u001a\u0004\u0008\n\u0010\rR\u000f\u0010\t\u001a\u00020\u0005\u00a2\u0006\u0006\u001a\u0004\u0008\t\u0010\u000c\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInputField;",
        "",
        "key",
        "",
        "labelResId",
        "",
        "descriptionResId",
        "ignoreInStringBlurb",
        "",
        "order",
        "labelResIdName",
        "descriptionResIdName",
        "()I",
        "()Ljava/lang/String;",
        "()Z",
        "taskerpluginlibrary_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/annotation/Retention;
    value = .enum Lkotlin/annotation/AnnotationRetention;->RUNTIME:Lkotlin/annotation/AnnotationRetention;
.end annotation

.annotation runtime Lkotlin/annotation/Target;
    allowedTargets = {
        .enum Lkotlin/annotation/AnnotationTarget;->FIELD:Lkotlin/annotation/AnnotationTarget;
    }
.end annotation


# virtual methods
.method public abstract descriptionResId()I
.end method

.method public abstract descriptionResIdName()Ljava/lang/String;
.end method

.method public abstract ignoreInStringBlurb()Z
.end method

.method public abstract key()Ljava/lang/String;
.end method

.method public abstract labelResId()I
.end method

.method public abstract labelResIdName()Ljava/lang/String;
.end method

.method public abstract order()I
.end method
