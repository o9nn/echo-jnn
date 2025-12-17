.class public final Lapp/rive/runtime/kotlin/controllers/RiveFileController;
.super Ljava/lang/Object;
.source "RiveFileController.kt"

# interfaces
.implements Lapp/rive/runtime/kotlin/Observable;
.implements Lapp/rive/runtime/kotlin/core/RefCount;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lapp/rive/runtime/kotlin/controllers/RiveFileController$Companion;,
        Lapp/rive/runtime/kotlin/controllers/RiveFileController$Listener;,
        Lapp/rive/runtime/kotlin/controllers/RiveFileController$RiveEventListener;,
        Lapp/rive/runtime/kotlin/controllers/RiveFileController$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lapp/rive/runtime/kotlin/Observable<",
        "Lapp/rive/runtime/kotlin/controllers/RiveFileController$Listener;",
        ">;",
        "Lapp/rive/runtime/kotlin/core/RefCount;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRiveFileController.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RiveFileController.kt\napp/rive/runtime/kotlin/controllers/RiveFileController\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,1032:1\n1#2:1033\n1855#3,2:1034\n1855#3,2:1036\n1855#3,2:1038\n1855#3,2:1040\n1855#3,2:1042\n1855#3,2:1044\n1855#3,2:1046\n1855#3,2:1048\n1855#3,2:1050\n1855#3,2:1052\n1855#3,2:1054\n1855#3,2:1056\n1855#3,2:1058\n1855#3,2:1060\n1855#3,2:1062\n1855#3,2:1064\n1855#3,2:1066\n1855#3,2:1068\n1855#3,2:1070\n1855#3,2:1072\n1855#3,2:1074\n1855#3,2:1076\n1855#3,2:1078\n1855#3,2:1080\n1855#3,2:1082\n1855#3,2:1084\n766#3:1086\n857#3,2:1087\n766#3:1089\n857#3,2:1090\n1855#3,2:1092\n1855#3,2:1094\n1855#3,2:1096\n1855#3,2:1098\n1855#3,2:1100\n1855#3,2:1102\n1855#3,2:1104\n1855#3,2:1106\n1855#3,2:1108\n1855#3,2:1110\n1855#3,2:1112\n1855#3,2:1114\n*S KotlinDebug\n*F\n+ 1 RiveFileController.kt\napp/rive/runtime/kotlin/controllers/RiveFileController\n*L\n284#1:1034,2\n285#1:1036,2\n286#1:1038,2\n287#1:1040,2\n311#1:1042,2\n325#1:1044,2\n345#1:1046,2\n444#1:1048,2\n482#1:1050,2\n485#1:1052,2\n513#1:1054,2\n514#1:1056,2\n519#1:1058,2\n521#1:1060,2\n527#1:1062,2\n529#1:1064,2\n537#1:1066,2\n542#1:1068,2\n548#1:1070,2\n550#1:1072,2\n557#1:1074,2\n559#1:1076,2\n605#1:1078,2\n629#1:1080,2\n698#1:1082,2\n711#1:1084,2\n736#1:1086\n736#1:1087,2\n740#1:1089\n740#1:1090,2\n764#1:1092,2\n767#1:1094,2\n782#1:1096,2\n788#1:1098,2\n889#1:1100,2\n961#1:1102,2\n965#1:1104,2\n969#1:1106,2\n973#1:1108,2\n978#1:1110,2\n982#1:1112,2\n986#1:1114,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0094\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010#\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u0007\n\u0002\u0008\u0019\n\u0002\u0010\"\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u000f\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u001e\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0011\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0010\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u0000 \u00dc\u00012\u0008\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003:\u0006\u00dc\u0001\u00dd\u0001\u00de\u0001BI\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u0012\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\t\u0012\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b\u0012\u0016\u0008\u0002\u0010\u000c\u001a\u0010\u0012\u0004\u0012\u00020\u000e\u0018\u00010\rj\u0004\u0018\u0001`\u000f\u00a2\u0006\u0002\u0010\u0010J\u0010\u0010\u0085\u0001\u001a\u00020\u000e2\u0007\u0010\u0086\u0001\u001a\u00020\u0013J\u0012\u0010\u0087\u0001\u001a\u00020\u000e2\u0007\u0010\u0088\u0001\u001a\u00020GH\u0007J\u0018\u0010%\u001a\u0008\u0012\u0004\u0012\u00020\"0$2\u0008\u0010\u0089\u0001\u001a\u00030\u008a\u0001H\u0002J\u001f\u0010%\u001a\u0008\u0012\u0004\u0012\u00020\"0$2\u000f\u0010\u008b\u0001\u001a\n\u0012\u0005\u0012\u00030\u008a\u00010\u008c\u0001H\u0002J\u0006\u0010\u0006\u001a\u00020\u000eJ)\u0010\u008d\u0001\u001a\u00020\u000e2\u0008\u0010\u008e\u0001\u001a\u00030\u008a\u00012\u0008\u0010\u008f\u0001\u001a\u00030\u008a\u00012\u000c\u0008\u0002\u0010\u0090\u0001\u001a\u0005\u0018\u00010\u008a\u0001J\u001b\u0010\u0091\u0001\u001a\u00020\u000e2\u0008\u0010\u008f\u0001\u001a\u00030\u008a\u00012\u0008\u0010\u0090\u0001\u001a\u00030\u008a\u0001J\u0019\u0010\u0092\u0001\u001a\u0008\u0012\u0004\u0012\u00020e0$2\u0008\u0010\u0089\u0001\u001a\u00030\u008a\u0001H\u0002J\u0014\u0010\u0093\u0001\u001a\u0005\u0018\u00010\u008a\u00012\u0008\u0010\u0094\u0001\u001a\u00030\u008a\u0001J\u001e\u0010\u0093\u0001\u001a\u0005\u0018\u00010\u008a\u00012\u0008\u0010\u0094\u0001\u001a\u00030\u008a\u00012\u0008\u0010\u0090\u0001\u001a\u00030\u008a\u0001J\u000e\u0010\u0095\u0001\u001a\u0004\u0018\u00010G\u00a2\u0006\u0002\u0010JJ\u0012\u0010\u0096\u0001\u001a\u00020\u000e2\u0007\u0010\u0088\u0001\u001a\u00020GH\u0003J\u0013\u0010\u0097\u0001\u001a\u00020\u000e2\u0008\u0010\u0098\u0001\u001a\u00030\u0099\u0001H\u0002J\u0013\u0010\u009a\u0001\u001a\u00020\u000e2\u0008\u0010\u009b\u0001\u001a\u00030\u009c\u0001H\u0002J\u0013\u0010\u009d\u0001\u001a\u00020\u000e2\u0008\u0010\u009b\u0001\u001a\u00030\u009c\u0001H\u0002J\u0013\u0010\u009e\u0001\u001a\u00020\u000e2\u0008\u0010\u009b\u0001\u001a\u00030\u009c\u0001H\u0002J\u001c\u0010\u009f\u0001\u001a\u00020\u000e2\u0007\u0010\u00a0\u0001\u001a\u00020e2\u0008\u0010\u00a1\u0001\u001a\u00030\u00a2\u0001H\u0002J\u0013\u0010\u00a3\u0001\u001a\u00020\u000e2\u0008\u0010\u009b\u0001\u001a\u00030\u009c\u0001H\u0002J\u0007\u0010\u00a4\u0001\u001a\u00020\u000eJ\u0012\u0010\u00a4\u0001\u001a\u00020\u000e2\u0007\u0010\u00a5\u0001\u001a\u00020\"H\u0002J\u0012\u0010\u00a4\u0001\u001a\u00020\u000e2\u0007\u0010\u00a0\u0001\u001a\u00020eH\u0002J\u001c\u0010\u00a4\u0001\u001a\u00020\u000e2\u0008\u0010\u0089\u0001\u001a\u00030\u008a\u00012\t\u0008\u0002\u0010\u00a6\u0001\u001a\u00020\u0007J\"\u0010\u00a4\u0001\u001a\u00020\u000e2\u000e\u0010\u008b\u0001\u001a\t\u0012\u0005\u0012\u00030\u008a\u00010$2\t\u0008\u0002\u0010\u00a7\u0001\u001a\u00020\u0007J*\u0010\u00a8\u0001\u001a\u00020\u000e2\u0007\u0010\u00a9\u0001\u001a\u00020\"2\u0006\u0010\u0004\u001a\u00020\u00052\u0008\u0010\u00aa\u0001\u001a\u00030\u00ab\u0001H\u0000\u00a2\u0006\u0003\u0008\u00ac\u0001J(\u0010\u00a8\u0001\u001a\u00020\u000e2\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\n\u0008\u0002\u0010\u00aa\u0001\u001a\u00030\u00ab\u00012\t\u0008\u0002\u0010\u00ad\u0001\u001a\u00020\u0007J#\u0010\u00a8\u0001\u001a\u00020\u000e2\u0007\u0010\u00ae\u0001\u001a\u00020e2\t\u0008\u0002\u0010\u00af\u0001\u001a\u00020\u0007H\u0000\u00a2\u0006\u0003\u0008\u00ac\u0001J=\u0010\u00a8\u0001\u001a\u00020\u000e2\u0008\u0010\u0089\u0001\u001a\u00030\u008a\u00012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\n\u0008\u0002\u0010\u00aa\u0001\u001a\u00030\u00ab\u00012\t\u0008\u0002\u0010\u00a6\u0001\u001a\u00020\u00072\t\u0008\u0002\u0010\u00ad\u0001\u001a\u00020\u0007JC\u0010\u00a8\u0001\u001a\u00020\u000e2\u000e\u0010\u008b\u0001\u001a\t\u0012\u0005\u0012\u00030\u008a\u00010$2\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\n\u0008\u0002\u0010\u00aa\u0001\u001a\u00030\u00ab\u00012\t\u0008\u0002\u0010\u00a7\u0001\u001a\u00020\u00072\t\u0008\u0002\u0010\u00ad\u0001\u001a\u00020\u0007J?\u0010\u00b0\u0001\u001a\u00020\u000e2\u0008\u0010\u0089\u0001\u001a\u00030\u008a\u00012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\n\u0008\u0002\u0010\u00aa\u0001\u001a\u00030\u00ab\u00012\t\u0008\u0002\u0010\u00a6\u0001\u001a\u00020\u00072\t\u0008\u0002\u0010\u00ad\u0001\u001a\u00020\u0007H\u0002J#\u0010\u00b1\u0001\u001a\u00020\u000e2\u0008\u0010\u00b2\u0001\u001a\u00030\u00b3\u00012\u0007\u0010\u00b4\u0001\u001a\u00020G2\u0007\u0010\u00b5\u0001\u001a\u00020GJ\t\u0010\u00b6\u0001\u001a\u00020\u000eH\u0003J8\u0010\u00b7\u0001\u001a\u00020\u000e2\u0008\u0010\u008e\u0001\u001a\u00030\u008a\u00012\u0008\u0010\u008f\u0001\u001a\u00030\u008a\u00012\u000b\u0008\u0002\u0010\u0015\u001a\u0005\u0018\u00010\u00b8\u00012\u000c\u0008\u0002\u0010\u0090\u0001\u001a\u0005\u0018\u00010\u008a\u0001H\u0002J(\u0010\u00b9\u0001\u001a\u00020\u000e2\u0014\u0010\u00ba\u0001\u001a\u000b\u0012\u0006\u0008\u0001\u0012\u0002020\u00bb\u0001\"\u000202H\u0000\u00a2\u0006\u0006\u0008\u00bc\u0001\u0010\u00bd\u0001J\u0012\u0010\u00be\u0001\u001a\u00020\u000e2\u0007\u0010\u0086\u0001\u001a\u00020\u0002H\u0016J\n\u0010\u00bf\u0001\u001a\u00030\u00c0\u0001H\u0016J\u0010\u0010\u00c1\u0001\u001a\u00020\u000e2\u0007\u0010\u0086\u0001\u001a\u00020\u0013J\u000f\u0010\u00c2\u0001\u001a\u00020\u000eH\u0000\u00a2\u0006\u0003\u0008\u00c3\u0001J\u001b\u0010\u00c4\u0001\u001a\u00020\u00072\u0007\u0010\u00ae\u0001\u001a\u00020e2\u0007\u0010\u0088\u0001\u001a\u00020GH\u0002J\u0013\u0010\u00c5\u0001\u001a\u00020\u000e2\u0008\u0010\u00a1\u0001\u001a\u00030\u00c6\u0001H\u0007J\u000c\u0010\u00c7\u0001\u001a\u0005\u0018\u00010\u00c6\u0001H\u0007J\u0015\u0010\u00c8\u0001\u001a\u00020\u000e2\u000c\u0008\u0002\u0010\u00c9\u0001\u001a\u0005\u0018\u00010\u008a\u0001J\u0012\u0010\u00ca\u0001\u001a\u00020\u000e2\u0007\u0010\u00cb\u0001\u001a\u00020\u000bH\u0002J1\u0010\u00cc\u0001\u001a\u00020\u000e2\u0008\u0010\u008e\u0001\u001a\u00030\u008a\u00012\u0008\u0010\u008f\u0001\u001a\u00030\u008a\u00012\u0006\u0010\u0015\u001a\u00020\u00072\u000c\u0008\u0002\u0010\u0090\u0001\u001a\u0005\u0018\u00010\u008a\u0001J#\u0010\u00cd\u0001\u001a\u00020\u000e2\u0008\u0010\u008f\u0001\u001a\u00030\u008a\u00012\u0006\u0010\u0015\u001a\u00020\u00072\u0008\u0010\u0090\u0001\u001a\u00030\u008a\u0001J1\u0010\u00ce\u0001\u001a\u00020\u000e2\u0008\u0010\u008e\u0001\u001a\u00030\u008a\u00012\u0008\u0010\u008f\u0001\u001a\u00030\u008a\u00012\u0006\u0010\u0015\u001a\u00020G2\u000c\u0008\u0002\u0010\u0090\u0001\u001a\u0005\u0018\u00010\u008a\u0001J#\u0010\u00cf\u0001\u001a\u00020\u000e2\u0008\u0010\u008f\u0001\u001a\u00030\u008a\u00012\u0006\u0010\u0015\u001a\u00020G2\u0008\u0010\u0090\u0001\u001a\u00030\u008a\u0001J\u001d\u0010\u00d0\u0001\u001a\u00020\u000e2\u0006\u0010\u0008\u001a\u00020\t2\u000c\u0008\u0002\u0010\u00d1\u0001\u001a\u0005\u0018\u00010\u008a\u0001J\u001b\u0010\u00d2\u0001\u001a\u00020\u000e2\u0008\u0010\u0094\u0001\u001a\u00030\u008a\u00012\u0008\u0010\u00d3\u0001\u001a\u00030\u008a\u0001J%\u0010\u00d2\u0001\u001a\u00020\u000e2\u0008\u0010\u0094\u0001\u001a\u00030\u008a\u00012\u0008\u0010\u00d3\u0001\u001a\u00030\u008a\u00012\u0008\u0010\u0090\u0001\u001a\u00030\u008a\u0001J\u000f\u0010\u00d4\u0001\u001a\u00020\u000e2\u0006\u0010\u0015\u001a\u00020GJ\u0019\u0010\u00d5\u0001\u001a\u00020\u000e2\u0008\u0010\u00d6\u0001\u001a\u00030\u00d7\u0001H\u0000\u00a2\u0006\u0003\u0008\u00d8\u0001J\u0018\u0010~\u001a\u0008\u0012\u0004\u0012\u00020e0$2\u0008\u0010\u0089\u0001\u001a\u00030\u008a\u0001H\u0002J\u001f\u0010~\u001a\u0008\u0012\u0004\u0012\u00020e0$2\u000f\u0010\u008b\u0001\u001a\n\u0012\u0005\u0012\u00030\u008a\u00010\u008c\u0001H\u0002J\u0012\u0010\u00d9\u0001\u001a\u00020\u000e2\u0007\u0010\u00a5\u0001\u001a\u00020\"H\u0002J\u0012\u0010\u00d9\u0001\u001a\u00020\u000e2\u0007\u0010\u00a0\u0001\u001a\u00020eH\u0002J\u0007\u0010\u00da\u0001\u001a\u00020\u000eJ\u001c\u0010\u00da\u0001\u001a\u00020\u000e2\u0008\u0010\u0089\u0001\u001a\u00030\u008a\u00012\t\u0008\u0002\u0010\u00a6\u0001\u001a\u00020\u0007J\"\u0010\u00da\u0001\u001a\u00020\u000e2\u000e\u0010\u008b\u0001\u001a\t\u0012\u0005\u0012\u00030\u008a\u00010$2\t\u0008\u0002\u0010\u00a7\u0001\u001a\u00020\u0007J\u0012\u0010\u00db\u0001\u001a\u00020\u000e2\u0007\u0010\u0086\u0001\u001a\u00020\u0002H\u0016R\u0014\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00130\u0012X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0012X\u0082\u000e\u00a2\u0006\u0002\n\u0000R(\u0010\n\u001a\u0004\u0018\u00010\u000b2\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u000b@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0016\u0010\u0017\"\u0004\u0008\u0018\u0010\u0019R$\u0010\u001b\u001a\u00020\u001a2\u0006\u0010\u0015\u001a\u00020\u001a@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001c\u0010\u001d\"\u0004\u0008\u001e\u0010\u001fR2\u0010 \u001a&\u0012\u000c\u0012\n #*\u0004\u0018\u00010\"0\" #*\u0012\u0012\u000c\u0012\n #*\u0004\u0018\u00010\"0\"\u0018\u00010$0!X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0017\u0010%\u001a\u0008\u0012\u0004\u0012\u00020\"0$8F\u00a2\u0006\u0006\u001a\u0004\u0008&\u0010\'R\u0011\u0010(\u001a\u00020)8F\u00a2\u0006\u0006\u001a\u0004\u0008*\u0010+R\u001a\u0010\u0006\u001a\u00020\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008,\u0010-\"\u0004\u0008.\u0010/R\u0014\u00100\u001a\u0008\u0012\u0004\u0012\u00020201X\u0082\u0004\u00a2\u0006\u0002\n\u0000R*\u00103\u001a\u0012\u0012\u0004\u0012\u00020\u001304j\u0008\u0012\u0004\u0012\u00020\u0013`58FX\u0087\u0004\u00a2\u0006\u000c\u0012\u0004\u00086\u00107\u001a\u0004\u00088\u00109R(\u0010\u0008\u001a\u0004\u0018\u00010\t2\u0008\u0010\u0015\u001a\u0004\u0018\u00010\t@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008:\u0010;\"\u0004\u0008<\u0010=R$\u0010?\u001a\u00020>2\u0006\u0010\u0015\u001a\u00020>@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008@\u0010A\"\u0004\u0008B\u0010CR\u001a\u0010D\u001a\u00020\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008D\u0010-\"\u0004\u0008E\u0010/R\u0011\u0010F\u001a\u00020\u00078F\u00a2\u0006\u0006\u001a\u0004\u0008F\u0010-R*\u0010H\u001a\u0004\u0018\u00010G2\u0008\u0010\u0015\u001a\u0004\u0018\u00010G@FX\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010M\u001a\u0004\u0008I\u0010J\"\u0004\u0008K\u0010LR\u0014\u0010N\u001a\u00020G8@X\u0080\u0004\u00a2\u0006\u0006\u001a\u0004\u0008O\u0010PR$\u0010Q\u001a\u00020G2\u0006\u0010\u0015\u001a\u00020G@@X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008R\u0010P\"\u0004\u0008S\u0010TR*\u0010U\u001a\u0012\u0012\u0004\u0012\u00020\u000204j\u0008\u0012\u0004\u0012\u00020\u0002`58FX\u0087\u0004\u00a2\u0006\u000c\u0012\u0004\u0008V\u00107\u001a\u0004\u0008W\u00109R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008X\u0010Y\"\u0004\u0008Z\u0010[R(\u0010\u000c\u001a\u0010\u0012\u0004\u0012\u00020\u000e\u0018\u00010\rj\u0004\u0018\u0001`\u000fX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\\\u0010]\"\u0004\u0008^\u0010_R\u0017\u0010`\u001a\u0008\u0012\u0004\u0012\u00020\"0a8F\u00a2\u0006\u0006\u001a\u0004\u0008b\u0010cR\u0017\u0010d\u001a\u0008\u0012\u0004\u0012\u00020e0a8F\u00a2\u0006\u0006\u001a\u0004\u0008f\u0010cR2\u0010g\u001a&\u0012\u000c\u0012\n #*\u0004\u0018\u00010\"0\" #*\u0012\u0012\u000c\u0012\n #*\u0004\u0018\u00010\"0\"\u0018\u00010a0\u0012X\u0082\u000e\u00a2\u0006\u0002\n\u0000R!\u0010h\u001a\u0012\u0012\u0004\u0012\u00020\"04j\u0008\u0012\u0004\u0012\u00020\"`58F\u00a2\u0006\u0006\u001a\u0004\u0008i\u00109R2\u0010j\u001a&\u0012\u000c\u0012\n #*\u0004\u0018\u00010e0e #*\u0012\u0012\u000c\u0012\n #*\u0004\u0018\u00010e0e\u0018\u00010a0\u0012X\u0082\u000e\u00a2\u0006\u0002\n\u0000R!\u0010k\u001a\u0012\u0012\u0004\u0012\u00020e04j\u0008\u0012\u0004\u0012\u00020e`58F\u00a2\u0006\u0006\u001a\u0004\u0008l\u00109R\u001a\u0010m\u001a\u00020nX\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008o\u0010p\"\u0004\u0008q\u0010rR\u001a\u0010s\u001a\u00020tX\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008u\u0010v\"\u0004\u0008w\u0010xR\u0014\u0010y\u001a\u00020zX\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008{\u0010|R2\u0010}\u001a&\u0012\u000c\u0012\n #*\u0004\u0018\u00010e0e #*\u0012\u0012\u000c\u0012\n #*\u0004\u0018\u00010e0e\u0018\u00010$0!X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0017\u0010~\u001a\u0008\u0012\u0004\u0012\u00020e0$8F\u00a2\u0006\u0006\u001a\u0004\u0008\u007f\u0010\'R\u001e\u0010\u0080\u0001\u001a\u00020)X\u0086\u000e\u00a2\u0006\u0011\n\u0000\u001a\u0005\u0008\u0081\u0001\u0010+\"\u0006\u0008\u0082\u0001\u0010\u0083\u0001R\u0013\u0010\u0084\u0001\u001a\u0004\u0018\u00010GX\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010M\u00a8\u0006\u00df\u0001"
    }
    d2 = {
        "Lapp/rive/runtime/kotlin/controllers/RiveFileController;",
        "Lapp/rive/runtime/kotlin/Observable;",
        "Lapp/rive/runtime/kotlin/controllers/RiveFileController$Listener;",
        "Lapp/rive/runtime/kotlin/core/RefCount;",
        "loop",
        "Lapp/rive/runtime/kotlin/core/Loop;",
        "autoplay",
        "",
        "file",
        "Lapp/rive/runtime/kotlin/core/File;",
        "activeArtboard",
        "Lapp/rive/runtime/kotlin/core/Artboard;",
        "onStart",
        "Lkotlin/Function0;",
        "",
        "Lapp/rive/runtime/kotlin/controllers/OnStartCallback;",
        "(Lapp/rive/runtime/kotlin/core/Loop;ZLapp/rive/runtime/kotlin/core/File;Lapp/rive/runtime/kotlin/core/Artboard;Lkotlin/jvm/functions/Function0;)V",
        "_eventListeners",
        "",
        "Lapp/rive/runtime/kotlin/controllers/RiveFileController$RiveEventListener;",
        "_listeners",
        "value",
        "getActiveArtboard",
        "()Lapp/rive/runtime/kotlin/core/Artboard;",
        "setActiveArtboard",
        "(Lapp/rive/runtime/kotlin/core/Artboard;)V",
        "Lapp/rive/runtime/kotlin/core/Alignment;",
        "alignment",
        "getAlignment",
        "()Lapp/rive/runtime/kotlin/core/Alignment;",
        "setAlignment",
        "(Lapp/rive/runtime/kotlin/core/Alignment;)V",
        "animationList",
        "",
        "Lapp/rive/runtime/kotlin/core/LinearAnimationInstance;",
        "kotlin.jvm.PlatformType",
        "",
        "animations",
        "getAnimations",
        "()Ljava/util/List;",
        "artboardBounds",
        "Landroid/graphics/RectF;",
        "getArtboardBounds",
        "()Landroid/graphics/RectF;",
        "getAutoplay",
        "()Z",
        "setAutoplay",
        "(Z)V",
        "changedInputs",
        "Ljava/util/concurrent/ConcurrentLinkedQueue;",
        "Lapp/rive/runtime/kotlin/ChangedInput;",
        "eventListeners",
        "Ljava/util/HashSet;",
        "Lkotlin/collections/HashSet;",
        "getEventListeners$annotations",
        "()V",
        "getEventListeners",
        "()Ljava/util/HashSet;",
        "getFile",
        "()Lapp/rive/runtime/kotlin/core/File;",
        "setFile",
        "(Lapp/rive/runtime/kotlin/core/File;)V",
        "Lapp/rive/runtime/kotlin/core/Fit;",
        "fit",
        "getFit",
        "()Lapp/rive/runtime/kotlin/core/Fit;",
        "setFit",
        "(Lapp/rive/runtime/kotlin/core/Fit;)V",
        "isActive",
        "setActive",
        "isAdvancing",
        "",
        "layoutScaleFactor",
        "getLayoutScaleFactor",
        "()Ljava/lang/Float;",
        "setLayoutScaleFactor",
        "(Ljava/lang/Float;)V",
        "Ljava/lang/Float;",
        "layoutScaleFactorActive",
        "getLayoutScaleFactorActive$kotlin_release",
        "()F",
        "layoutScaleFactorAutomatic",
        "getLayoutScaleFactorAutomatic",
        "setLayoutScaleFactorAutomatic$kotlin_release",
        "(F)V",
        "listeners",
        "getListeners$annotations",
        "getListeners",
        "getLoop",
        "()Lapp/rive/runtime/kotlin/core/Loop;",
        "setLoop",
        "(Lapp/rive/runtime/kotlin/core/Loop;)V",
        "getOnStart",
        "()Lkotlin/jvm/functions/Function0;",
        "setOnStart",
        "(Lkotlin/jvm/functions/Function0;)V",
        "pausedAnimations",
        "",
        "getPausedAnimations",
        "()Ljava/util/Set;",
        "pausedStateMachines",
        "Lapp/rive/runtime/kotlin/core/StateMachineInstance;",
        "getPausedStateMachines",
        "playingAnimationSet",
        "playingAnimations",
        "getPlayingAnimations",
        "playingStateMachineSet",
        "playingStateMachines",
        "getPlayingStateMachines",
        "refs",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "getRefs",
        "()Ljava/util/concurrent/atomic/AtomicInteger;",
        "setRefs",
        "(Ljava/util/concurrent/atomic/AtomicInteger;)V",
        "requireArtboardResize",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "getRequireArtboardResize$kotlin_release",
        "()Ljava/util/concurrent/atomic/AtomicBoolean;",
        "setRequireArtboardResize$kotlin_release",
        "(Ljava/util/concurrent/atomic/AtomicBoolean;)V",
        "startStopLock",
        "Ljava/util/concurrent/locks/ReentrantLock;",
        "getStartStopLock$kotlin_release",
        "()Ljava/util/concurrent/locks/ReentrantLock;",
        "stateMachineList",
        "stateMachines",
        "getStateMachines",
        "targetBounds",
        "getTargetBounds",
        "setTargetBounds",
        "(Landroid/graphics/RectF;)V",
        "userSetVolume",
        "addEventListener",
        "listener",
        "advance",
        "elapsed",
        "animationName",
        "",
        "animationNames",
        "",
        "fireState",
        "stateMachineName",
        "inputName",
        "path",
        "fireStateAtPath",
        "getOrCreateStateMachines",
        "getTextRunValue",
        "textRunName",
        "getVolume",
        "notifyAdvance",
        "notifyEvent",
        "event",
        "Lapp/rive/runtime/kotlin/core/RiveEvent;",
        "notifyLoop",
        "playableInstance",
        "Lapp/rive/runtime/kotlin/core/PlayableInstance;",
        "notifyPause",
        "notifyPlay",
        "notifyStateChanged",
        "stateMachine",
        "state",
        "Lapp/rive/runtime/kotlin/core/LayerState;",
        "notifyStop",
        "pause",
        "animation",
        "isStateMachine",
        "areStateMachines",
        "play",
        "animationInstance",
        "direction",
        "Lapp/rive/runtime/kotlin/core/Direction;",
        "play$kotlin_release",
        "settleInitialState",
        "stateMachineInstance",
        "settleStateMachineState",
        "playAnimation",
        "pointerEvent",
        "eventType",
        "Lapp/rive/runtime/kotlin/renderers/PointerEvents;",
        "x",
        "y",
        "processAllInputs",
        "queueInput",
        "",
        "queueInputs",
        "inputs",
        "",
        "queueInputs$kotlin_release",
        "([Lapp/rive/runtime/kotlin/ChangedInput;)V",
        "registerListener",
        "release",
        "",
        "removeEventListener",
        "reset",
        "reset$kotlin_release",
        "resolveStateMachineAdvance",
        "restoreControllerState",
        "Lapp/rive/runtime/kotlin/controllers/ControllerState;",
        "saveControllerState",
        "selectArtboard",
        "name",
        "setArtboard",
        "ab",
        "setBooleanState",
        "setBooleanStateAtPath",
        "setNumberState",
        "setNumberStateAtPath",
        "setRiveFile",
        "artboardName",
        "setTextRunValue",
        "textValue",
        "setVolume",
        "setupScene",
        "rendererAttributes",
        "Lapp/rive/runtime/kotlin/RiveAnimationView$RendererAttributes;",
        "setupScene$kotlin_release",
        "stop",
        "stopAnimations",
        "unregisterListener",
        "Companion",
        "Listener",
        "RiveEventListener",
        "kotlin_release"
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
.field public static final Companion:Lapp/rive/runtime/kotlin/controllers/RiveFileController$Companion;

.field public static final TAG:Ljava/lang/String; = "RiveFileController"


# instance fields
.field private _eventListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lapp/rive/runtime/kotlin/controllers/RiveFileController$RiveEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private _listeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lapp/rive/runtime/kotlin/controllers/RiveFileController$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private activeArtboard:Lapp/rive/runtime/kotlin/core/Artboard;

.field private alignment:Lapp/rive/runtime/kotlin/core/Alignment;

.field private animationList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lapp/rive/runtime/kotlin/core/LinearAnimationInstance;",
            ">;"
        }
    .end annotation
