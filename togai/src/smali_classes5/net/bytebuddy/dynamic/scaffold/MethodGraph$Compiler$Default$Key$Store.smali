.class public Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$Default$Key$Store;
.super Ljava/lang/Object;
.source "MethodGraph.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$Default$Key;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "Store"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$Default$Key$Store$Graph;,
        Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$Default$Key$Store$Entry;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# instance fields
.field private final entries:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$Default$Key$Harmonized<",
            "TV;>;",
            "Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$Default$Key$Store$Entry<",
            "TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 1

    .line 1047
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-direct {p0, v0}, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$Default$Key$Store;-><init>(Ljava/util/LinkedHashMap;)V

    return-void
.end method

.method private constructor <init>(Ljava/util/LinkedHashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedHashMap<",
            "Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$Default$Key$Harmonized<",
            "TV;>;",
            "Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$Default$Key$Store$Entry<",
            "TV;>;>;)V"
        }
    .end annotation

    .line 1055
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$Default$Key$Store;->entries:Ljava/util/LinkedHashMap;

    return-void
.end method

.method private static combine(Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$Default$Key$Store$Entry;Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$Default$Key$Store$Entry;)Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$Default$Key$Store$Entry;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<W:",
            "Ljava/lang/Object;",
            ">(",
            "Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$Default$Key$Store$Entry<",
            "TW;>;",
            "Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$Default$Key$Store$Entry<",
            "TW;>;)",
            "Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$Default$Key$Store$Entry<",
            "TW;>;"
        }
    .end annotation

    .line 1068
    invoke-interface {p0}, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$Default$Key$Store$Entry;->getCandidates()Ljava/util/Set;

    move-result-object v0

    invoke-interface {p1}, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$Default$Key$Store$Entry;->getCandidates()Ljava/util/Set;

    move-result-object v1

    .line 1069
    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V

    .line 1070
    invoke-virtual {v2, v0}, Ljava/util/LinkedHashSet;->addAll(Ljava/util/Collection;)Z

    .line 1071
    invoke-virtual {v2, v1}, Ljava/util/LinkedHashSet;->addAll(Ljava/util/Collection;)Z

    .line 1072
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/bytebuddy/description/method/MethodDescription;

    .line 1073
    invoke-interface {v3}, Lnet/bytebuddy/description/method/MethodDescription;->getDeclaringType()Lnet/bytebuddy/description/type/TypeDefinition;

    move-result-object v4

    invoke-interface {v4}, Lnet/bytebuddy/description/type/TypeDefinition;->asErasure()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v4

    .line 1074
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lnet/bytebuddy/description/method/MethodDescription;

    .line 1075
    invoke-interface {v6}, Lnet/bytebuddy/description/method/MethodDescription;->getDeclaringType()Lnet/bytebuddy/description/type/TypeDefinition;

    move-result-object v7

    invoke-interface {v7}, Lnet/bytebuddy/description/type/TypeDefinition;->asErasure()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v7

    .line 1076
    invoke-virtual {v4, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    goto :goto_0

    .line 1078
    :cond_2
    invoke-interface {v4, v7}, Lnet/bytebuddy/description/type/TypeDescription;->isAssignableTo(Lnet/bytebuddy/description/type/TypeDescription;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1079
    invoke-virtual {v2, v6}, Ljava/util/LinkedHashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1081
    :cond_3
    invoke-interface {v4, v7}, Lnet/bytebuddy/description/type/TypeDescription;->isAssignableFrom(Lnet/bytebuddy/description/type/TypeDescription;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1082
    invoke-virtual {v2, v3}, Ljava/util/LinkedHashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1087
    :cond_4
    invoke-interface {p0}, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$Default$Key$Store$Entry;->getKey()Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$Default$Key$Harmonized;

    move-result-object v0

    invoke-interface {p1}, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$Default$Key$Store$Entry;->getKey()Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$Default$Key$Harmonized;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$Default$Key$Harmonized;->combineWith(Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$Default$Key$Harmonized;)Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$Default$Key$Harmonized;

    move-result-object v0

    .line 1088
    invoke-interface {p0}, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$Default$Key$Store$Entry;->getVisibility()Lnet/bytebuddy/description/modifier/Visibility;

    move-result-object p0

    invoke-interface {p1}, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$Default$Key$Store$Entry;->getVisibility()Lnet/bytebuddy/description/modifier/Visibility;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/bytebuddy/description/modifier/Visibility;->expandTo(Lnet/bytebuddy/description/modifier/Visibility;)Lnet/bytebuddy/description/modifier/Visibility;

    move-result-object p0

    .line 1089
    invoke-virtual {v2}, Ljava/util/LinkedHashSet;->size()I

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_5

    new-instance p1, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$Default$Key$Store$Entry$Resolved;

    .line 1090
    invoke-virtual {v2}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/bytebuddy/description/method/MethodDescription;

    const/4 v2, 0x0

    invoke-direct {p1, v0, v1, p0, v2}, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$Default$Key$Store$Entry$Resolved;-><init>(Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$Default$Key$Harmonized;Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/description/modifier/Visibility;Z)V

    goto :goto_1

    :cond_5
    new-instance p1, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$Default$Key$Store$Entry$Ambiguous;

    invoke-direct {p1, v0, v2, p0}, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$Default$Key$Store$Entry$Ambiguous;-><init>(Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$Default$Key$Harmonized;Ljava/util/LinkedHashSet;Lnet/bytebuddy/description/modifier/Visibility;)V

    :goto_1
    return-object p1
.end method


# virtual methods
.method protected asGraph(Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$Default$Merger;)Lnet/bytebuddy/dynamic/scaffold/MethodGraph;
    .locals 5

    .line 1167
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iget-object v1, p0, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$Default$Key$Store;->entries:Ljava/util/LinkedHashMap;

    .line 1168
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$Default$Key$Store$Entry;

    .line 1169
    invoke-interface {v2, p1}, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$Default$Key$Store$Entry;->asNode(Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$Default$Merger;)Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Node;

    move-result-object v3

    .line 1170
    invoke-interface {v2}, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$Default$Key$Store$Entry;->getKey()Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$Default$Key$Harmonized;

    move-result-object v2

    invoke-interface {v3}, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Node;->getRepresentative()Lnet/bytebuddy/description/method/MethodDescription;

    move-result-object v4

    invoke-interface {v4}, Lnet/bytebuddy/description/method/MethodDescription;->asTypeToken()Lnet/bytebuddy/description/method/MethodDescription$TypeToken;

    move-result-object v4

    invoke-virtual {v2, v4}, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$Default$Key$Harmonized;->detach(Lnet/bytebuddy/description/method/MethodDescription$TypeToken;)Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$Default$Key$Detached;

    move-result-object v2

    invoke-virtual {v0, v2, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1172
    :cond_0
    new-instance p1, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$Default$Key$Store$Graph;

    invoke-direct {p1, v0}, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$Default$Key$Store$Graph;-><init>(Ljava/util/LinkedHashMap;)V

    return-object p1
.end method

.method protected combineWith(Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$Default$Key$Store;)Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$Default$Key$Store;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$Default$Key$Store<",
            "TV;>;)",
            "Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$Default$Key$Store<",
            "TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$Default$Key$Store;->entries:Ljava/util/LinkedHashMap;

    .line 1123
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    .line 1125
    :cond_0
    iget-object v0, p1, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$Default$Key$Store;->entries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p0

    .line 1128
    :cond_1
    new-instance v0, Ljava/util/LinkedHashMap;

    iget-object v1, p0, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$Default$Key$Store;->entries:Ljava/util/LinkedHashMap;

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    .line 1129
    iget-object p1, p1, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$Default$Key$Store;->entries:Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$Default$Key$Store$Entry;

    .line 1130
    invoke-interface {v1}, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$Default$Key$Store$Entry;->getKey()Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$Default$Key$Harmonized;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$Default$Key$Store$Entry;

    if-nez v2, :cond_2

    goto :goto_1

    .line 1132
    :cond_2
    invoke-static {v2, v1}, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$Default$Key$Store;->combine(Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$Default$Key$Store$Entry;Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$Default$Key$Store$Entry;)Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$Default$Key$Store$Entry;

    move-result-object v1

    .line 1133
    :goto_1
    invoke-interface {v1}, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$Default$Key$Store$Entry;->getKey()Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$Default$Key$Harmonized;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1135
    :cond_3
    new-instance p1, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$Default$Key$Store;

    invoke-direct {p1, v0}, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$Default$Key$Store;-><init>(Ljava/util/LinkedHashMap;)V

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    iget-object v2, p0, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$Default$Key$Store;->entries:Ljava/util/LinkedHashMap;

    check-cast p1, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$Default$Key$Store;

    iget-object p1, p1, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$Default$Key$Store;->entries:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, p1}, Ljava/util/LinkedHashMap;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v1

    :cond_3
    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$Default$Key$Store;->entries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->hashCode()I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    return v1
.end method

.method protected inject(Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$Default$Key$Store;)Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$Default$Key$Store;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$Default$Key$Store<",
            "TV;>;)",
            "Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$Default$Key$Store<",
            "TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$Default$Key$Store;->entries:Ljava/util/LinkedHashMap;

    .line 1145
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    .line 1147
    :cond_0
    iget-object v0, p1, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$Default$Key$Store;->entries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p0

    .line 1150
    :cond_1
    new-instance v0, Ljava/util/LinkedHashMap;

    iget-object v1, p0, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$Default$Key$Store;->entries:Ljava/util/LinkedHashMap;

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    .line 1151
    iget-object p1, p1, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$Default$Key$Store;->entries:Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$Default$Key$Store$Entry;

    .line 1152
    invoke-interface {v1}, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$Default$Key$Store$Entry;->getKey()Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$Default$Key$Harmonized;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$Default$Key$Store$Entry;

    if-nez v2, :cond_2

    goto :goto_1

    .line 1154
    :cond_2
    invoke-interface {v1}, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$Default$Key$Store$Entry;->getKey()Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$Default$Key$Harmonized;

    move-result-object v3

    invoke-interface {v1}, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$Default$Key$Store$Entry;->getVisibility()Lnet/bytebuddy/description/modifier/Visibility;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$Default$Key$Store$Entry;->inject(Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$Default$Key$Harmonized;Lnet/bytebuddy/description/modifier/Visibility;)Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$Default$Key$Store$Entry;

    move-result-object v1

    .line 1155
    :goto_1
    invoke-interface {v1}, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$Default$Key$Store$Entry;->getKey()Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$Default$Key$Harmonized;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1157
    :cond_3
    new-instance p1, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$Default$Key$Store;

    invoke-direct {p1, v0}, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$Default$Key$Store;-><init>(Ljava/util/LinkedHashMap;)V

    return-object p1
.end method

.method protected registerTopLevel(Ljava/util/List;Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$Default$Harmonizer;)Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$Default$Key$Store;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            ">;",
            "Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$Default$Harmonizer<",
            "TV;>;)",
            "Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$Default$Key$Store<",
            "TV;>;"
        }
    .end annotation

    .line 1102
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 1105
    :cond_0
    new-instance v0, Ljava/util/LinkedHashMap;

    iget-object v1, p0, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$Default$Key$Store;->entries:Ljava/util/LinkedHashMap;

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    .line 1106
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/bytebuddy/description/method/MethodDescription;

    .line 1107
    invoke-static {v1, p2}, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$Default$Key$Harmonized;->of(Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$Default$Harmonizer;)Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$Default$Key$Harmonized;

    move-result-object v2

    .line 1108
    invoke-virtual {v0, v2}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$Default$Key$Store$Entry;

    if-nez v3, :cond_1

    new-instance v3, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$Default$Key$Store$Entry$Initial;

    invoke-direct {v3, v2}, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$Default$Key$Store$Entry$Initial;-><init>(Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$Default$Key$Harmonized;)V

    .line 1110
    :cond_1
    invoke-interface {v3, v1, p2}, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$Default$Key$Store$Entry;->extendBy(Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$Default$Harmonizer;)Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$Default$Key$Store$Entry;

    move-result-object v1

    .line 1111
    invoke-interface {v1}, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$Default$Key$Store$Entry;->getKey()Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$Default$Key$Harmonized;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1113
    :cond_2
    new-instance p1, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$Default$Key$Store;

    invoke-direct {p1, v0}, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$Default$Key$Store;-><init>(Ljava/util/LinkedHashMap;)V

    return-object p1
.end method
