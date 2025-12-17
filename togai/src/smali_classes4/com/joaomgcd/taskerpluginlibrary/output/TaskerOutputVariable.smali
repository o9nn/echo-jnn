.class public interface abstract annotation Lcom/joaomgcd/taskerpluginlibrary/output/TaskerOutputVariable;
.super Ljava/lang/Object;
.source "TaskerOutputVariable.kt"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lcom/joaomgcd/taskerpluginlibrary/output/TaskerOutputVariable;
        htmlLabelResId = -0x1
        htmlLabelResIdName = ""
        labelResId = -0x1
        labelResIdName = ""
        maxApi = 0x7fffffff
        minApi = -0x1
    .end subannotation
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->METHOD:Ljava/lang/annotation/ElementType;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u001b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0008\u0008\u0087\u0002\u0018\u00002\u00020\u0001BD\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\n\u001a\u00020\u0003R\u000f\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0006\u001a\u0004\u0008\u0006\u0010\u000bR\u000f\u0010\n\u001a\u00020\u0003\u00a2\u0006\u0006\u001a\u0004\u0008\n\u0010\u000cR\u000f\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u000bR\u000f\u0010\t\u001a\u00020\u0003\u00a2\u0006\u0006\u001a\u0004\u0008\t\u0010\u000cR\u000f\u0010\u0008\u001a\u00020\u0005\u00a2\u0006\u0006\u001a\u0004\u0008\u0008\u0010\u000bR\u000f\u0010\u0007\u001a\u00020\u0005\u00a2\u0006\u0006\u001a\u0004\u0008\u0007\u0010\u000bR\u000f\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0006\u001a\u0004\u0008\u0002\u0010\u000c\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/joaomgcd/taskerpluginlibrary/output/TaskerOutputVariable;",
        "",
        "name",
        "",
        "labelResId",
        "",
        "htmlLabelResId",
        "minApi",
        "maxApi",
        "labelResIdName",
        "htmlLabelResIdName",
        "()I",
        "()Ljava/lang/String;",
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
        .enum Lkotlin/annotation/AnnotationTarget;->FUNCTION:Lkotlin/annotation/AnnotationTarget;,
        .enum Lkotlin/annotation/AnnotationTarget;->PROPERTY_GETTER:Lkotlin/annotation/AnnotationTarget;
    }
.end annotation


# virtual methods
.method public abstract htmlLabelResId()I
.end method

.method public abstract htmlLabelResIdName()Ljava/lang/String;
.end method

.method public abstract labelResId()I
.end method

.method public abstract labelResIdName()Ljava/lang/String;
.end method

.method public abstract maxApi()I
.end method

.method public abstract minApi()I
.end method

.method public abstract name()Ljava/lang/String;
.end method
