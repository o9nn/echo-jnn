.class public Lorg/mockito/internal/matchers/apachecommons/ReflectionEquals;
.super Ljava/lang/Object;
.source "ReflectionEquals.java"

# interfaces
.implements Lorg/mockito/ArgumentMatcher;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/mockito/ArgumentMatcher<",
        "Ljava/lang/Object;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field private final excludeFields:[Ljava/lang/String;

.field private final wanted:Ljava/lang/Object;


# direct methods
.method public varargs constructor <init>(Ljava/lang/Object;[Ljava/lang/String;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/mockito/internal/matchers/apachecommons/ReflectionEquals;->wanted:Ljava/lang/Object;

    iput-object p2, p0, Lorg/mockito/internal/matchers/apachecommons/ReflectionEquals;->excludeFields:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public matches(Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lorg/mockito/internal/matchers/apachecommons/ReflectionEquals;->wanted:Ljava/lang/Object;

    iget-object v1, p0, Lorg/mockito/internal/matchers/apachecommons/ReflectionEquals;->excludeFields:[Ljava/lang/String;

    .line 23
    invoke-static {v0, p1, v1}, Lorg/mockito/internal/matchers/apachecommons/EqualsBuilder;->reflectionEquals(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "refEq("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/mockito/internal/matchers/apachecommons/ReflectionEquals;->wanted:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