.end field

.field private autoplay:Z

.field private final changedInputs:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Lapp/rive/runtime/kotlin/ChangedInput;",
            ">;"
        }
    .end annotation
.end field

.field private file:Lapp/rive/runtime/kotlin/core/File;

.field private fit:Lapp/rive/runtime/kotlin/core/Fit;

.field private isActive:Z

.field private layoutScaleFactor:Ljava/lang/Float;

.field private layoutScaleFactorAutomatic:F

.field private loop:Lapp/rive/runtime/kotlin/core/Loop;

.field private onStart:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private playingAnimationSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lapp/rive/runtime/kotlin/core/LinearAnimationInstance;",
            ">;"
        }
    .end annotation
.end field

.field private playingStateMachineSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lapp/rive/runtime/kotlin/core/StateMachineInstance;",
            ">;"
        }
    .end annotation
.end field

.field private refs:Ljava/util/concurrent/atomic/AtomicInteger;

.field private requireArtboardResize:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final startStopLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private stateMachineList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lapp/rive/runtime/kotlin/core/StateMachineInstance;",
            ">;"
        }
    .end annotation
.end field

.field private targetBounds:Landroid/graphics/RectF;

.field private userSetVolume:Ljava/lang/Float;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lapp/rive/runtime/kotlin/controllers/RiveFileController$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lapp/rive/runtime/kotlin/controllers/RiveFileController$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->Companion:Lapp/rive/runtime/kotlin/controllers/RiveFileController$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 8

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x1f

    const/4 v7, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lapp/rive/runtime/kotlin/controllers/RiveFileController;-><init>(Lapp/rive/runtime/kotlin/core/Loop;ZLapp/rive/runtime/kotlin/core/File;Lapp/rive/runtime/kotlin/core/Artboard;Lkotlin/jvm/functions/Function0;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lapp/rive/runtime/kotlin/core/Loop;ZLapp/rive/runtime/kotlin/core/File;Lapp/rive/runtime/kotlin/core/Artboard;Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lapp/rive/runtime/kotlin/core/Loop;",
            "Z",
            "Lapp/rive/runtime/kotlin/core/File;",
            "Lapp/rive/runtime/kotlin/core/Artboard;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "loop"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->loop:Lapp/rive/runtime/kotlin/core/Loop;

    iput-boolean p2, p0, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->autoplay:Z

    iput-object p5, p0, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->onStart:Lkotlin/jvm/functions/Function0;

    .line 77
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p1, p0, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->refs:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 89
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->requireArtboardResize:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 91
    sget-object p1, Lapp/rive/runtime/kotlin/core/Fit;->CONTAIN:Lapp/rive/runtime/kotlin/core/Fit;

    iput-object p1, p0, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->fit:Lapp/rive/runtime/kotlin/core/Fit;

    .line 99
    sget-object p1, Lapp/rive/runtime/kotlin/core/Alignment;->CENTER:Lapp/rive/runtime/kotlin/core/Alignment;

    iput-object p1, p0, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->alignment:Lapp/rive/runtime/kotlin/core/Alignment;

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->layoutScaleFactorAutomatic:F

    iput-object p3, p0, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->file:Lapp/rive/runtime/kotlin/core/File;

    iput-object p4, p0, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->activeArtboard:Lapp/rive/runtime/kotlin/core/Artboard;

    .line 174
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->animationList:Ljava/util/List;

    .line 185
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->stateMachineList:Ljava/util/List;

    .line 195
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    check-cast p1, Ljava/util/Set;

    invoke-static {p1}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->playingAnimationSet:Ljava/util/Set;

    .line 205
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    check-cast p1, Ljava/util/Set;

    invoke-static {p1}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->playingStateMachineSet:Ljava/util/Set;

    .line 223
    new-instance p1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object p1, p0, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->changedInputs:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 226
    new-instance p1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {p1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object p1, p0, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->startStopLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 234
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->targetBounds:Landroid/graphics/RectF;

    .line 913
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    check-cast p1, Ljava/util/Set;

    invoke-static {p1}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    const-string p2, "synchronizedSet(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->_listeners:Ljava/util/Set;

    .line 922
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    check-cast p1, Ljava/util/Set;

    invoke-static {p1}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->_eventListeners:Ljava/util/Set;

    return-void
.end method

.method public synthetic constructor <init>(Lapp/rive/runtime/kotlin/core/Loop;ZLapp/rive/runtime/kotlin/core/File;Lapp/rive/runtime/kotlin/core/Artboard;Lkotlin/jvm/functions/Function0;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 3

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    .line 60
    sget-object p1, Lapp/rive/runtime/kotlin/core/Loop;->AUTO:Lapp/rive/runtime/kotlin/core/Loop;

    :cond_0
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_1

    const/4 p2, 0x1

    :cond_1
    move p7, p2

    and-int/lit8 p2, p6, 0x4

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    move-object v1, v0

    goto :goto_0

    :cond_2
    move-object v1, p3

    :goto_0
    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_3

    move-object v2, v0

    goto :goto_1

    :cond_3
    move-object v2, p4

    :goto_1
    and-int/lit8 p2, p6, 0x10

    if-eqz p2, :cond_4

    goto :goto_2

    :cond_4
    move-object v0, p5

    :goto_2
    move-object p2, p0

    move-object p3, p1

    move p4, p7

    move-object p5, v1

    move-object p6, v2

    move-object p7, v0

    .line 59
    invoke-direct/range {p2 .. p7}, Lapp/rive/runtime/kotlin/controllers/RiveFileController;-><init>(Lapp/rive/runtime/kotlin/core/Loop;ZLapp/rive/runtime/kotlin/core/File;Lapp/rive/runtime/kotlin/core/Artboard;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method private final animations(Ljava/lang/String;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lapp/rive/runtime/kotlin/core/LinearAnimationInstance;",
            ">;"
        }
    .end annotation

    .line 728
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    invoke-direct {p0, p1}, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->animations(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method private final animations(Ljava/util/Collection;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lapp/rive/runtime/kotlin/core/LinearAnimationInstance;",
            ">;"
        }
    .end annotation

    .line 736
    invoke-virtual {p0}, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->getAnimations()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 1086
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/Collection;

    .line 1087
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lapp/rive/runtime/kotlin/core/LinearAnimationInstance;

    .line 736
    invoke-virtual {v3}, Lapp/rive/runtime/kotlin/core/LinearAnimationInstance;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1087
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1088
    :cond_1
    check-cast v1, Ljava/util/List;

    return-object v1
.end method

.method public static synthetic fireState$default(Lapp/rive/runtime/kotlin/controllers/RiveFileController;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 632
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->fireState(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic getEventListeners$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getListeners$annotations()V
    .locals 0

    return-void
.end method

.method private final getOrCreateStateMachines(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lapp/rive/runtime/kotlin/core/StateMachineInstance;",
            ">;"
        }
    .end annotation

    .line 744
    invoke-direct {p0, p1}, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->stateMachines(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 745
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->activeArtboard:Lapp/rive/runtime/kotlin/core/Artboard;

    if-eqz v1, :cond_0

    .line 747
    invoke-virtual {v1, p1}, Lapp/rive/runtime/kotlin/core/Artboard;->stateMachine(Ljava/lang/String;)Lapp/rive/runtime/kotlin/core/StateMachineInstance;

    move-result-object p1

    iget-object v0, p0, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->stateMachineList:Ljava/util/List;

    .line 748
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 749
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_0
    return-object v0
.end method

.method private final notifyAdvance(F)V
    .locals 2

    .line 978
    invoke-virtual {p0}, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->getListeners()Ljava/util/HashSet;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 1110
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lapp/rive/runtime/kotlin/controllers/RiveFileController$Listener;

    .line 978
    invoke-interface {v1, p1}, Lapp/rive/runtime/kotlin/controllers/RiveFileController$Listener;->notifyAdvance(F)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final notifyEvent(Lapp/rive/runtime/kotlin/core/RiveEvent;)V
    .locals 2

    .line 986
    invoke-virtual {p0}, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->getEventListeners()Ljava/util/HashSet;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 1114
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lapp/rive/runtime/kotlin/controllers/RiveFileController$RiveEventListener;

    .line 986
    invoke-interface {v1, p1}, Lapp/rive/runtime/kotlin/controllers/RiveFileController$RiveEventListener;->notifyEvent(Lapp/rive/runtime/kotlin/core/RiveEvent;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final notifyLoop(Lapp/rive/runtime/kotlin/core/PlayableInstance;)V
    .locals 2

    .line 973
    invoke-virtual {p0}, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->getListeners()Ljava/util/HashSet;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 1108
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lapp/rive/runtime/kotlin/controllers/RiveFileController$Listener;

    .line 973
    invoke-interface {v1, p1}, Lapp/rive/runtime/kotlin/controllers/RiveFileController$Listener;->notifyLoop(Lapp/rive/runtime/kotlin/core/PlayableInstance;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final notifyPause(Lapp/rive/runtime/kotlin/core/PlayableInstance;)V
    .locals 2

    .line 965
    invoke-virtual {p0}, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->getListeners()Ljava/util/HashSet;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 1104
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lapp/rive/runtime/kotlin/controllers/RiveFileController$Listener;

    .line 965
    invoke-interface {v1, p1}, Lapp/rive/runtime/kotlin/controllers/RiveFileController$Listener;->notifyPause(Lapp/rive/runtime/kotlin/core/PlayableInstance;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final notifyPlay(Lapp/rive/runtime/kotlin/core/PlayableInstance;)V
    .locals 2

    .line 961
    invoke-virtual {p0}, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->getListeners()Ljava/util/HashSet;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 1102
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lapp/rive/runtime/kotlin/controllers/RiveFileController$Listener;

    .line 961
    invoke-interface {v1, p1}, Lapp/rive/runtime/kotlin/controllers/RiveFileController$Listener;->notifyPlay(Lapp/rive/runtime/kotlin/core/PlayableInstance;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final notifyStateChanged(Lapp/rive/runtime/kotlin/core/StateMachineInstance;Lapp/rive/runtime/kotlin/core/LayerState;)V
    .locals 4

    .line 982
    invoke-virtual {p0}, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->getListeners()Ljava/util/HashSet;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 1112
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lapp/rive/runtime/kotlin/controllers/RiveFileController$Listener;

    .line 982
    invoke-virtual {p1}, Lapp/rive/runtime/kotlin/core/StateMachineInstance;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lapp/rive/runtime/kotlin/core/LayerState;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lapp/rive/runtime/kotlin/controllers/RiveFileController$Listener;->notifyStateChanged(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final notifyStop(Lapp/rive/runtime/kotlin/core/PlayableInstance;)V
    .locals 2

    .line 969
    invoke-virtual {p0}, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->getListeners()Ljava/util/HashSet;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 1106
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lapp/rive/runtime/kotlin/controllers/RiveFileController$Listener;

    .line 969
    invoke-interface {v1, p1}, Lapp/rive/runtime/kotlin/controllers/RiveFileController$Listener;->notifyStop(Lapp/rive/runtime/kotlin/core/PlayableInstance;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final pause(Lapp/rive/runtime/kotlin/core/LinearAnimationInstance;)V
    .locals 1

    iget-object v0, p0, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->playingAnimationSet:Ljava/util/Set;

    .line 848
    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 850
    check-cast p1, Lapp/rive/runtime/kotlin/core/PlayableInstance;

    invoke-direct {p0, p1}, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->notifyPause(Lapp/rive/runtime/kotlin/core/PlayableInstance;)V

    :cond_0
    return-void
.end method

.method private final pause(Lapp/rive/runtime/kotlin/core/StateMachineInstance;)V
    .locals 1

    iget-object v0, p0, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->playingStateMachineSet:Ljava/util/Set;

    .line 855
    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 857
    check-cast p1, Lapp/rive/runtime/kotlin/core/PlayableInstance;

    invoke-direct {p0, p1}, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->notifyPause(Lapp/rive/runtime/kotlin/core/PlayableInstance;)V

    :cond_0
    return-void
.end method

.method public static synthetic pause$default(Lapp/rive/runtime/kotlin/controllers/RiveFileController;Ljava/lang/String;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 525
    :cond_0
    invoke-virtual {p0, p1, p2}, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->pause(Ljava/lang/String;Z)V

    return-void
.end method

.method public static synthetic pause$default(Lapp/rive/runtime/kotlin/controllers/RiveFileController;Ljava/util/List;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 517
    :cond_0
    invoke-virtual {p0, p1, p2}, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->pause(Ljava/util/List;Z)V

    return-void
.end method

.method public static synthetic play$default(Lapp/rive/runtime/kotlin/controllers/RiveFileController;Lapp/rive/runtime/kotlin/core/Loop;Lapp/rive/runtime/kotlin/core/Direction;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    .line 476
    sget-object p1, Lapp/rive/runtime/kotlin/core/Loop;->AUTO:Lapp/rive/runtime/kotlin/core/Loop;

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    .line 477
    sget-object p2, Lapp/rive/runtime/kotlin/core/Direction;->AUTO:Lapp/rive/runtime/kotlin/core/Direction;

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    const/4 p3, 0x1

    .line 475
    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->play(Lapp/rive/runtime/kotlin/core/Loop;Lapp/rive/runtime/kotlin/core/Direction;Z)V

    return-void
.end method

.method public static synthetic play$default(Lapp/rive/runtime/kotlin/controllers/RiveFileController;Ljava/lang/String;Lapp/rive/runtime/kotlin/core/Loop;Lapp/rive/runtime/kotlin/core/Direction;ZZILjava/lang/Object;)V
    .locals 6

    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_0

    .line 457
    sget-object p2, Lapp/rive/runtime/kotlin/core/Loop;->AUTO:Lapp/rive/runtime/kotlin/core/Loop;

    :cond_0
    move-object v2, p2

    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_1

    .line 458
    sget-object p3, Lapp/rive/runtime/kotlin/core/Direction;->AUTO:Lapp/rive/runtime/kotlin/core/Direction;

    :cond_1
    move-object v3, p3

    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_2

    const/4 p4, 0x0

    :cond_2
    move v4, p4

    and-int/lit8 p2, p6, 0x10

    if-eqz p2, :cond_3

    const/4 p5, 0x1

    :cond_3
    move v5, p5

    move-object v0, p0

    move-object v1, p1

    .line 455
    invoke-virtual/range {v0 .. v5}, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->play(Ljava/lang/String;Lapp/rive/runtime/kotlin/core/Loop;Lapp/rive/runtime/kotlin/core/Direction;ZZ)V

    return-void
.end method

.method public static synthetic play$default(Lapp/rive/runtime/kotlin/controllers/RiveFileController;Ljava/util/List;Lapp/rive/runtime/kotlin/core/Loop;Lapp/rive/runtime/kotlin/core/Direction;ZZILjava/lang/Object;)V
    .locals 6

    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_0

    .line 439
    sget-object p2, Lapp/rive/runtime/kotlin/core/Loop;->AUTO:Lapp/rive/runtime/kotlin/core/Loop;

    :cond_0
    move-object v2, p2

    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_1

    .line 440
    sget-object p3, Lapp/rive/runtime/kotlin/core/Direction;->AUTO:Lapp/rive/runtime/kotlin/core/Direction;

    :cond_1
    move-object v3, p3

    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_2

    const/4 p4, 0x0

    :cond_2
    move v4, p4

    and-int/lit8 p2, p6, 0x10

    if-eqz p2, :cond_3

    const/4 p5, 0x1

    :cond_3
    move v5, p5

    move-object v0, p0

    move-object v1, p1

    .line 437
    invoke-virtual/range {v0 .. v5}, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->play(Ljava/util/List;Lapp/rive/runtime/kotlin/core/Loop;Lapp/rive/runtime/kotlin/core/Direction;ZZ)V

    return-void
.end method

.method public static synthetic play$kotlin_release$default(Lapp/rive/runtime/kotlin/controllers/RiveFileController;Lapp/rive/runtime/kotlin/core/StateMachineInstance;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x1

    .line 795
    :cond_0
    invoke-virtual {p0, p1, p2}, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->play$kotlin_release(Lapp/rive/runtime/kotlin/core/StateMachineInstance;Z)V

    return-void
.end method

.method private final playAnimation(Ljava/lang/String;Lapp/rive/runtime/kotlin/core/Loop;Lapp/rive/runtime/kotlin/core/Direction;ZZ)V
    .locals 1

    if-eqz p4, :cond_0

    .line 763
    invoke-direct {p0, p1}, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->getOrCreateStateMachines(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 764
    check-cast p1, Ljava/lang/Iterable;

    .line 1092
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lapp/rive/runtime/kotlin/core/StateMachineInstance;

    .line 764
    invoke-virtual {p0, p2, p5}, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->play$kotlin_release(Lapp/rive/runtime/kotlin/core/StateMachineInstance;Z)V

    goto :goto_0

    .line 766
    :cond_0
    invoke-direct {p0, p1}, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->animations(Ljava/lang/String;)Ljava/util/List;

    move-result-object p4

    .line 767
    move-object p5, p4

    check-cast p5, Ljava/lang/Iterable;

    .line 1094
    invoke-interface {p5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p5

    :goto_1
    invoke-interface {p5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lapp/rive/runtime/kotlin/core/LinearAnimationInstance;

    .line 767
    invoke-virtual {p0, v0, p2, p3}, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->play$kotlin_release(Lapp/rive/runtime/kotlin/core/LinearAnimationInstance;Lapp/rive/runtime/kotlin/core/Loop;Lapp/rive/runtime/kotlin/core/Direction;)V

    goto :goto_1

    .line 768
    :cond_1
    invoke-interface {p4}, Ljava/util/List;->isEmpty()Z

    move-result p4

    if-eqz p4, :cond_2

    iget-object p4, p0, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->activeArtboard:Lapp/rive/runtime/kotlin/core/Artboard;

    if-eqz p4, :cond_2

    .line 770
    invoke-virtual {p4, p1}, Lapp/rive/runtime/kotlin/core/Artboard;->animation(Ljava/lang/String;)Lapp/rive/runtime/kotlin/core/LinearAnimationInstance;

    move-result-object p1

    .line 771
    invoke-virtual {p0, p1, p2, p3}, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->play$kotlin_release(Lapp/rive/runtime/kotlin/core/LinearAnimationInstance;Lapp/rive/runtime/kotlin/core/Loop;Lapp/rive/runtime/kotlin/core/Direction;)V

    :cond_2
    return-void
.end method

.method static synthetic playAnimation$default(Lapp/rive/runtime/kotlin/controllers/RiveFileController;Ljava/lang/String;Lapp/rive/runtime/kotlin/core/Loop;Lapp/rive/runtime/kotlin/core/Direction;ZZILjava/lang/Object;)V
    .locals 6

    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_0

    .line 757
    sget-object p2, Lapp/rive/runtime/kotlin/core/Loop;->AUTO:Lapp/rive/runtime/kotlin/core/Loop;

    :cond_0
    move-object v2, p2

    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_1

    .line 758
    sget-object p3, Lapp/rive/runtime/kotlin/core/Direction;->AUTO:Lapp/rive/runtime/kotlin/core/Direction;

    :cond_1
    move-object v3, p3

    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_2

    const/4 p4, 0x0

    :cond_2
    move v4, p4

    and-int/lit8 p2, p6, 0x10

    if-eqz p2, :cond_3

    const/4 p5, 0x1

    :cond_3
    move v5, p5

    move-object v0, p0

    move-object v1, p1

    .line 755
    invoke-direct/range {v0 .. v5}, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->playAnimation(Ljava/lang/String;Lapp/rive/runtime/kotlin/core/Loop;Lapp/rive/runtime/kotlin/core/Direction;ZZ)V

    return-void
.end method

.method private final processAllInputs()V
    .locals 7

    .line 599
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    check-cast v0, Ljava/util/Set;

    :cond_0
    :goto_0
    iget-object v1, p0, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->changedInputs:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 601
    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->changedInputs:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 602
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lapp/rive/runtime/kotlin/ChangedInput;

    .line 603
    invoke-virtual {v1}, Lapp/rive/runtime/kotlin/ChangedInput;->getNestedArtboardPath()Ljava/lang/String;

    move-result-object v2

    const-string v3, "null cannot be cast to non-null type kotlin.Float"

    const-string v4, "null cannot be cast to non-null type kotlin.Boolean"

    if-nez v2, :cond_4

    .line 604
    invoke-virtual {v1}, Lapp/rive/runtime/kotlin/ChangedInput;->getStateMachineName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->getOrCreateStateMachines(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 605
    check-cast v2, Ljava/lang/Iterable;

    .line 1078
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lapp/rive/runtime/kotlin/core/StateMachineInstance;

    .line 606
    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 607
    invoke-virtual {v1}, Lapp/rive/runtime/kotlin/ChangedInput;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lapp/rive/runtime/kotlin/core/StateMachineInstance;->input(Ljava/lang/String;)Lapp/rive/runtime/kotlin/core/SMIInput;

    move-result-object v5

    .line 608
    instance-of v6, v5, Lapp/rive/runtime/kotlin/core/SMITrigger;

    if-eqz v6, :cond_2

    check-cast v5, Lapp/rive/runtime/kotlin/core/SMITrigger;

    invoke-virtual {v5}, Lapp/rive/runtime/kotlin/core/SMITrigger;->fire$kotlin_release()V

    goto :goto_1

    .line 609
    :cond_2
    instance-of v6, v5, Lapp/rive/runtime/kotlin/core/SMIBoolean;

    if-eqz v6, :cond_3

    check-cast v5, Lapp/rive/runtime/kotlin/core/SMIBoolean;

    invoke-virtual {v1}, Lapp/rive/runtime/kotlin/ChangedInput;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-virtual {v5, v6}, Lapp/rive/runtime/kotlin/core/SMIBoolean;->setValue$kotlin_release(Z)V

    goto :goto_1

    .line 610
    :cond_3
    instance-of v6, v5, Lapp/rive/runtime/kotlin/core/SMINumber;

    if-eqz v6, :cond_1

    check-cast v5, Lapp/rive/runtime/kotlin/core/SMINumber;

    invoke-virtual {v1}, Lapp/rive/runtime/kotlin/ChangedInput;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    invoke-virtual {v5, v6}, Lapp/rive/runtime/kotlin/core/SMINumber;->setValue$kotlin_release(F)V

    goto :goto_1

    :cond_4
    iget-object v2, p0, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->activeArtboard:Lapp/rive/runtime/kotlin/core/Artboard;

    if-eqz v2, :cond_5

    .line 614
    invoke-virtual {v1}, Lapp/rive/runtime/kotlin/ChangedInput;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lapp/rive/runtime/kotlin/ChangedInput;->getNestedArtboardPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lapp/rive/runtime/kotlin/core/Artboard;->input(Ljava/lang/String;Ljava/lang/String;)Lapp/rive/runtime/kotlin/core/SMIInput;

    move-result-object v2

    goto :goto_2

    :cond_5
    const/4 v2, 0x0

    .line 615
    :goto_2
    instance-of v5, v2, Lapp/rive/runtime/kotlin/core/SMITrigger;

    if-eqz v5, :cond_6

    .line 616
    check-cast v2, Lapp/rive/runtime/kotlin/core/SMITrigger;

    invoke-virtual {v2}, Lapp/rive/runtime/kotlin/core/SMITrigger;->fire$kotlin_release()V

    goto/16 :goto_0

    .line 619
    :cond_6
    instance-of v5, v2, Lapp/rive/runtime/kotlin/core/SMIBoolean;

    if-eqz v5, :cond_7

    .line 620
    check-cast v2, Lapp/rive/runtime/kotlin/core/SMIBoolean;

    invoke-virtual {v1}, Lapp/rive/runtime/kotlin/ChangedInput;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v2, v1}, Lapp/rive/runtime/kotlin/core/SMIBoolean;->setValue$kotlin_release(Z)V

    goto/16 :goto_0

    .line 623
    :cond_7
    instance-of v4, v2, Lapp/rive/runtime/kotlin/core/SMINumber;

    if-eqz v4, :cond_0

    .line 624
    check-cast v2, Lapp/rive/runtime/kotlin/core/SMINumber;

    invoke-virtual {v1}, Lapp/rive/runtime/kotlin/ChangedInput;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v2, v1}, Lapp/rive/runtime/kotlin/core/SMINumber;->setValue$kotlin_release(F)V

    goto/16 :goto_0

    .line 629
    :cond_8
    check-cast v0, Ljava/lang/Iterable;

    .line 1080
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lapp/rive/runtime/kotlin/core/StateMachineInstance;

    const/4 v2, 0x0

    .line 629
    invoke-virtual {p0, v1, v2}, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->play$kotlin_release(Lapp/rive/runtime/kotlin/core/StateMachineInstance;Z)V

    goto :goto_3

    :cond_9
    return-void
.end method

.method private final queueInput(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Lapp/rive/runtime/kotlin/ChangedInput;

    .line 575
    new-instance v1, Lapp/rive/runtime/kotlin/ChangedInput;

    invoke-direct {v1, p1, p2, p3, p4}, Lapp/rive/runtime/kotlin/ChangedInput;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    aput-object v1, v0, p1

    .line 574
    invoke-virtual {p0, v0}, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->queueInputs$kotlin_release([Lapp/rive/runtime/kotlin/ChangedInput;)V

    return-void
.end method

.method static synthetic queueInput$default(Lapp/rive/runtime/kotlin/controllers/RiveFileController;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 1

    and-int/lit8 p6, p5, 0x4

    const/4 v0, 0x0

    if-eqz p6, :cond_0

    move-object p3, v0

    :cond_0
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1

    move-object p4, v0

    .line 568
    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->queueInput(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method private final resolveStateMachineAdvance(Lapp/rive/runtime/kotlin/core/StateMachineInstance;F)Z
    .locals 2

    .line 781
    invoke-virtual {p0}, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->getEventListeners()Ljava/util/HashSet;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 782
    invoke-virtual {p1}, Lapp/rive/runtime/kotlin/core/StateMachineInstance;->getEventsReported()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 1096
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lapp/rive/runtime/kotlin/core/RiveEvent;

    .line 783
    invoke-direct {p0, v1}, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->notifyEvent(Lapp/rive/runtime/kotlin/core/RiveEvent;)V

    goto :goto_0

    .line 786
    :cond_0
    invoke-virtual {p1, p2}, Lapp/rive/runtime/kotlin/core/StateMachineInstance;->advance(F)Z

    move-result p2

    .line 787
    invoke-virtual {p0}, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->getListeners()Ljava/util/HashSet;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 788
    invoke-virtual {p1}, Lapp/rive/runtime/kotlin/core/StateMachineInstance;->getStatesChanged()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 1098
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lapp/rive/runtime/kotlin/core/LayerState;

    .line 789
    invoke-direct {p0, p1, v1}, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->notifyStateChanged(Lapp/rive/runtime/kotlin/core/StateMachineInstance;Lapp/rive/runtime/kotlin/core/LayerState;)V

    goto :goto_1

    :cond_1
    return p2
.end method

.method public static synthetic selectArtboard$default(Lapp/rive/runtime/kotlin/controllers/RiveFileController;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 371
    :cond_0
    invoke-virtual {p0, p1}, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->selectArtboard(Ljava/lang/String;)V

    return-void
.end method

.method private final setArtboard(Lapp/rive/runtime/kotlin/core/Artboard;)V
    .locals 1

    iget-object v0, p0, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->activeArtboard:Lapp/rive/runtime/kotlin/core/Artboard;

    .line 391
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 392
    :cond_0
    invoke-virtual {p0}, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->stopAnimations()V

    .line 393
    invoke-virtual {p0, p1}, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->setActiveArtboard(Lapp/rive/runtime/kotlin/core/Artboard;)V

    .line 394
    invoke-virtual {p0}, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->autoplay()V

    return-void
.end method

.method public static synthetic setBooleanState$default(Lapp/rive/runtime/kotlin/controllers/RiveFileController;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    const/4 p4, 0x0

    .line 636
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->setBooleanState(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    return-void
.end method

.method public static synthetic setNumberState$default(Lapp/rive/runtime/kotlin/controllers/RiveFileController;Ljava/lang/String;Ljava/lang/String;FLjava/lang/String;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    const/4 p4, 0x0

    .line 650
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->setNumberState(Ljava/lang/String;Ljava/lang/String;FLjava/lang/String;)V

    return-void
.end method

.method public static synthetic setRiveFile$default(Lapp/rive/runtime/kotlin/controllers/RiveFileController;Lapp/rive/runtime/kotlin/core/File;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 357
    :cond_0
    invoke-virtual {p0, p1, p2}, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->setRiveFile(Lapp/rive/runtime/kotlin/core/File;Ljava/lang/String;)V

    return-void
.end method

.method private final stateMachines(Ljava/lang/String;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lapp/rive/runtime/kotlin/core/StateMachineInstance;",
            ">;"
        }
    .end annotation

    .line 732
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    invoke-direct {p0, p1}, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->stateMachines(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method private final stateMachines(Ljava/util/Collection;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lapp/rive/runtime/kotlin/core/StateMachineInstance;",
            ">;"
        }
    .end annotation

    .line 740
    invoke-virtual {p0}, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->getStateMachines()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 1089
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/Collection;

    .line 1090
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lapp/rive/runtime/kotlin/core/StateMachineInstance;

    .line 740
    invoke-virtual {v3}, Lapp/rive/runtime/kotlin/core/StateMachineInstance;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1090
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1091
    :cond_1
    check-cast v1, Ljava/util/List;

    return-object v1
.end method

.method private final stop(Lapp/rive/runtime/kotlin/core/LinearAnimationInstance;)V
    .locals 1

    iget-object v0, p0, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->playingAnimationSet:Ljava/util/Set;

    .line 863
    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->animationList:Ljava/util/List;

    .line 864
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 866
    check-cast p1, Lapp/rive/runtime/kotlin/core/PlayableInstance;

    invoke-direct {p0, p1}, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->notifyStop(Lapp/rive/runtime/kotlin/core/PlayableInstance;)V

    :cond_0
    return-void
.end method

.method private final stop(Lapp/rive/runtime/kotlin/core/StateMachineInstance;)V
    .locals 1

    iget-object v0, p0, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->playingStateMachineSet:Ljava/util/Set;

    .line 871
    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->stateMachineList:Ljava/util/List;

    .line 872
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 874
    check-cast p1, Lapp/rive/runtime/kotlin/core/PlayableInstance;

    invoke-direct {p0, p1}, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->notifyStop(Lapp/rive/runtime/kotlin/core/PlayableInstance;)V

    :cond_0
    return-void
.end method

.method public static synthetic stopAnimations$default(Lapp/rive/runtime/kotlin/controllers/RiveFileController;Ljava/lang/String;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 555
    :cond_0
    invoke-virtual {p0, p1, p2}, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->stopAnimations(Ljava/lang/String;Z)V

    return-void
.end method

.method public static synthetic stopAnimations$default(Lapp/rive/runtime/kotlin/controllers/RiveFileController;Ljava/util/List;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 546
    :cond_0
    invoke-virtual {p0, p1, p2}, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->stopAnimations(Ljava/util/List;Z)V

    return-void
.end method


# virtual methods
.method public acquire()I
    .locals 1

    .line 59
    invoke-static {p0}, Lapp/rive/runtime/kotlin/core/RefCount$DefaultImpls;->acquire(Lapp/rive/runtime/kotlin/core/RefCount;)I

    move-result v0

    return v0
.end method

.method public final addEventListener(Lapp/rive/runtime/kotlin/controllers/RiveFileController$RiveEventListener;)V
    .locals 2

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->startStopLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 948
    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->_eventListeners:Ljava/util/Set;

    .line 949
    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 948
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public final advance(F)V
    .locals 7

    iget-object v0, p0, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->file:Lapp/rive/runtime/kotlin/core/File;

    if-eqz v0, :cond_8

    .line 303
    invoke-virtual {v0}, Lapp/rive/runtime/kotlin/core/File;->getLock()Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 304
    :cond_0
    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->activeArtboard:Lapp/rive/runtime/kotlin/core/Artboard;

    if-eqz v1, :cond_7

    .line 307
    invoke-direct {p0}, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->processAllInputs()V

    .line 311
    invoke-virtual {p0}, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->getAnimations()Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    .line 1042
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lapp/rive/runtime/kotlin/core/LinearAnimationInstance;

    .line 312
    invoke-virtual {p0}, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->getPlayingAnimations()Ljava/util/HashSet;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 313
    invoke-virtual {v3, p1}, Lapp/rive/runtime/kotlin/core/LinearAnimationInstance;->advance(F)Lapp/rive/runtime/kotlin/core/Loop;

    move-result-object v4

    .line 314
    invoke-virtual {v3}, Lapp/rive/runtime/kotlin/core/LinearAnimationInstance;->apply()V

    .line 316
    sget-object v5, Lapp/rive/runtime/kotlin/core/Loop;->ONESHOT:Lapp/rive/runtime/kotlin/core/Loop;

    if-ne v4, v5, :cond_2

    .line 317
    invoke-direct {p0, v3}, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->stop(Lapp/rive/runtime/kotlin/core/LinearAnimationInstance;)V

    goto :goto_0

    :cond_2
    if-eqz v4, :cond_1

    .line 319
    check-cast v3, Lapp/rive/runtime/kotlin/core/PlayableInstance;

    invoke-direct {p0, v3}, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->notifyLoop(Lapp/rive/runtime/kotlin/core/PlayableInstance;)V

    goto :goto_0

    .line 324
    :cond_3
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/List;

    .line 325
    invoke-virtual {p0}, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->getStateMachines()Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/lang/Iterable;

    .line 1044
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lapp/rive/runtime/kotlin/core/StateMachineInstance;

    .line 326
    invoke-virtual {p0}, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->getPlayingStateMachines()Ljava/util/HashSet;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 328
    invoke-direct {p0, v4, p1}, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->resolveStateMachineAdvance(Lapp/rive/runtime/kotlin/core/StateMachineInstance;F)Z

    move-result v5

    if-nez v5, :cond_4

    .line 331
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 341
    :cond_5
    invoke-virtual {v1, p1}, Lapp/rive/runtime/kotlin/core/Artboard;->advance(F)Z

    move-result v1

    if-nez v1, :cond_6

    float-to-double v3, p1

    const-wide/16 v5, 0x0

    cmpl-double v1, v3, v5

    if-lez v1, :cond_6

    .line 345
    check-cast v2, Ljava/lang/Iterable;

    .line 1046
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lapp/rive/runtime/kotlin/core/StateMachineInstance;

    .line 345
    invoke-direct {p0, v2}, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->pause(Lapp/rive/runtime/kotlin/core/StateMachineInstance;)V

    goto :goto_2

    .line 347
    :cond_6
    invoke-direct {p0, p1}, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->notifyAdvance(F)V

    .line 305
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 304
    :cond_7
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1

    :cond_8
    :goto_3
    return-void
.end method

.method public final autoplay()V
    .locals 7

    iget-boolean v0, p0, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->autoplay:Z

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x3

    const/4 v6, 0x0

    move-object v1, p0

    .line 382
    invoke-static/range {v1 .. v6}, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->play$default(Lapp/rive/runtime/kotlin/controllers/RiveFileController;Lapp/rive/runtime/kotlin/core/Loop;Lapp/rive/runtime/kotlin/core/Direction;ZILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->activeArtboard:Lapp/rive/runtime/kotlin/core/Artboard;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 385
    invoke-virtual {v0, v1}, Lapp/rive/runtime/kotlin/core/Artboard;->advance(F)Z

    :cond_1
    iget-object v0, p0, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->startStopLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 386
    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->onStart:Lkotlin/jvm/functions/Function0;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit v0

    :goto_0
    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public final fireState(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    const-string v0, "stateMachineName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inputName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    .line 633
    invoke-static/range {v1 .. v7}, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->queueInput$default(Lapp/rive/runtime/kotlin/controllers/RiveFileController;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public final fireStateAtPath(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    const-string v0, "inputName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "path"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, ""

    const/4 v4, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    move-object v1, p0

    move-object v3, p1

    move-object v5, p2

    .line 665
    invoke-static/range {v1 .. v7}, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->queueInput$default(Lapp/rive/runtime/kotlin/controllers/RiveFileController;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public final getActiveArtboard()Lapp/rive/runtime/kotlin/core/Artboard;
    .locals 1

    iget-object v0, p0, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->activeArtboard:Lapp/rive/runtime/kotlin/core/Artboard;

    return-object v0
.end method

.method public final getAlignment()Lapp/rive/runtime/kotlin/core/Alignment;
    .locals 1

    iget-object v0, p0, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->alignment:Lapp/rive/runtime/kotlin/core/Alignment;

    return-object v0
.end method

.method public final getAnimations()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lapp/rive/runtime/kotlin/core/LinearAnimationInstance;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->animationList:Ljava/util/List;

    const-string v1, "animationList"

    .line 177
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->animationList:Ljava/util/List;

    const-string v2, "animationList"

    .line 178
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Iterable;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 177
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public final getArtboardBounds()Landroid/graphics/RectF;
    .locals 1

    iget-object v0, p0, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->activeArtboard:Lapp/rive/runtime/kotlin/core/Artboard;

    if-eqz v0, :cond_0

    .line 232
    invoke-virtual {v0}, Lapp/rive/runtime/kotlin/core/Artboard;->getBounds()Landroid/graphics/RectF;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    :cond_1
    return-object v0
.end method

.method public final getAutoplay()Z
    .locals 1

    iget-boolean v0, p0, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->autoplay:Z

    return v0
.end method

.method public final getEventListeners()Ljava/util/HashSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet<",
            "Lapp/rive/runtime/kotlin/controllers/RiveFileController$RiveEventListener;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->_eventListeners:Ljava/util/Set;

    .line 927
    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->_eventListeners:Ljava/util/Set;

    check-cast v1, Ljava/lang/Iterable;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toHashSet(Ljava/lang/Iterable;)Ljava/util/HashSet;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public final getFile()Lapp/rive/runtime/kotlin/core/File;
    .locals 1

    iget-object v0, p0, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->file:Lapp/rive/runtime/kotlin/core/File;

    return-object v0
.end method

.method public final getFit()Lapp/rive/runtime/kotlin/core/Fit;
    .locals 1

    iget-object v0, p0, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->fit:Lapp/rive/runtime/kotlin/core/Fit;

    return-object v0
.end method

.method public final getLayoutScaleFactor()Ljava/lang/Float;
    .locals 1

    iget-object v0, p0, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->layoutScaleFactor:Ljava/lang/Float;

    return-object v0
.end method

.method public final getLayoutScaleFactorActive$kotlin_release()F
    .locals 1

    iget-object v0, p0, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->layoutScaleFactor:Ljava/lang/Float;

    if-eqz v0, :cond_0

    .line 138
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    goto :goto_0

    :cond_0
    iget v0, p0, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->layoutScaleFactorAutomatic:F

    :goto_0
    return v0
.end method

.method public final getLayoutScaleFactorAutomatic()F
    .locals 1

    iget v0, p0, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->layoutScaleFactorAutomatic:F

    return v0
.end method

.method public final getListeners()Ljava/util/HashSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet<",
            "Lapp/rive/runtime/kotlin/controllers/RiveFileController$Listener;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->_listeners:Ljava/util/Set;

    .line 918
    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->_listeners:Ljava/util/Set;

    check-cast v1, Ljava/lang/Iterable;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toHashSet(Ljava/lang/Iterable;)Ljava/util/HashSet;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public final getLoop()Lapp/rive/runtime/kotlin/core/Loop;
    .locals 1

    iget-object v0, p0, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->loop:Lapp/rive/runtime/kotlin/core/Loop;

    return-object v0
.end method

.method public final getOnStart()Lkotlin/jvm/functions/Function0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->onStart:Lkotlin/jvm/functions/Function0;

    return-object v0
.end method

.method public final getPausedAnimations()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lapp/rive/runtime/kotlin/core/LinearAnimationInstance;",
            ">;"
        }
    .end annotation

    .line 216
    invoke-virtual {p0}, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->getAnimations()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-virtual {p0}, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->getPlayingAnimations()Ljava/util/HashSet;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->subtract(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final getPausedStateMachines()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lapp/rive/runtime/kotlin/core/StateMachineInstance;",
            ">;"
        }
    .end annotation

    .line 220
    invoke-virtual {p0}, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->getStateMachines()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-virtual {p0}, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->getPlayingStateMachines()Ljava/util/HashSet;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->subtract(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final getPlayingAnimations()Ljava/util/HashSet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet<",
            "Lapp/rive/runtime/kotlin/core/LinearAnimationInstance;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->playingAnimationSet:Ljava/util/Set;

    const-string v1, "playingAnimationSet"

    .line 198
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->playingAnimationSet:Ljava/util/Set;

    const-string v2, "playingAnimationSet"

    .line 199
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Iterable;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toHashSet(Ljava/lang/Iterable;)Ljava/util/HashSet;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 198
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public final getPlayingStateMachines()Ljava/util/HashSet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet<",
            "Lapp/rive/runtime/kotlin/core/StateMachineInstance;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->playingStateMachineSet:Ljava/util/Set;

    const-string v1, "playingStateMachineSet"

    .line 209
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->playingStateMachineSet:Ljava/util/Set;

    const-string v2, "playingStateMachineSet"

    .line 210
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Iterable;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toHashSet(Ljava/lang/Iterable;)Ljava/util/HashSet;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 209
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public getRefCount()I
    .locals 1

    .line 59
    invoke-static {p0}, Lapp/rive/runtime/kotlin/core/RefCount$DefaultImpls;->getRefCount(Lapp/rive/runtime/kotlin/core/RefCount;)I

    move-result v0

    return v0
.end method

.method public getRefs()Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    iget-object v0, p0, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->refs:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method public final getRequireArtboardResize$kotlin_release()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    iget-object v0, p0, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->requireArtboardResize:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method public final getStartStopLock$kotlin_release()Ljava/util/concurrent/locks/ReentrantLock;
    .locals 1

    iget-object v0, p0, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->startStopLock:Ljava/util/concurrent/locks/ReentrantLock;

    return-object v0
.end method

.method public final getStateMachines()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lapp/rive/runtime/kotlin/core/StateMachineInstance;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->stateMachineList:Ljava/util/List;

    const-string v1, "stateMachineList"

    .line 188
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->stateMachineList:Ljava/util/List;

    const-string v2, "stateMachineList"

    .line 189
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Iterable;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 188
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public final getTargetBounds()Landroid/graphics/RectF;
    .locals 1

    iget-object v0, p0, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->targetBounds:Landroid/graphics/RectF;

    return-object v0
.end method

.method public final getTextRunValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "textRunName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->activeArtboard:Lapp/rive/runtime/kotlin/core/Artboard;

    if-eqz v0, :cond_0

    .line 680
    invoke-virtual {v0, p1}, Lapp/rive/runtime/kotlin/core/Artboard;->getTextRunValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public final getTextRunValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "textRunName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "path"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->activeArtboard:Lapp/rive/runtime/kotlin/core/Artboard;

    if-eqz v0, :cond_0

    .line 688
    invoke-virtual {v0, p1, p2}, Lapp/rive/runtime/kotlin/core/Artboard;->getTextRunValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public final getVolume()Ljava/lang/Float;
    .locals 1

    iget-object v0, p0, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->activeArtboard:Lapp/rive/runtime/kotlin/core/Artboard;

    if-eqz v0, :cond_0

    .line 719
    invoke-virtual {v0}, Lapp/rive/runtime/kotlin/core/Artboard;->getVolume()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final isActive()Z
    .locals 1

    iget-boolean v0, p0, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->isActive:Z

    return v0
.end method

.method public final isAdvancing()Z
    .locals 3

    iget-object v0, p0, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->playingAnimationSet:Ljava/util/Set;

    const-string v1, "playingAnimationSet"

    .line 229
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-nez v0, :cond_1

    iget-object v0, p0, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->playingStateMachineSet:Ljava/util/Set;

    const-string v2, "playingStateMachineSet"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/2addr v0, v1

    if-nez v0, :cond_1

    iget-object v0, p0, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->changedInputs:Ljava/util/concurrent/ConcurrentLinkedQueue;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public final pause()V
    .locals 2

    .line 513
    invoke-virtual {p0}, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->getPlayingAnimations()Ljava/util/HashSet;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 1054
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lapp/rive/runtime/kotlin/core/LinearAnimationInstance;

    .line 513
    invoke-direct {p0, v1}, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->pause(Lapp/rive/runtime/kotlin/core/LinearAnimationInstance;)V

    goto :goto_0

    .line 514
    :cond_0
    invoke-virtual {p0}, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->getPlayingStateMachines()Ljava/util/HashSet;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 1056
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lapp/rive/runtime/kotlin/core/StateMachineInstance;

    .line 514
    invoke-direct {p0, v1}, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->pause(Lapp/rive/runtime/kotlin/core/StateMachineInstance;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public final pause(Ljava/lang/String;Z)V
    .locals 1

    const-string v0, "animationName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 527
    invoke-direct {p0, p1}, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->stateMachines(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    .line 1062
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lapp/rive/runtime/kotlin/core/StateMachineInstance;

    .line 527
    invoke-direct {p0, p2}, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->pause(Lapp/rive/runtime/kotlin/core/StateMachineInstance;)V

    goto :goto_0

    .line 529
    :cond_0
    invoke-direct {p0, p1}, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->animations(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    .line 1064
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lapp/rive/runtime/kotlin/core/LinearAnimationInstance;

    .line 529
    invoke-direct {p0, p2}, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->pause(Lapp/rive/runtime/kotlin/core/LinearAnimationInstance;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public final pause(Ljava/util/List;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    const-string v0, "animationNames"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 519
    check-cast p1, Ljava/util/Collection;

    invoke-direct {p0, p1}, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->stateMachines(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    .line 1058
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lapp/rive/runtime/kotlin/core/StateMachineInstance;

    .line 519
    invoke-direct {p0, p2}, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->pause(Lapp/rive/runtime/kotlin/core/StateMachineInstance;)V

    goto :goto_0

    .line 521
    :cond_0
    check-cast p1, Ljava/util/Collection;

    invoke-direct {p0, p1}, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->animations(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    .line 1060
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lapp/rive/runtime/kotlin/core/LinearAnimationInstance;

    .line 521
    invoke-direct {p0, p2}, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->pause(Lapp/rive/runtime/kotlin/core/LinearAnimationInstance;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public final play(Lapp/rive/runtime/kotlin/core/Loop;Lapp/rive/runtime/kotlin/core/Direction;Z)V
    .locals 10

    const-string v0, "loop"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "direction"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->activeArtboard:Lapp/rive/runtime/kotlin/core/Artboard;

    if-eqz v0, :cond_4

    .line 481
    invoke-virtual {p0}, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->getPausedAnimations()Ljava/util/Set;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->getPausedStateMachines()Ljava/util/Set;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 489
    :cond_0
    invoke-virtual {v0}, Lapp/rive/runtime/kotlin/core/Artboard;->getAnimationNames()Ljava/util/List;

    move-result-object v1

    .line 490
    move-object v2, v1

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    .line 492
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x18

    const/4 v9, 0x0

    move-object v2, p0

    move-object v4, p1

    move-object v5, p2

    .line 491
    invoke-static/range {v2 .. v9}, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->playAnimation$default(Lapp/rive/runtime/kotlin/controllers/RiveFileController;Ljava/lang/String;Lapp/rive/runtime/kotlin/core/Loop;Lapp/rive/runtime/kotlin/core/Direction;ZZILjava/lang/Object;)V

    .line 497
    :cond_1
    invoke-virtual {v0}, Lapp/rive/runtime/kotlin/core/Artboard;->getStateMachineNames()Ljava/util/List;

    move-result-object v0

    .line 498
    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_4

    .line 500
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    const/4 v5, 0x1

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move v6, p3

    .line 499
    invoke-direct/range {v1 .. v6}, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->playAnimation(Ljava/lang/String;Lapp/rive/runtime/kotlin/core/Loop;Lapp/rive/runtime/kotlin/core/Direction;ZZ)V

    return-void

    .line 482
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->getAnimations()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 1050
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lapp/rive/runtime/kotlin/core/LinearAnimationInstance;

    .line 483
    invoke-virtual {p0, v1, p1, p2}, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->play$kotlin_release(Lapp/rive/runtime/kotlin/core/LinearAnimationInstance;Lapp/rive/runtime/kotlin/core/Loop;Lapp/rive/runtime/kotlin/core/Direction;)V

    goto :goto_1

    .line 485
    :cond_3
    invoke-virtual {p0}, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->getStateMachines()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    .line 1052
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lapp/rive/runtime/kotlin/core/StateMachineInstance;

    .line 486
    invoke-virtual {p0, p2, p3}, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->play$kotlin_release(Lapp/rive/runtime/kotlin/core/StateMachineInstance;Z)V

    goto :goto_2

    :cond_4
    return-void
.end method

.method public final play(Ljava/lang/String;Lapp/rive/runtime/kotlin/core/Loop;Lapp/rive/runtime/kotlin/core/Direction;ZZ)V
    .locals 1

    const-string v0, "animationName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "loop"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "direction"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 462
    invoke-direct/range {p0 .. p5}, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->playAnimation(Ljava/lang/String;Lapp/rive/runtime/kotlin/core/Loop;Lapp/rive/runtime/kotlin/core/Direction;ZZ)V

    return-void
.end method

.method public final play(Ljava/util/List;Lapp/rive/runtime/kotlin/core/Loop;Lapp/rive/runtime/kotlin/core/Direction;ZZ)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lapp/rive/runtime/kotlin/core/Loop;",
            "Lapp/rive/runtime/kotlin/core/Direction;",
            "ZZ)V"
        }
    .end annotation

    const-string v0, "animationNames"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "loop"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "direction"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 444
    check-cast p1, Ljava/lang/Iterable;

    .line 1048
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    move-object v1, p0

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    .line 445
    invoke-direct/range {v1 .. v6}, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->playAnimation(Ljava/lang/String;Lapp/rive/runtime/kotlin/core/Loop;Lapp/rive/runtime/kotlin/core/Direction;ZZ)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final play$kotlin_release(Lapp/rive/runtime/kotlin/core/LinearAnimationInstance;Lapp/rive/runtime/kotlin/core/Loop;Lapp/rive/runtime/kotlin/core/Direction;)V
    .locals 1

    const-string v0, "animationInstance"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "loop"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "direction"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 826
    sget-object v0, Lapp/rive/runtime/kotlin/core/Loop;->AUTO:Lapp/rive/runtime/kotlin/core/Loop;

    if-ne p2, v0, :cond_0

    iget-object p2, p0, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->loop:Lapp/rive/runtime/kotlin/core/Loop;

    .line 827
    :cond_0
    sget-object v0, Lapp/rive/runtime/kotlin/core/Loop;->AUTO:Lapp/rive/runtime/kotlin/core/Loop;

    if-eq p2, v0, :cond_1

    .line 828
    invoke-virtual {p1, p2}, Lapp/rive/runtime/kotlin/core/LinearAnimationInstance;->setLoop(Lapp/rive/runtime/kotlin/core/Loop;)V

    :cond_1
    iget-object p2, p0, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->animationList:Ljava/util/List;

    .line 830
    invoke-interface {p2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    .line 831
    sget-object p2, Lapp/rive/runtime/kotlin/core/Direction;->BACKWARDS:Lapp/rive/runtime/kotlin/core/Direction;

    if-ne p3, p2, :cond_2

    .line 832
    invoke-virtual {p1}, Lapp/rive/runtime/kotlin/core/LinearAnimationInstance;->getEndTime()F

    move-result p2

    invoke-virtual {p1, p2}, Lapp/rive/runtime/kotlin/core/LinearAnimationInstance;->time(F)V

    :cond_2
    iget-object p2, p0, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->animationList:Ljava/util/List;

    .line 834
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 836
    :cond_3
    sget-object p2, Lapp/rive/runtime/kotlin/core/Direction;->AUTO:Lapp/rive/runtime/kotlin/core/Direction;

    if-eq p3, p2, :cond_4

    .line 837
    invoke-virtual {p1, p3}, Lapp/rive/runtime/kotlin/core/LinearAnimationInstance;->setDirection(Lapp/rive/runtime/kotlin/core/Direction;)V

    :cond_4
    iget-object p2, p0, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->startStopLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 839
    monitor-enter p2

    :try_start_0
    iget-object p3, p0, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->playingAnimationSet:Ljava/util/Set;

    .line 840
    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object p3, p0, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->onStart:Lkotlin/jvm/functions/Function0;

    if-eqz p3, :cond_5

    .line 841
    invoke-interface {p3}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    sget-object p3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 839
    :cond_5
    monitor-exit p2

    .line 843
    check-cast p1, Lapp/rive/runtime/kotlin/core/PlayableInstance;

    invoke-direct {p0, p1}, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->notifyPlay(Lapp/rive/runtime/kotlin/core/PlayableInstance;)V

    return-void

    :catchall_0
    move-exception p1

    .line 839
    monitor-exit p2

    throw p1
.end method

.method public final play$kotlin_release(Lapp/rive/runtime/kotlin/core/StateMachineInstance;Z)V
    .locals 1

    const-string v0, "stateMachineInstance"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->stateMachineList:Ljava/util/List;

    .line 799
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->stateMachineList:Ljava/util/List;

    .line 800
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    if-eqz p2, :cond_1

    const/4 p2, 0x0

    .line 808
    invoke-direct {p0, p1, p2}, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->resolveStateMachineAdvance(Lapp/rive/runtime/kotlin/core/StateMachineInstance;F)Z

    :cond_1
    iget-object p2, p0, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->startStopLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 811
    monitor-enter p2

    :try_start_0
    iget-object v0, p0, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->playingStateMachineSet:Ljava/util/Set;

    .line 812
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->onStart:Lkotlin/jvm/functions/Function0;

    if-eqz v0, :cond_2

    .line 813
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 811
    :cond_2
    monitor-exit p2

    .line 815
    check-cast p1, Lapp/rive/runtime/kotlin/core/PlayableInstance;

    invoke-direct {p0, p1}, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->notifyPlay(Lapp/rive/runtime/kotlin/core/PlayableInstance;)V

    return-void

    :catchall_0
    move-exception p1

    .line 811
    monitor-exit p2

    throw p1
.end method

.method public final pointerEvent(Lapp/rive/runtime/kotlin/renderers/PointerEvents;FF)V
    .locals 8

    const-string v0, "eventType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 881
    sget-object v1, Lapp/rive/runtime/kotlin/core/Helpers;->INSTANCE:Lapp/rive/runtime/kotlin/core/Helpers;

    iget-object v2, p0, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->targetBounds:Landroid/graphics/RectF;

    .line 883
    new-instance v3, Landroid/graphics/PointF;

    invoke-direct {v3, p2, p3}, Landroid/graphics/PointF;-><init>(FF)V

    iget-object v4, p0, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->fit:Lapp/rive/runtime/kotlin/core/Fit;

    iget-object v5, p0, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->alignment:Lapp/rive/runtime/kotlin/core/Alignment;

    iget-object p2, p0, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->activeArtboard:Lapp/rive/runtime/kotlin/core/Artboard;

    if-eqz p2, :cond_0

    .line 886
    invoke-virtual {p2}, Lapp/rive/runtime/kotlin/core/Artboard;->getBounds()Landroid/graphics/RectF;

    move-result-object p2

    if-nez p2, :cond_1

    :cond_0
    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    :cond_1
    move-object v6, p2

    .line 887
    invoke-virtual {p0}, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->getLayoutScaleFactorActive$kotlin_release()F

    move-result v7

    .line 881
    invoke-virtual/range {v1 .. v7}, Lapp/rive/runtime/kotlin/core/Helpers;->convertToArtboardSpace(Landroid/graphics/RectF;Landroid/graphics/PointF;Lapp/rive/runtime/kotlin/core/Fit;Lapp/rive/runtime/kotlin/core/Alignment;Landroid/graphics/RectF;F)Landroid/graphics/PointF;

    move-result-object p2

    .line 889
    invoke-virtual {p0}, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->getStateMachines()Ljava/util/List;

    move-result-object p3

    check-cast p3, Ljava/lang/Iterable;

    .line 1100
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lapp/rive/runtime/kotlin/core/StateMachineInstance;

    .line 891
    sget-object v1, Lapp/rive/runtime/kotlin/controllers/RiveFileController$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Lapp/rive/runtime/kotlin/renderers/PointerEvents;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_4

    const/4 v2, 0x2

    if-eq v1, v2, :cond_3

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    goto :goto_1

    .line 903
    :cond_2
    iget v1, p2, Landroid/graphics/PointF;->x:F

    .line 904
    iget v2, p2, Landroid/graphics/PointF;->y:F

    .line 902
    invoke-virtual {v0, v1, v2}, Lapp/rive/runtime/kotlin/core/StateMachineInstance;->pointerMove(FF)V

    goto :goto_1

    .line 898
    :cond_3
    iget v1, p2, Landroid/graphics/PointF;->x:F

    .line 899
    iget v2, p2, Landroid/graphics/PointF;->y:F

    .line 897
    invoke-virtual {v0, v1, v2}, Lapp/rive/runtime/kotlin/core/StateMachineInstance;->pointerUp(FF)V

    goto :goto_1

    .line 893
    :cond_4
    iget v1, p2, Landroid/graphics/PointF;->x:F

    .line 894
    iget v2, p2, Landroid/graphics/PointF;->y:F

    .line 892
    invoke-virtual {v0, v1, v2}, Lapp/rive/runtime/kotlin/core/StateMachineInstance;->pointerDown(FF)V

    :goto_1
    const/4 v1, 0x0

    .line 908
    invoke-virtual {p0, v0, v1}, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->play$kotlin_release(Lapp/rive/runtime/kotlin/core/StateMachineInstance;Z)V

    goto :goto_0

    :cond_5
    return-void
.end method

.method public final varargs queueInputs$kotlin_release([Lapp/rive/runtime/kotlin/ChangedInput;)V
    .locals 2

    const-string v0, "inputs"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->startStopLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 589
    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->changedInputs:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 590
    check-cast v1, Ljava/util/Collection;

    invoke-static {v1, p1}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    iget-object p1, p0, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->onStart:Lkotlin/jvm/functions/Function0;

    if-eqz p1, :cond_0

    .line 592
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 589
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public registerListener(Lapp/rive/runtime/kotlin/controllers/RiveFileController$Listener;)V
    .locals 2

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->startStopLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 931
    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->_listeners:Ljava/util/Set;

    .line 932
    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 931
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public bridge synthetic registerListener(Ljava/lang/Object;)V
    .locals 0

    .line 59
    check-cast p1, Lapp/rive/runtime/kotlin/controllers/RiveFileController$Listener;

    invoke-virtual {p0, p1}, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->registerListener(Lapp/rive/runtime/kotlin/controllers/RiveFileController$Listener;)V

    return-void
.end method

.method public release()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 1009
    invoke-static {p0}, Lapp/rive/runtime/kotlin/core/RefCount$DefaultImpls;->release(Lapp/rive/runtime/kotlin/core/RefCount;)I

    move-result v0

    const-string v1, "Failed requirement."

    if-ltz v0, :cond_2

    if-nez v0, :cond_1

    iget-boolean v2, p0, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->isActive:Z

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    .line 1015
    invoke-virtual {p0, v1}, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->setFile(Lapp/rive/runtime/kotlin/core/File;)V

    goto :goto_0

    .line 1013
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return v0

    .line 1010
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final removeEventListener(Lapp/rive/runtime/kotlin/controllers/RiveFileController$RiveEventListener;)V
    .locals 2

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->startStopLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 955
    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->_eventListeners:Ljava/util/Set;

    .line 956
    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 955
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public final reset$kotlin_release()V
    .locals 1

    iget-object v0, p0, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->playingAnimationSet:Ljava/util/Set;

    .line 993
    invoke-interface {v0}, Ljava/util/Set;->clear()V

    iget-object v0, p0, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->animationList:Ljava/util/List;

    .line 994
    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->playingStateMachineSet:Ljava/util/Set;

    .line 995
    invoke-interface {v0}, Ljava/util/Set;->clear()V

    iget-object v0, p0, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->stateMachineList:Ljava/util/List;

    .line 996
    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->changedInputs:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 997
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    const/4 v0, 0x0

    .line 998
    invoke-virtual {p0, v0}, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->setActiveArtboard(Lapp/rive/runtime/kotlin/core/Artboard;)V

    return-void
.end method

.method public final restoreControllerState(Lapp/rive/runtime/kotlin/controllers/ControllerState;)V
    .locals 6

    const-string v0, "state"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->file:Lapp/rive/runtime/kotlin/core/File;

    if-eqz v0, :cond_0

    .line 278
    invoke-virtual {v0}, Lapp/rive/runtime/kotlin/core/File;->getLock()Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    move-object v0, p0

    :cond_1
    monitor-enter v0

    .line 280
    :try_start_0
    invoke-virtual {p0}, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->reset$kotlin_release()V

    .line 282
    invoke-virtual {p1}, Lapp/rive/runtime/kotlin/controllers/ControllerState;->getFile()Lapp/rive/runtime/kotlin/core/File;

    move-result-object v1

    invoke-virtual {p0, v1}, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->setFile(Lapp/rive/runtime/kotlin/core/File;)V

    .line 283
    invoke-virtual {p1}, Lapp/rive/runtime/kotlin/controllers/ControllerState;->getActiveArtboard()Lapp/rive/runtime/kotlin/core/Artboard;

    move-result-object v1

    invoke-virtual {p0, v1}, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->setActiveArtboard(Lapp/rive/runtime/kotlin/core/Artboard;)V

    .line 284
    invoke-virtual {p1}, Lapp/rive/runtime/kotlin/controllers/ControllerState;->getAnimations()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    .line 1034
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lapp/rive/runtime/kotlin/core/LinearAnimationInstance;

    iget-object v3, p0, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->animationList:Ljava/util/List;

    .line 284
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 285
    :cond_2
    invoke-virtual {p1}, Lapp/rive/runtime/kotlin/controllers/ControllerState;->getStateMachines()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    .line 1036
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lapp/rive/runtime/kotlin/core/StateMachineInstance;

    iget-object v3, p0, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->stateMachineList:Ljava/util/List;

    .line 285
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 286
    :cond_3
    invoke-virtual {p1}, Lapp/rive/runtime/kotlin/controllers/ControllerState;->getPlayingAnimations()Ljava/util/HashSet;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    .line 1038
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lapp/rive/runtime/kotlin/core/LinearAnimationInstance;

    .line 286
    invoke-virtual {v2}, Lapp/rive/runtime/kotlin/core/LinearAnimationInstance;->getLoop()Lapp/rive/runtime/kotlin/core/Loop;

    move-result-object v3

    invoke-virtual {v2}, Lapp/rive/runtime/kotlin/core/LinearAnimationInstance;->getDirection()Lapp/rive/runtime/kotlin/core/Direction;

    move-result-object v4

    invoke-virtual {p0, v2, v3, v4}, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->play$kotlin_release(Lapp/rive/runtime/kotlin/core/LinearAnimationInstance;Lapp/rive/runtime/kotlin/core/Loop;Lapp/rive/runtime/kotlin/core/Direction;)V

    goto :goto_2

    .line 287
    :cond_4
    invoke-virtual {p1}, Lapp/rive/runtime/kotlin/controllers/ControllerState;->getPlayingStateMachines()Ljava/util/HashSet;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    .line 1040
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lapp/rive/runtime/kotlin/core/StateMachineInstance;

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 287
    invoke-static {p0, v2, v5, v3, v4}, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->play$kotlin_release$default(Lapp/rive/runtime/kotlin/controllers/RiveFileController;Lapp/rive/runtime/kotlin/core/StateMachineInstance;ZILjava/lang/Object;)V

    goto :goto_3

    .line 288
    :cond_5
    invoke-virtual {p1}, Lapp/rive/runtime/kotlin/controllers/ControllerState;->isActive()Z

    move-result v1

    iput-boolean v1, p0, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->isActive:Z

    .line 290
    invoke-virtual {p1}, Lapp/rive/runtime/kotlin/controllers/ControllerState;->dispose()V

    .line 291
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 278
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public final saveControllerState()Lapp/rive/runtime/kotlin/controllers/ControllerState;
    .locals 10

    iget-object v1, p0, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->file:Lapp/rive/runtime/kotlin/core/File;

    const/4 v0, 0x0

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    iget-object v2, p0, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->activeArtboard:Lapp/rive/runtime/kotlin/core/Artboard;

    if-nez v2, :cond_1

    return-object v0

    .line 248
    :cond_1
    invoke-virtual {v1}, Lapp/rive/runtime/kotlin/core/File;->getLock()Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v8

    monitor-enter v8

    .line 250
    :try_start_0
    invoke-virtual {v1}, Lapp/rive/runtime/kotlin/core/File;->getHasCppObject()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_2

    .line 251
    monitor-exit v8

    return-object v0

    .line 254
    :cond_2
    :try_start_1
    invoke-virtual {v1}, Lapp/rive/runtime/kotlin/core/File;->acquire()I

    .line 255
    invoke-virtual {v2}, Lapp/rive/runtime/kotlin/core/Artboard;->acquire()I

    .line 257
    new-instance v9, Lapp/rive/runtime/kotlin/controllers/ControllerState;

    iget-object v0, p0, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->animationList:Ljava/util/List;

    const-string v3, "animationList"

    .line 261
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v3

    .line 262
    invoke-virtual {p0}, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->getPlayingAnimations()Ljava/util/HashSet;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toHashSet(Ljava/lang/Iterable;)Ljava/util/HashSet;

    move-result-object v4

    iget-object v0, p0, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->stateMachineList:Ljava/util/List;

    const-string v5, "stateMachineList"

    .line 263
    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v5

    .line 264
    invoke-virtual {p0}, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->getPlayingStateMachines()Ljava/util/HashSet;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toHashSet(Ljava/lang/Iterable;)Ljava/util/HashSet;

    move-result-object v6

    iget-boolean v7, p0, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->isActive:Z

    move-object v0, v9

    .line 257
    invoke-direct/range {v0 .. v7}, Lapp/rive/runtime/kotlin/controllers/ControllerState;-><init>(Lapp/rive/runtime/kotlin/core/File;Lapp/rive/runtime/kotlin/core/Artboard;Ljava/util/List;Ljava/util/HashSet;Ljava/util/List;Ljava/util/HashSet;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v8

    return-object v9

    :catchall_0
    move-exception v0

    monitor-exit v8

    throw v0
.end method

.method public final selectArtboard(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->file:Lapp/rive/runtime/kotlin/core/File;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 373
    invoke-virtual {v0, p1}, Lapp/rive/runtime/kotlin/core/File;->artboard(Ljava/lang/String;)Lapp/rive/runtime/kotlin/core/Artboard;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lapp/rive/runtime/kotlin/core/File;->getFirstArtboard()Lapp/rive/runtime/kotlin/core/Artboard;

    move-result-object p1

    .line 374
    :goto_0
    invoke-direct {p0, p1}, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->setArtboard(Lapp/rive/runtime/kotlin/core/Artboard;)V

    goto :goto_1

    .line 375
    :cond_1
    move-object p1, p0

    check-cast p1, Lapp/rive/runtime/kotlin/controllers/RiveFileController;

    const-string p1, "RiveFileController"

    const-string v0, "selectArtboard: cannot select an Artboard without a valid File."

    .line 376
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public final setActive(Z)V
    .locals 0

    iput-boolean p1, p0, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->isActive:Z

    return-void
.end method

.method public final setActiveArtboard(Lapp/rive/runtime/kotlin/core/Artboard;)V
    .locals 2

    iget-object v0, p0, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->activeArtboard:Lapp/rive/runtime/kotlin/core/Artboard;

    .line 161
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->file:Lapp/rive/runtime/kotlin/core/File;

    if-eqz v0, :cond_1

    .line 164
    invoke-virtual {v0}, Lapp/rive/runtime/kotlin/core/File;->getLock()Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    if-nez v0, :cond_2

    :cond_1
    move-object v0, p0

    :cond_2
    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->activeArtboard:Lapp/rive/runtime/kotlin/core/Artboard;

    if-eqz v1, :cond_3

    .line 165
    invoke-virtual {v1}, Lapp/rive/runtime/kotlin/core/Artboard;->release()I

    :cond_3
    iput-object p1, p0, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->activeArtboard:Lapp/rive/runtime/kotlin/core/Artboard;

    if-eqz p1, :cond_4

    .line 167
    invoke-virtual {p1}, Lapp/rive/runtime/kotlin/core/Artboard;->acquire()I

    :cond_4
    iget-object p1, p0, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->userSetVolume:Ljava/lang/Float;

    if-eqz p1, :cond_6

    .line 168
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    iget-object v1, p0, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->activeArtboard:Lapp/rive/runtime/kotlin/core/Artboard;

    if-nez v1, :cond_5

    goto :goto_0

    :cond_5
    invoke-virtual {v1, p1}, Lapp/rive/runtime/kotlin/core/Artboard;->setVolume$kotlin_release(F)V

    :goto_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 164
    :cond_6
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public final setAlignment(Lapp/rive/runtime/kotlin/core/Alignment;)V
    .locals 1

    const-string/jumbo v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->alignment:Lapp/rive/runtime/kotlin/core/Alignment;

    iget-object p1, p0, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->startStopLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 102
    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->onStart:Lkotlin/jvm/functions/Function0;

    if-eqz v0, :cond_0

    .line 103
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    :cond_0
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1

    throw v0
.end method

.method public final setAutoplay(Z)V
    .locals 0

    iput-boolean p1, p0, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->autoplay:Z

    return-void
.end method

.method public final setBooleanState(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 1

    const-string v0, "stateMachineName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inputName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 645
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    .line 642
    invoke-direct {p0, p1, p2, p3, p4}, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->queueInput(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final setBooleanStateAtPath(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 1

    const-string v0, "inputName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "path"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, ""

    .line 669
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-direct {p0, v0, p1, p2, p3}, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->queueInput(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final setFile(Lapp/rive/runtime/kotlin/core/File;)V
    .locals 2

    iget-object v0, p0, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->file:Lapp/rive/runtime/kotlin/core/File;

    .line 142
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->file:Lapp/rive/runtime/kotlin/core/File;

    if-eqz v0, :cond_1

    .line 146
    invoke-virtual {v0}, Lapp/rive/runtime/kotlin/core/File;->getLock()Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    if-nez v0, :cond_2

    :cond_1
    move-object v0, p0

    :cond_2
    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->file:Lapp/rive/runtime/kotlin/core/File;

    if-eqz v1, :cond_3

    .line 149
    invoke-virtual {p0}, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->reset$kotlin_release()V

    .line 150
    invoke-virtual {v1}, Lapp/rive/runtime/kotlin/core/File;->release()I

    :cond_3
    iput-object p1, p0, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->file:Lapp/rive/runtime/kotlin/core/File;

    if-eqz p1, :cond_4

    .line 155
    invoke-virtual {p1}, Lapp/rive/runtime/kotlin/core/File;->acquire()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    :cond_4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public final setFit(Lapp/rive/runtime/kotlin/core/Fit;)V
    .locals 1

    const-string/jumbo v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->fit:Lapp/rive/runtime/kotlin/core/Fit;

    iget-object p1, p0, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->requireArtboardResize:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    .line 94
    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object p1, p0, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->startStopLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 95
    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->onStart:Lkotlin/jvm/functions/Function0;

    if-eqz v0, :cond_0

    .line 96
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    :cond_0
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1

    throw v0
.end method

.method public final setLayoutScaleFactor(Ljava/lang/Float;)V
    .locals 1

    iput-object p1, p0, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->layoutScaleFactor:Ljava/lang/Float;

    iget-object p1, p0, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->requireArtboardResize:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    .line 114
    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object p1, p0, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->startStopLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 115
    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->onStart:Lkotlin/jvm/functions/Function0;

    if-eqz v0, :cond_0

    .line 116
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    :cond_0
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1

    throw v0
.end method

.method public final setLayoutScaleFactorAutomatic$kotlin_release(F)V
    .locals 1

    iput p1, p0, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->layoutScaleFactorAutomatic:F

    iget-object p1, p0, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->requireArtboardResize:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    .line 127
    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object p1, p0, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->startStopLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 128
    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->onStart:Lkotlin/jvm/functions/Function0;

    if-eqz v0, :cond_0

    .line 129
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    :cond_0
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1

    throw v0
.end method

.method public final setLoop(Lapp/rive/runtime/kotlin/core/Loop;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->loop:Lapp/rive/runtime/kotlin/core/Loop;

    return-void
.end method

.method public final setNumberState(Ljava/lang/String;Ljava/lang/String;FLjava/lang/String;)V
    .locals 1

    const-string v0, "stateMachineName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inputName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 659
    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    .line 656
    invoke-direct {p0, p1, p2, p3, p4}, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->queueInput(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final setNumberStateAtPath(Ljava/lang/String;FLjava/lang/String;)V
    .locals 1

    const-string v0, "inputName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "path"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, ""

    .line 673
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-direct {p0, v0, p1, p2, p3}, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->queueInput(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final setOnStart(Lkotlin/jvm/functions/Function0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->onStart:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method public setRefs(Ljava/util/concurrent/atomic/AtomicInteger;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->refs:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public final setRequireArtboardResize$kotlin_release(Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->requireArtboardResize:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public final setRiveFile(Lapp/rive/runtime/kotlin/core/File;Ljava/lang/String;)V
    .locals 1

    const-string v0, "file"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->file:Lapp/rive/runtime/kotlin/core/File;

    .line 358
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 361
    :cond_0
    invoke-virtual {p0, p1}, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->setFile(Lapp/rive/runtime/kotlin/core/File;)V

    .line 363
    invoke-virtual {p0, p2}, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->selectArtboard(Ljava/lang/String;)V

    return-void
.end method

.method public final setTargetBounds(Landroid/graphics/RectF;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->targetBounds:Landroid/graphics/RectF;

    return-void
.end method

.method public final setTextRunValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "textRunName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "textValue"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->activeArtboard:Lapp/rive/runtime/kotlin/core/Artboard;

    if-eqz v0, :cond_0

    .line 697
    invoke-virtual {v0, p1, p2}, Lapp/rive/runtime/kotlin/core/Artboard;->setTextRunValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 698
    :cond_0
    invoke-virtual {p0}, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->getStateMachines()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    .line 1082
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lapp/rive/runtime/kotlin/core/StateMachineInstance;

    const/4 v0, 0x0

    .line 699
    invoke-virtual {p0, p2, v0}, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->play$kotlin_release(Lapp/rive/runtime/kotlin/core/StateMachineInstance;Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final setTextRunValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "textRunName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "textValue"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "path"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->activeArtboard:Lapp/rive/runtime/kotlin/core/Artboard;

    if-eqz v0, :cond_0

    .line 710
    invoke-virtual {v0, p1, p2, p3}, Lapp/rive/runtime/kotlin/core/Artboard;->setTextRunValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 711
    :cond_0
    invoke-virtual {p0}, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->getStateMachines()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    .line 1084
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lapp/rive/runtime/kotlin/core/StateMachineInstance;

    const/4 p3, 0x0

    .line 712
    invoke-virtual {p0, p2, p3}, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->play$kotlin_release(Lapp/rive/runtime/kotlin/core/StateMachineInstance;Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final setVolume(F)V
    .locals 1

    .line 723
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->userSetVolume:Ljava/lang/Float;

    iget-object v0, p0, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->activeArtboard:Lapp/rive/runtime/kotlin/core/Artboard;

    if-nez v0, :cond_0

    goto :goto_0

    .line 724
    :cond_0
    invoke-virtual {v0, p1}, Lapp/rive/runtime/kotlin/core/Artboard;->setVolume$kotlin_release(F)V

    :goto_0
    return-void
.end method

.method public final setupScene$kotlin_release(Lapp/rive/runtime/kotlin/RiveAnimationView$RendererAttributes;)V
    .locals 9

    const-string v0, "rendererAttributes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->file:Lapp/rive/runtime/kotlin/core/File;

    if-nez v0, :cond_0

    const-string v0, "RiveFileController"

    const-string v1, "Cannot init without a file"

    .line 404
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 408
    :cond_0
    invoke-virtual {p0}, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->reset$kotlin_release()V

    .line 409
    invoke-virtual {p1}, Lapp/rive/runtime/kotlin/RiveAnimationView$RendererAttributes;->getAutoplay()Z

    move-result v2

    iput-boolean v2, p0, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->autoplay:Z

    .line 410
    invoke-virtual {p1}, Lapp/rive/runtime/kotlin/RiveAnimationView$RendererAttributes;->getAlignment()Lapp/rive/runtime/kotlin/core/Alignment;

    move-result-object v2

    invoke-virtual {p0, v2}, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->setAlignment(Lapp/rive/runtime/kotlin/core/Alignment;)V

    .line 411
    invoke-virtual {p1}, Lapp/rive/runtime/kotlin/RiveAnimationView$RendererAttributes;->getFit()Lapp/rive/runtime/kotlin/core/Fit;

    move-result-object v2

    invoke-virtual {p0, v2}, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->setFit(Lapp/rive/runtime/kotlin/core/Fit;)V

    .line 412
    invoke-virtual {p1}, Lapp/rive/runtime/kotlin/RiveAnimationView$RendererAttributes;->getLoop()Lapp/rive/runtime/kotlin/core/Loop;

    move-result-object v2

    iput-object v2, p0, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->loop:Lapp/rive/runtime/kotlin/core/Loop;

    .line 414
    invoke-virtual {p1}, Lapp/rive/runtime/kotlin/RiveAnimationView$RendererAttributes;->getArtboardName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 416
    invoke-virtual {v0, v2}, Lapp/rive/runtime/kotlin/core/File;->artboard(Ljava/lang/String;)Lapp/rive/runtime/kotlin/core/Artboard;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lapp/rive/runtime/kotlin/core/File;->getFirstArtboard()Lapp/rive/runtime/kotlin/core/Artboard;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->setActiveArtboard(Lapp/rive/runtime/kotlin/core/Artboard;)V

    iget-boolean v0, p0, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->autoplay:Z

    if-eqz v0, :cond_4

    .line 419
    invoke-virtual {p1}, Lapp/rive/runtime/kotlin/RiveAnimationView$RendererAttributes;->getAnimationName()Ljava/lang/String;

    move-result-object v2

    .line 420
    invoke-virtual {p1}, Lapp/rive/runtime/kotlin/RiveAnimationView$RendererAttributes;->getStateMachineName()Ljava/lang/String;

    move-result-object v0

    if-eqz v2, :cond_2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x1e

    const/4 v8, 0x0

    move-object v1, p0

    .line 423
    invoke-static/range {v1 .. v8}, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->play$default(Lapp/rive/runtime/kotlin/controllers/RiveFileController;Ljava/lang/String;Lapp/rive/runtime/kotlin/core/Loop;Lapp/rive/runtime/kotlin/core/Direction;ZZILjava/lang/Object;)V

    goto :goto_1

    :cond_2
    if-eqz v0, :cond_3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x6

    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, v0

    .line 425
    invoke-static/range {v1 .. v8}, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->play$default(Lapp/rive/runtime/kotlin/controllers/RiveFileController;Ljava/lang/String;Lapp/rive/runtime/kotlin/core/Loop;Lapp/rive/runtime/kotlin/core/Direction;ZZILjava/lang/Object;)V

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x3

    const/4 v6, 0x0

    move-object v1, p0

    .line 427
    invoke-static/range {v1 .. v6}, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->play$default(Lapp/rive/runtime/kotlin/controllers/RiveFileController;Lapp/rive/runtime/kotlin/core/Loop;Lapp/rive/runtime/kotlin/core/Direction;ZILjava/lang/Object;)V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->activeArtboard:Lapp/rive/runtime/kotlin/core/Artboard;

    if-eqz v0, :cond_5

    const/4 v1, 0x0

    .line 430
    invoke-virtual {v0, v1}, Lapp/rive/runtime/kotlin/core/Artboard;->advance(F)Z

    :cond_5
    iget-object v1, p0, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->startStopLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 432
    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->onStart:Lkotlin/jvm/functions/Function0;

    if-eqz v0, :cond_6

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_6
    monitor-exit v1

    :goto_1
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final stopAnimations()V
    .locals 2

    iget-object v0, p0, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->animationList:Ljava/util/List;

    const-string v1, "animationList"

    .line 536
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 537
    invoke-virtual {p0}, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->getAnimations()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 1066
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lapp/rive/runtime/kotlin/core/LinearAnimationInstance;

    .line 537
    invoke-direct {p0, v1}, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->stop(Lapp/rive/runtime/kotlin/core/LinearAnimationInstance;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->stateMachineList:Ljava/util/List;

    const-string v1, "stateMachineList"

    .line 541
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 542
    invoke-virtual {p0}, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->getStateMachines()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 1068
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lapp/rive/runtime/kotlin/core/StateMachineInstance;

    .line 542
    invoke-direct {p0, v1}, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->stop(Lapp/rive/runtime/kotlin/core/StateMachineInstance;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public final stopAnimations(Ljava/lang/String;Z)V
    .locals 1

    const-string v0, "animationName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 557
    invoke-direct {p0, p1}, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->stateMachines(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    .line 1074
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lapp/rive/runtime/kotlin/core/StateMachineInstance;

    .line 557
    invoke-direct {p0, p2}, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->stop(Lapp/rive/runtime/kotlin/core/StateMachineInstance;)V

    goto :goto_0

    .line 559
    :cond_0
    invoke-direct {p0, p1}, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->animations(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    .line 1076
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lapp/rive/runtime/kotlin/core/LinearAnimationInstance;

    .line 559
    invoke-direct {p0, p2}, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->stop(Lapp/rive/runtime/kotlin/core/LinearAnimationInstance;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public final stopAnimations(Ljava/util/List;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    const-string v0, "animationNames"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 548
    check-cast p1, Ljava/util/Collection;

    invoke-direct {p0, p1}, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->stateMachines(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    .line 1070
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lapp/rive/runtime/kotlin/core/StateMachineInstance;

    .line 548
    invoke-direct {p0, p2}, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->stop(Lapp/rive/runtime/kotlin/core/StateMachineInstance;)V

    goto :goto_0

    .line 550
    :cond_0
    check-cast p1, Ljava/util/Collection;

    invoke-direct {p0, p1}, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->animations(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    .line 1072
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lapp/rive/runtime/kotlin/core/LinearAnimationInstance;

    .line 550
    invoke-direct {p0, p2}, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->stop(Lapp/rive/runtime/kotlin/core/LinearAnimationInstance;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public unregisterListener(Lapp/rive/runtime/kotlin/controllers/RiveFileController$Listener;)V
    .locals 2

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->startStopLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 937
    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->_listeners:Ljava/util/Set;

    .line 938
    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 937
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public bridge synthetic unregisterListener(Ljava/lang/Object;)V
    .locals 0

    .line 59
    check-cast p1, Lapp/rive/runtime/kotlin/controllers/RiveFileController$Listener;

    invoke-virtual {p0, p1}, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->unregisterListener(Lapp/rive/runtime/kotlin/controllers/RiveFileController$Listener;)V

    return-void
.end method
