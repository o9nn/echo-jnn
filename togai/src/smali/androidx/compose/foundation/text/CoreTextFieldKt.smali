.class public final Landroidx/compose/foundation/text/CoreTextFieldKt;
.super Ljava/lang/Object;
.source "CoreTextField.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCoreTextField.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CoreTextField.kt\nandroidx/compose/foundation/text/CoreTextFieldKt\n+ 2 CompositionLocal.kt\nandroidx/compose/runtime/CompositionLocal\n+ 3 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 4 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 5 Effects.kt\nandroidx/compose/runtime/EffectsKt\n+ 6 Effects.kt\nandroidx/compose/runtime/EffectsKt$rememberCoroutineScope$1\n+ 7 Box.kt\nandroidx/compose/foundation/layout/BoxKt\n+ 8 Layout.kt\nandroidx/compose/ui/layout/LayoutKt\n+ 9 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1031:1\n76#2:1032\n76#2:1033\n76#2:1034\n76#2:1035\n76#2:1036\n76#2:1073\n76#2:1074\n76#2:1075\n76#2:1105\n76#2:1144\n36#3:1037\n50#3:1044\n49#3:1045\n25#3:1052\n25#3:1059\n25#3:1066\n25#3:1080\n25#3:1091\n460#3,13:1117\n473#3,3:1131\n36#3:1137\n36#3:1145\n1057#4,6:1038\n1057#4,6:1046\n1057#4,6:1053\n1057#4,6:1060\n1057#4,6:1067\n1057#4,3:1081\n1060#4,3:1087\n1057#4,6:1092\n1057#4,6:1138\n1057#4,6:1146\n474#5,4:1076\n478#5,2:1084\n482#5:1090\n474#6:1086\n67#7,6:1098\n73#7:1130\n77#7:1135\n75#8:1104\n76#8,11:1106\n89#8:1134\n1#9:1136\n*S KotlinDebug\n*F\n+ 1 CoreTextField.kt\nandroidx/compose/foundation/text/CoreTextFieldKt\n*L\n199#1:1032\n200#1:1033\n201#1:1034\n202#1:1035\n203#1:1036\n264#1:1073\n265#1:1074\n266#1:1075\n643#1:1105\n1007#1:1144\n211#1:1037\n214#1:1044\n214#1:1045\n227#1:1052\n255#1:1059\n258#1:1066\n270#1:1080\n271#1:1091\n643#1:1117,13\n643#1:1131,3\n1006#1:1137\n1014#1:1145\n211#1:1038,6\n214#1:1046,6\n227#1:1053,6\n255#1:1060,6\n258#1:1067,6\n270#1:1081,3\n270#1:1087,3\n271#1:1092,6\n1006#1:1138,6\n1014#1:1146,6\n270#1:1076,4\n270#1:1084,2\n270#1:1090\n270#1:1086\n643#1:1098,6\n643#1:1130\n643#1:1135\n643#1:1104\n643#1:1106,11\n643#1:1134\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0096\u0001\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u001a\u00e4\u0001\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0012\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00010\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t2\u0008\u0008\u0002\u0010\n\u001a\u00020\u000b2\u0014\u0008\u0002\u0010\u000c\u001a\u000e\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u00010\u00052\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u00112\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u00132\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u00152\u0008\u0008\u0002\u0010\u0016\u001a\u00020\u00172\u0008\u0008\u0002\u0010\u0018\u001a\u00020\u00192\u0008\u0008\u0002\u0010\u001a\u001a\u00020\u00132\u0008\u0008\u0002\u0010\u001b\u001a\u00020\u001323\u0008\u0002\u0010\u001c\u001a-\u0012\u001e\u0012\u001c\u0012\u0004\u0012\u00020\u00010\u001d\u00a2\u0006\u0002\u0008\u001e\u00a2\u0006\u000c\u0008\u001f\u0012\u0008\u0008 \u0012\u0004\u0008\u0008(!\u0012\u0004\u0012\u00020\u00010\u0005\u00a2\u0006\u0002\u0008\u001eH\u0001\u00a2\u0006\u0002\u0010\"\u001a0\u0010#\u001a\u00020\u00012\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010$\u001a\u00020%2\u0011\u0010&\u001a\r\u0012\u0004\u0012\u00020\u00010\u001d\u00a2\u0006\u0002\u0008\u001eH\u0003\u00a2\u0006\u0002\u0010\'\u001a\u001d\u0010(\u001a\u00020\u00012\u0006\u0010$\u001a\u00020%2\u0006\u0010)\u001a\u00020\u0013H\u0003\u00a2\u0006\u0002\u0010*\u001a\u0015\u0010+\u001a\u00020\u00012\u0006\u0010$\u001a\u00020%H\u0001\u00a2\u0006\u0002\u0010,\u001a(\u0010-\u001a\u00020\u00012\u0006\u0010.\u001a\u00020/2\u0006\u00100\u001a\u0002012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0016\u001a\u00020\u0017H\u0002\u001a\u0010\u00102\u001a\u00020\u00012\u0006\u00100\u001a\u000201H\u0002\u001a \u00103\u001a\u00020\u00012\u0006\u00100\u001a\u0002012\u0006\u00104\u001a\u0002052\u0006\u00106\u001a\u00020\u0013H\u0002\u001a5\u00107\u001a\u00020\u0001*\u0002082\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u00109\u001a\u00020:2\u0006\u0010;\u001a\u00020\r2\u0006\u0010<\u001a\u00020=H\u0080@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010>\u001a\u001c\u0010?\u001a\u00020\u0007*\u00020\u00072\u0006\u00100\u001a\u0002012\u0006\u0010$\u001a\u00020%H\u0002\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006@"
    }
    d2 = {
        "CoreTextField",
        "",
        "value",
        "Landroidx/compose/ui/text/input/TextFieldValue;",
        "onValueChange",
        "Lkotlin/Function1;",
        "modifier",
        "Landroidx/compose/ui/Modifier;",
        "textStyle",
        "Landroidx/compose/ui/text/TextStyle;",
        "visualTransformation",
        "Landroidx/compose/ui/text/input/VisualTransformation;",
        "onTextLayout",
        "Landroidx/compose/ui/text/TextLayoutResult;",
        "interactionSource",
        "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
        "cursorBrush",
        "Landroidx/compose/ui/graphics/Brush;",
        "softWrap",
        "",
        "maxLines",
        "",
        "imeOptions",
        "Landroidx/compose/ui/text/input/ImeOptions;",
        "keyboardActions",
        "Landroidx/compose/foundation/text/KeyboardActions;",
        "enabled",
        "readOnly",
        "decorationBox",
        "Lkotlin/Function0;",
        "Landroidx/compose/runtime/Composable;",
        "Lkotlin/ParameterName;",
        "name",
        "innerTextField",
        "(Landroidx/compose/ui/text/input/TextFieldValue;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/input/VisualTransformation;Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/graphics/Brush;ZILandroidx/compose/ui/text/input/ImeOptions;Landroidx/compose/foundation/text/KeyboardActions;ZZLkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;III)V",
        "CoreTextFieldRootBox",
        "manager",
        "Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;",
        "content",
        "(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V",
        "SelectionToolbarAndHandles",
        "show",
        "(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;ZLandroidx/compose/runtime/Composer;I)V",
        "TextFieldCursorHandle",
        "(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Landroidx/compose/runtime/Composer;I)V",
        "notifyTextInputServiceOnFocusChange",
        "textInputService",
        "Landroidx/compose/ui/text/input/TextInputService;",
        "state",
        "Landroidx/compose/foundation/text/TextFieldState;",
        "onBlur",
        "tapToFocus",
        "focusRequester",
        "Landroidx/compose/ui/focus/FocusRequester;",
        "allowKeyboard",
        "bringSelectionEndIntoView",
        "Landroidx/compose/foundation/relocation/BringIntoViewRequester;",
        "textDelegate",
        "Landroidx/compose/foundation/text/TextDelegate;",
        "textLayoutResult",
        "offsetMapping",
        "Landroidx/compose/ui/text/input/OffsetMapping;",
        "(Landroidx/compose/foundation/relocation/BringIntoViewRequester;Landroidx/compose/ui/text/input/TextFieldValue;Landroidx/compose/foundation/text/TextDelegate;Landroidx/compose/ui/text/TextLayoutResult;Landroidx/compose/ui/text/input/OffsetMapping;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "previewKeyEventToDeselectOnBack",
        "foundation_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final CoreTextField(Landroidx/compose/ui/text/input/TextFieldValue;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/input/VisualTransformation;Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/graphics/Brush;ZILandroidx/compose/ui/text/input/ImeOptions;Landroidx/compose/foundation/text/KeyboardActions;ZZLkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;III)V
    .locals 44
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/text/input/TextFieldValue;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/text/input/TextFieldValue;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/ui/Modifier;",
            "Landroidx/compose/ui/text/TextStyle;",
            "Landroidx/compose/ui/text/input/VisualTransformation;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/text/TextLayoutResult;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
            "Landroidx/compose/ui/graphics/Brush;",
            "ZI",
            "Landroidx/compose/ui/text/input/ImeOptions;",
            "Landroidx/compose/foundation/text/KeyboardActions;",
            "ZZ",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "III)V"
        }
    .end annotation

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move/from16 v13, p16

    move/from16 v12, p17

    move/from16 v11, p18

    const-string/jumbo v0, "value"

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onValueChange"

    invoke-static {v14, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x683fead

    move-object/from16 v1, p15

    .line 194
    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v10

    const-string v1, "C(CoreTextField)P(13,9,7,12,14,8,4!1,11,6,3,5,2,10)199@11067L7,200@11128L7,201@11196L7,202@11261L7,210@11570L42,207@11477L135,213@11653L268,225@12226L21,226@12264L324,254@12987L26,257@13073L51,263@13376L7,264@13427L7,265@13484L7,269@13595L24,270@13653L37,492@21995L86,496@22087L515,542@23735L4354:CoreTextField.kt#423gt5"

    invoke-static {v10, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v1, v11, 0x1

    if-eqz v1, :cond_0

    or-int/lit8 v1, v13, 0x6

    goto :goto_1

    :cond_0
    and-int/lit8 v1, v13, 0xe

    if-nez v1, :cond_2

    invoke-interface {v10, v15}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x4

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    :goto_0
    or-int/2addr v1, v13

    goto :goto_1

    :cond_2
    move v1, v13

    :goto_1
    and-int/lit8 v4, v11, 0x2

    if-eqz v4, :cond_3

    or-int/lit8 v1, v1, 0x30

    goto :goto_3

    :cond_3
    and-int/lit8 v4, v13, 0x70

    if-nez v4, :cond_5

    invoke-interface {v10, v14}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/16 v4, 0x20

    goto :goto_2

    :cond_4
    const/16 v4, 0x10

    :goto_2
    or-int/2addr v1, v4

    :cond_5
    :goto_3
    and-int/lit8 v4, v11, 0x4

    if-eqz v4, :cond_6

    or-int/lit16 v1, v1, 0x180

    goto :goto_5

    :cond_6
    and-int/lit16 v9, v13, 0x380

    if-nez v9, :cond_8

    move-object/from16 v9, p2

    invoke-interface {v10, v9}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_7

    const/16 v16, 0x100

    goto :goto_4

    :cond_7
    const/16 v16, 0x80

    :goto_4
    or-int v1, v1, v16

    goto :goto_6

    :cond_8
    :goto_5
    move-object/from16 v9, p2

    :goto_6
    and-int/lit8 v16, v11, 0x8

    const/16 v17, 0x800

    const/16 v18, 0x400

    if-eqz v16, :cond_9

    or-int/lit16 v1, v1, 0xc00

    goto :goto_8

    :cond_9
    and-int/lit16 v2, v13, 0x1c00

    if-nez v2, :cond_b

    move-object/from16 v2, p3

    invoke-interface {v10, v2}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_a

    move/from16 v19, v17

    goto :goto_7

    :cond_a
    move/from16 v19, v18

    :goto_7
    or-int v1, v1, v19

    goto :goto_9

    :cond_b
    :goto_8
    move-object/from16 v2, p3

    :goto_9
    and-int/lit8 v19, v11, 0x10

    const/16 v20, 0x4000

    const/16 v21, 0x2000

    if-eqz v19, :cond_c

    or-int/lit16 v1, v1, 0x6000

    move-object/from16 v5, p4

    goto :goto_b

    :cond_c
    const v22, 0xe000

    and-int v22, v13, v22

    move-object/from16 v5, p4

    if-nez v22, :cond_e

    invoke-interface {v10, v5}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_d

    move/from16 v23, v20

    goto :goto_a

    :cond_d
    move/from16 v23, v21

    :goto_a
    or-int v1, v1, v23

    :cond_e
    :goto_b
    and-int/lit8 v23, v11, 0x20

    if-eqz v23, :cond_f

    const/high16 v24, 0x30000

    or-int v1, v1, v24

    move-object/from16 v6, p5

    goto :goto_d

    :cond_f
    const/high16 v24, 0x70000

    and-int v24, v13, v24

    move-object/from16 v6, p5

    if-nez v24, :cond_11

    invoke-interface {v10, v6}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_10

    const/high16 v25, 0x20000

    goto :goto_c

    :cond_10
    const/high16 v25, 0x10000

    :goto_c
    or-int v1, v1, v25

    :cond_11
    :goto_d
    and-int/lit8 v25, v11, 0x40

    if-eqz v25, :cond_12

    const/high16 v26, 0x180000

    or-int v1, v1, v26

    move-object/from16 v7, p6

    goto :goto_f

    :cond_12
    const/high16 v26, 0x380000

    and-int v26, v13, v26

    move-object/from16 v7, p6

    if-nez v26, :cond_14

    invoke-interface {v10, v7}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_13

    const/high16 v27, 0x100000

    goto :goto_e

    :cond_13
    const/high16 v27, 0x80000

    :goto_e
    or-int v1, v1, v27

    :cond_14
    :goto_f
    const/high16 v27, 0x1c00000

    and-int v27, v13, v27

    if-nez v27, :cond_17

    and-int/lit16 v8, v11, 0x80

    if-nez v8, :cond_15

    move-object/from16 v8, p7

    invoke-interface {v10, v8}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_16

    const/high16 v28, 0x800000

    goto :goto_10

    :cond_15
    move-object/from16 v8, p7

    :cond_16
    const/high16 v28, 0x400000

    :goto_10
    or-int v1, v1, v28

    goto :goto_11

    :cond_17
    move-object/from16 v8, p7

    :goto_11
    and-int/lit16 v3, v11, 0x100

    if-eqz v3, :cond_18

    const/high16 v29, 0x6000000

    or-int v1, v1, v29

    move/from16 v0, p8

    goto :goto_13

    :cond_18
    const/high16 v29, 0xe000000

    and-int v29, v13, v29

    move/from16 v0, p8

    if-nez v29, :cond_1a

    invoke-interface {v10, v0}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v30

    if-eqz v30, :cond_19

    const/high16 v30, 0x4000000

    goto :goto_12

    :cond_19
    const/high16 v30, 0x2000000

    :goto_12
    or-int v1, v1, v30

    :cond_1a
    :goto_13
    and-int/lit16 v0, v11, 0x200

    if-eqz v0, :cond_1b

    const/high16 v30, 0x30000000

    or-int v1, v1, v30

    move/from16 v2, p9

    goto :goto_15

    :cond_1b
    const/high16 v30, 0x70000000

    and-int v30, v13, v30

    move/from16 v2, p9

    if-nez v30, :cond_1d

    invoke-interface {v10, v2}, Landroidx/compose/runtime/Composer;->changed(I)Z

    move-result v30

    if-eqz v30, :cond_1c

    const/high16 v30, 0x20000000

    goto :goto_14

    :cond_1c
    const/high16 v30, 0x10000000

    :goto_14
    or-int v1, v1, v30

    :cond_1d
    :goto_15
    and-int/lit8 v30, v12, 0xe

    if-nez v30, :cond_20

    and-int/lit16 v2, v11, 0x400

    if-nez v2, :cond_1e

    move-object/from16 v2, p10

    invoke-interface {v10, v2}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_1f

    const/16 v30, 0x4

    goto :goto_16

    :cond_1e
    move-object/from16 v2, p10

    :cond_1f
    const/16 v30, 0x2

    :goto_16
    or-int v30, v12, v30

    goto :goto_17

    :cond_20
    move-object/from16 v2, p10

    move/from16 v30, v12

    :goto_17
    and-int/lit16 v2, v11, 0x800

    if-eqz v2, :cond_21

    or-int/lit8 v30, v30, 0x30

    goto :goto_19

    :cond_21
    and-int/lit8 v31, v12, 0x70

    move-object/from16 v5, p11

    if-nez v31, :cond_23

    invoke-interface {v10, v5}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_22

    const/16 v22, 0x20

    goto :goto_18

    :cond_22
    const/16 v22, 0x10

    :goto_18
    or-int v30, v30, v22

    :cond_23
    :goto_19
    move/from16 v5, v30

    and-int/lit16 v6, v11, 0x1000

    if-eqz v6, :cond_24

    or-int/lit16 v5, v5, 0x180

    goto :goto_1b

    :cond_24
    and-int/lit16 v7, v12, 0x380

    if-nez v7, :cond_26

    move/from16 v7, p12

    invoke-interface {v10, v7}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v22

    if-eqz v22, :cond_25

    const/16 v26, 0x100

    goto :goto_1a

    :cond_25
    const/16 v26, 0x80

    :goto_1a
    or-int v5, v5, v26

    goto :goto_1c

    :cond_26
    :goto_1b
    move/from16 v7, p12

    :goto_1c
    and-int/lit16 v7, v11, 0x2000

    if-eqz v7, :cond_27

    or-int/lit16 v5, v5, 0xc00

    goto :goto_1e

    :cond_27
    and-int/lit16 v8, v12, 0x1c00

    if-nez v8, :cond_29

    move/from16 v8, p13

    invoke-interface {v10, v8}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v22

    if-eqz v22, :cond_28

    goto :goto_1d

    :cond_28
    move/from16 v17, v18

    :goto_1d
    or-int v5, v5, v17

    goto :goto_1f

    :cond_29
    :goto_1e
    move/from16 v8, p13

    :goto_1f
    and-int/lit16 v8, v11, 0x4000

    if-eqz v8, :cond_2a

    or-int/lit16 v5, v5, 0x6000

    move-object/from16 v9, p14

    goto :goto_21

    :cond_2a
    const v17, 0xe000

    and-int v17, v12, v17

    move-object/from16 v9, p14

    if-nez v17, :cond_2c

    invoke-interface {v10, v9}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_2b

    goto :goto_20

    :cond_2b
    move/from16 v20, v21

    :goto_20
    or-int v5, v5, v20

    :cond_2c
    :goto_21
    const v17, 0x5b6db6db

    and-int v9, v1, v17

    const v12, 0x12492492

    if-ne v9, v12, :cond_2e

    const v9, 0xb6db

    and-int/2addr v9, v5

    const/16 v12, 0x2492

    if-ne v9, v12, :cond_2e

    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v9

    if-nez v9, :cond_2d

    goto :goto_22

    .line 635
    :cond_2d
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move/from16 v13, p12

    move/from16 v14, p13

    move-object/from16 v15, p14

    move-object v1, v10

    move/from16 v10, p9

    goto/16 :goto_3e

    .line 194
    :cond_2e
    :goto_22
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->startDefaults()V

    and-int/lit8 v9, v13, 0x1

    if-eqz v9, :cond_32

    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    move-result v9

    if-eqz v9, :cond_2f

    goto :goto_23

    .line 191
    :cond_2f
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    and-int/lit16 v0, v11, 0x80

    if-eqz v0, :cond_30

    const v0, -0x1c00001

    and-int/2addr v1, v0

    :cond_30
    and-int/lit16 v0, v11, 0x400

    if-eqz v0, :cond_31

    and-int/lit8 v0, v5, -0xf

    move-object/from16 v14, p2

    move-object/from16 v19, p3

    move-object/from16 v13, p4

    move-object/from16 v21, p5

    move-object/from16 v12, p6

    move-object/from16 v22, p7

    move/from16 v23, p8

    move/from16 v9, p9

    move-object/from16 v8, p10

    move-object/from16 v24, p11

    move/from16 v7, p12

    move/from16 v25, p13

    move-object/from16 v26, p14

    move v2, v0

    goto/16 :goto_31

    :cond_31
    move-object/from16 v14, p2

    move-object/from16 v19, p3

    move-object/from16 v13, p4

    move-object/from16 v21, p5

    move-object/from16 v12, p6

    move-object/from16 v22, p7

    move/from16 v23, p8

    move/from16 v9, p9

    move-object/from16 v8, p10

    move-object/from16 v24, p11

    move/from16 v7, p12

    move/from16 v25, p13

    move-object/from16 v26, p14

    move v2, v5

    goto/16 :goto_31

    :cond_32
    :goto_23
    if-eqz v4, :cond_33

    .line 180
    sget-object v4, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v4, Landroidx/compose/ui/Modifier;

    goto :goto_24

    :cond_33
    move-object/from16 v4, p2

    :goto_24
    if-eqz v16, :cond_34

    .line 181
    sget-object v9, Landroidx/compose/ui/text/TextStyle;->Companion:Landroidx/compose/ui/text/TextStyle$Companion;

    invoke-virtual {v9}, Landroidx/compose/ui/text/TextStyle$Companion;->getDefault()Landroidx/compose/ui/text/TextStyle;

    move-result-object v9

    goto :goto_25

    :cond_34
    move-object/from16 v9, p3

    :goto_25
    if-eqz v19, :cond_35

    .line 182
    sget-object v16, Landroidx/compose/ui/text/input/VisualTransformation;->Companion:Landroidx/compose/ui/text/input/VisualTransformation$Companion;

    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/text/input/VisualTransformation$Companion;->getNone()Landroidx/compose/ui/text/input/VisualTransformation;

    move-result-object v16

    goto :goto_26

    :cond_35
    move-object/from16 v16, p4

    :goto_26
    if-eqz v23, :cond_36

    .line 183
    sget-object v18, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$1;->INSTANCE:Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$1;

    check-cast v18, Lkotlin/jvm/functions/Function1;

    goto :goto_27

    :cond_36
    move-object/from16 v18, p5

    :goto_27
    if-eqz v25, :cond_37

    const/16 v19, 0x0

    goto :goto_28

    :cond_37
    move-object/from16 v19, p6

    :goto_28
    and-int/lit16 v12, v11, 0x80

    if-eqz v12, :cond_38

    .line 185
    new-instance v12, Landroidx/compose/ui/graphics/SolidColor;

    sget-object v21, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual/range {v21 .. v21}, Landroidx/compose/ui/graphics/Color$Companion;->getUnspecified-0d7_KjU()J

    move-result-wide v13

    move-object/from16 p2, v4

    const/4 v4, 0x0

    invoke-direct {v12, v13, v14, v4}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v4, v12

    check-cast v4, Landroidx/compose/ui/graphics/Brush;

    const v12, -0x1c00001

    and-int/2addr v1, v12

    goto :goto_29

    :cond_38
    move-object/from16 p2, v4

    move-object/from16 v4, p7

    :goto_29
    if-eqz v3, :cond_39

    const/4 v3, 0x1

    goto :goto_2a

    :cond_39
    move/from16 v3, p8

    :goto_2a
    if-eqz v0, :cond_3a

    const v0, 0x7fffffff

    goto :goto_2b

    :cond_3a
    move/from16 v0, p9

    :goto_2b
    and-int/lit16 v12, v11, 0x400

    if-eqz v12, :cond_3b

    .line 188
    sget-object v12, Landroidx/compose/ui/text/input/ImeOptions;->Companion:Landroidx/compose/ui/text/input/ImeOptions$Companion;

    invoke-virtual {v12}, Landroidx/compose/ui/text/input/ImeOptions$Companion;->getDefault()Landroidx/compose/ui/text/input/ImeOptions;

    move-result-object v12

    and-int/lit8 v5, v5, -0xf

    goto :goto_2c

    :cond_3b
    move-object/from16 v12, p10

    :goto_2c
    if-eqz v2, :cond_3c

    .line 189
    sget-object v2, Landroidx/compose/foundation/text/KeyboardActions;->Companion:Landroidx/compose/foundation/text/KeyboardActions$Companion;

    invoke-virtual {v2}, Landroidx/compose/foundation/text/KeyboardActions$Companion;->getDefault()Landroidx/compose/foundation/text/KeyboardActions;

    move-result-object v2

    goto :goto_2d

    :cond_3c
    move-object/from16 v2, p11

    :goto_2d
    if-eqz v6, :cond_3d

    const/4 v6, 0x1

    goto :goto_2e

    :cond_3d
    move/from16 v6, p12

    :goto_2e
    if-eqz v7, :cond_3e

    const/4 v7, 0x0

    goto :goto_2f

    :cond_3e
    move/from16 v7, p13

    :goto_2f
    if-eqz v8, :cond_3f

    .line 191
    sget-object v8, Landroidx/compose/foundation/text/ComposableSingletons$CoreTextFieldKt;->INSTANCE:Landroidx/compose/foundation/text/ComposableSingletons$CoreTextFieldKt;

    invoke-virtual {v8}, Landroidx/compose/foundation/text/ComposableSingletons$CoreTextFieldKt;->getLambda-1$foundation_release()Lkotlin/jvm/functions/Function3;

    move-result-object v8

    move-object/from16 v14, p2

    move-object/from16 v24, v2

    move/from16 v23, v3

    move-object/from16 v22, v4

    move v2, v5

    move/from16 v25, v7

    move-object/from16 v26, v8

    goto :goto_30

    :cond_3f
    move-object/from16 v14, p2

    move-object/from16 v26, p14

    move-object/from16 v24, v2

    move/from16 v23, v3

    move-object/from16 v22, v4

    move v2, v5

    move/from16 v25, v7

    :goto_30
    move-object v8, v12

    move-object/from16 v13, v16

    move-object/from16 v21, v18

    move-object/from16 v12, v19

    move v7, v6

    move-object/from16 v19, v9

    move v9, v0

    :goto_31
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->endDefaults()V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_40

    const-string v0, "androidx.compose.foundation.text.CoreTextField (CoreTextField.kt:176)"

    const v3, 0x683fead

    .line 194
    invoke-static {v3, v1, v2, v0}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 195
    :cond_40
    new-instance v0, Landroidx/compose/ui/focus/FocusRequester;

    invoke-direct {v0}, Landroidx/compose/ui/focus/FocusRequester;-><init>()V

    const v1, -0x3476f8d

    invoke-interface {v10, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v1, "198@11028L7"

    invoke-static {v10, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    const-string v1, "C:CompositionLocal.kt#9igjgp"

    const v3, 0x789c5f52

    if-eqz v7, :cond_42

    if-eqz v25, :cond_41

    goto :goto_32

    .line 199
    :cond_41
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalTextInputService()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v4

    check-cast v4, Landroidx/compose/runtime/CompositionLocal;

    .line 1032
    invoke-static {v10, v3, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v10, v4}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v10}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    check-cast v4, Landroidx/compose/ui/text/input/TextInputService;

    goto :goto_33

    :cond_42
    :goto_32
    const/4 v4, 0x0

    .line 199
    :goto_33
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 200
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalDensity()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v5

    check-cast v5, Landroidx/compose/runtime/CompositionLocal;

    .line 1033
    invoke-static {v10, v3, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v10, v5}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v10}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 200
    move-object/from16 v18, v5

    check-cast v18, Landroidx/compose/ui/unit/Density;

    .line 201
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalFontFamilyResolver()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v5

    check-cast v5, Landroidx/compose/runtime/CompositionLocal;

    .line 1034
    invoke-static {v10, v3, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v10, v5}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v10}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 201
    check-cast v5, Landroidx/compose/ui/text/font/FontFamily$Resolver;

    .line 202
    invoke-static {}, Landroidx/compose/foundation/text/selection/TextSelectionColorsKt;->getLocalTextSelectionColors()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v6

    check-cast v6, Landroidx/compose/runtime/CompositionLocal;

    .line 1035
    invoke-static {v10, v3, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v10, v6}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v10}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    check-cast v6, Landroidx/compose/foundation/text/selection/TextSelectionColors;

    .line 202
    invoke-virtual {v6}, Landroidx/compose/foundation/text/selection/TextSelectionColors;->getBackgroundColor-0d7_KjU()J

    move-result-wide v29

    .line 203
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalFocusManager()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v6

    check-cast v6, Landroidx/compose/runtime/CompositionLocal;

    .line 1036
    invoke-static {v10, v3, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v10, v6}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v10}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 203
    check-cast v6, Landroidx/compose/ui/focus/FocusManager;

    const/4 v3, 0x1

    if-ne v9, v3, :cond_43

    if-nez v23, :cond_43

    .line 206
    invoke-virtual {v8}, Landroidx/compose/ui/text/input/ImeOptions;->getSingleLine()Z

    move-result v3

    if-eqz v3, :cond_43

    .line 207
    sget-object v3, Landroidx/compose/foundation/gestures/Orientation;->Horizontal:Landroidx/compose/foundation/gestures/Orientation;

    goto :goto_34

    :cond_43
    sget-object v3, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    .line 209
    :goto_34
    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v16

    .line 210
    sget-object v27, Landroidx/compose/foundation/text/TextFieldScrollerPosition;->Companion:Landroidx/compose/foundation/text/TextFieldScrollerPosition$Companion;

    invoke-virtual/range {v27 .. v27}, Landroidx/compose/foundation/text/TextFieldScrollerPosition$Companion;->getSaver()Landroidx/compose/runtime/saveable/Saver;

    move-result-object v27

    const/16 v31, 0x0

    const v11, 0x44faf204

    .line 211
    invoke-interface {v10, v11}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v11, "C(remember)P(1):Composables.kt#9igjgp"

    invoke-static {v10, v11}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 1037
    invoke-interface {v10, v3}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v11

    move-object/from16 v32, v14

    .line 1038
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v14

    if-nez v11, :cond_44

    .line 1039
    sget-object v11, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v11}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v11

    if-ne v14, v11, :cond_45

    .line 211
    :cond_44
    new-instance v11, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$scrollerPosition$1$1;

    invoke-direct {v11, v3}, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$scrollerPosition$1$1;-><init>(Landroidx/compose/foundation/gestures/Orientation;)V

    move-object v14, v11

    check-cast v14, Lkotlin/jvm/functions/Function0;

    .line 1041
    invoke-interface {v10, v14}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 1037
    :cond_45
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    move-object v3, v14

    check-cast v3, Lkotlin/jvm/functions/Function0;

    const/16 v11, 0x48

    const/4 v14, 0x4

    move-object/from16 p2, v16

    move-object/from16 p3, v27

    move-object/from16 p4, v31

    move-object/from16 p5, v3

    move-object/from16 p6, v10

    move/from16 p7, v11

    move/from16 p8, v14

    .line 208
    invoke-static/range {p2 .. p8}, Landroidx/compose/runtime/saveable/RememberSaveableKt;->rememberSaveable([Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)Ljava/lang/Object;

    move-result-object v3

    move-object v11, v3

    check-cast v11, Landroidx/compose/foundation/text/TextFieldScrollerPosition;

    const v3, 0x1e7b2b64

    .line 214
    invoke-interface {v10, v3}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v3, "C(remember)P(1,2):Composables.kt#9igjgp"

    invoke-static {v10, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 1044
    invoke-interface {v10, v15}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v3

    invoke-interface {v10, v13}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v14

    or-int/2addr v3, v14

    .line 1046
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v14

    if-nez v3, :cond_47

    .line 1047
    sget-object v3, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v3}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v3

    if-ne v14, v3, :cond_46

    goto :goto_35

    :cond_46
    move-object/from16 v27, v11

    move-object/from16 v16, v12

    goto :goto_38

    .line 215
    :cond_47
    :goto_35
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/text/input/TextFieldValue;->getAnnotatedString()Landroidx/compose/ui/text/AnnotatedString;

    move-result-object v3

    invoke-static {v13, v3}, Landroidx/compose/foundation/text/ValidatingOffsetMappingKt;->filterWithValidation(Landroidx/compose/ui/text/input/VisualTransformation;Landroidx/compose/ui/text/AnnotatedString;)Landroidx/compose/ui/text/input/TransformedText;

    move-result-object v3

    .line 216
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/text/input/TextFieldValue;->getComposition-MzsxiRA()Landroidx/compose/ui/text/TextRange;

    move-result-object v14

    move-object/from16 v27, v11

    move-object/from16 v16, v12

    if-eqz v14, :cond_49

    invoke-virtual {v14}, Landroidx/compose/ui/text/TextRange;->unbox-impl()J

    move-result-wide v11

    .line 217
    sget-object v14, Landroidx/compose/foundation/text/TextFieldDelegate;->Companion:Landroidx/compose/foundation/text/TextFieldDelegate$Companion;

    invoke-virtual {v14, v11, v12, v3}, Landroidx/compose/foundation/text/TextFieldDelegate$Companion;->applyCompositionDecoration-72CqOWE(JLandroidx/compose/ui/text/input/TransformedText;)Landroidx/compose/ui/text/input/TransformedText;

    move-result-object v11

    if-nez v11, :cond_48

    goto :goto_36

    :cond_48
    move-object v14, v11

    goto :goto_37

    :cond_49
    :goto_36
    move-object v14, v3

    .line 1049
    :goto_37
    invoke-interface {v10, v14}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 1045
    :goto_38
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 214
    move-object v3, v14

    check-cast v3, Landroidx/compose/ui/text/input/TransformedText;

    .line 221
    invoke-virtual {v3}, Landroidx/compose/ui/text/input/TransformedText;->getText()Landroidx/compose/ui/text/AnnotatedString;

    move-result-object v11

    .line 222
    invoke-virtual {v3}, Landroidx/compose/ui/text/input/TransformedText;->getOffsetMapping()Landroidx/compose/ui/text/input/OffsetMapping;

    move-result-object v12

    move/from16 v31, v9

    const/4 v14, 0x0

    .line 226
    invoke-static {v10, v14}, Landroidx/compose/runtime/ComposablesKt;->getCurrentRecomposeScope(Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/RecomposeScope;

    move-result-object v9

    const v14, -0x1d58f75c

    .line 227
    invoke-interface {v10, v14}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v14, "C(remember):Composables.kt#9igjgp"

    invoke-static {v10, v14}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v33, v2

    .line 1053
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v2

    .line 1054
    sget-object v34, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move-object/from16 v35, v3

    invoke-virtual/range {v34 .. v34}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v3

    if-ne v2, v3, :cond_4a

    .line 228
    new-instance v2, Landroidx/compose/foundation/text/TextFieldState;

    .line 229
    new-instance v3, Landroidx/compose/foundation/text/TextDelegate;

    const/16 v34, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x94

    const/16 v39, 0x0

    move-object/from16 p2, v3

    move-object/from16 p3, v11

    move-object/from16 p4, v19

    move/from16 p5, v34

    move/from16 p6, v23

    move/from16 p7, v36

    move-object/from16 p8, v18

    move-object/from16 p9, v5

    move-object/from16 p10, v37

    move/from16 p11, v38

    move-object/from16 p12, v39

    invoke-direct/range {p2 .. p12}, Landroidx/compose/foundation/text/TextDelegate;-><init>(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/text/TextStyle;IZILandroidx/compose/ui/unit/Density;Landroidx/compose/ui/text/font/FontFamily$Resolver;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 228
    invoke-direct {v2, v3, v9}, Landroidx/compose/foundation/text/TextFieldState;-><init>(Landroidx/compose/foundation/text/TextDelegate;Landroidx/compose/runtime/RecomposeScope;)V

    .line 1056
    invoke-interface {v10, v2}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 1052
    :cond_4a
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 227
    move-object v3, v2

    check-cast v3, Landroidx/compose/foundation/text/TextFieldState;

    .line 240
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/text/input/TextFieldValue;->getAnnotatedString()Landroidx/compose/ui/text/AnnotatedString;

    move-result-object v2

    move-object/from16 p2, v3

    move-object/from16 p3, v2

    move-object/from16 p4, v11

    move-object/from16 p5, v19

    move/from16 p6, v23

    move-object/from16 p7, v18

    move-object/from16 p8, v5

    move-object/from16 p9, p1

    move-object/from16 p10, v24

    move-object/from16 p11, v6

    move-wide/from16 p12, v29

    .line 239
    invoke-virtual/range {p2 .. p13}, Landroidx/compose/foundation/text/TextFieldState;->update-fnh65Uc(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/text/TextStyle;ZLandroidx/compose/ui/unit/Density;Landroidx/compose/ui/text/font/FontFamily$Resolver;Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/text/KeyboardActions;Landroidx/compose/ui/focus/FocusManager;J)V

    .line 253
    invoke-virtual {v3}, Landroidx/compose/foundation/text/TextFieldState;->getProcessor()Landroidx/compose/ui/text/input/EditProcessor;

    move-result-object v2

    invoke-virtual {v3}, Landroidx/compose/foundation/text/TextFieldState;->getInputSession()Landroidx/compose/ui/text/input/TextInputSession;

    move-result-object v5

    invoke-virtual {v2, v15, v5}, Landroidx/compose/ui/text/input/EditProcessor;->reset(Landroidx/compose/ui/text/input/TextFieldValue;Landroidx/compose/ui/text/input/TextInputSession;)V

    const v2, -0x1d58f75c

    .line 255
    invoke-interface {v10, v2}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {v10, v14}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 1060
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v2

    .line 1061
    sget-object v5, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v5}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v5

    if-ne v2, v5, :cond_4b

    .line 255
    new-instance v2, Landroidx/compose/foundation/text/UndoManager;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v9, 0x1

    invoke-direct {v2, v6, v9, v5}, Landroidx/compose/foundation/text/UndoManager;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 1063
    invoke-interface {v10, v2}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 1059
    :cond_4b
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 255
    check-cast v2, Landroidx/compose/foundation/text/UndoManager;

    const-wide/16 v5, 0x0

    const/4 v9, 0x2

    const/4 v11, 0x0

    move-object/from16 p2, v2

    move-object/from16 p3, p0

    move-wide/from16 p4, v5

    move/from16 p6, v9

    move-object/from16 p7, v11

    .line 256
    invoke-static/range {p2 .. p7}, Landroidx/compose/foundation/text/UndoManager;->snapshotIfNeeded$default(Landroidx/compose/foundation/text/UndoManager;Landroidx/compose/ui/text/input/TextFieldValue;JILjava/lang/Object;)V

    const v5, -0x1d58f75c

    .line 258
    invoke-interface {v10, v5}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {v10, v14}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 1067
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v5

    .line 1068
    sget-object v6, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v6}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v6

    if-ne v5, v6, :cond_4c

    .line 258
    new-instance v5, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    invoke-direct {v5, v2}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;-><init>(Landroidx/compose/foundation/text/UndoManager;)V

    .line 1070
    invoke-interface {v10, v5}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 1066
    :cond_4c
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 258
    move-object v11, v5

    check-cast v11, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    .line 259
    invoke-virtual {v11, v12}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->setOffsetMapping$foundation_release(Landroidx/compose/ui/text/input/OffsetMapping;)V

    .line 260
    invoke-virtual {v11, v13}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->setVisualTransformation$foundation_release(Landroidx/compose/ui/text/input/VisualTransformation;)V

    .line 261
    invoke-virtual {v3}, Landroidx/compose/foundation/text/TextFieldState;->getOnValueChange()Lkotlin/jvm/functions/Function1;

    move-result-object v5

    invoke-virtual {v11, v5}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->setOnValueChange$foundation_release(Lkotlin/jvm/functions/Function1;)V

    .line 262
    invoke-virtual {v11, v3}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->setState$foundation_release(Landroidx/compose/foundation/text/TextFieldState;)V

    .line 263
    invoke-virtual {v11, v15}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->setValue$foundation_release(Landroidx/compose/ui/text/input/TextFieldValue;)V

    .line 264
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalClipboardManager()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v5

    check-cast v5, Landroidx/compose/runtime/CompositionLocal;

    const v6, 0x789c5f52

    .line 1073
    invoke-static {v10, v6, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v10, v5}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v10}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    check-cast v5, Landroidx/compose/ui/platform/ClipboardManager;

    .line 264
    invoke-virtual {v11, v5}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->setClipboardManager$foundation_release(Landroidx/compose/ui/platform/ClipboardManager;)V

    .line 265
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalTextToolbar()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v5

    check-cast v5, Landroidx/compose/runtime/CompositionLocal;

    .line 1074
    invoke-static {v10, v6, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v10, v5}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v10}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    check-cast v5, Landroidx/compose/ui/platform/TextToolbar;

    .line 265
    invoke-virtual {v11, v5}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->setTextToolbar(Landroidx/compose/ui/platform/TextToolbar;)V

    .line 266
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalHapticFeedback()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v5

    check-cast v5, Landroidx/compose/runtime/CompositionLocal;

    .line 1075
    invoke-static {v10, v6, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v10, v5}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v10}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    check-cast v1, Landroidx/compose/ui/hapticfeedback/HapticFeedback;

    .line 266
    invoke-virtual {v11, v1}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->setHapticFeedBack(Landroidx/compose/ui/hapticfeedback/HapticFeedback;)V

    .line 267
    invoke-virtual {v11, v0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->setFocusRequester(Landroidx/compose/ui/focus/FocusRequester;)V

    xor-int/lit8 v1, v25, 0x1

    .line 268
    invoke-virtual {v11, v1}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->setEditable(Z)V

    const v1, 0x2e20b340

    .line 270
    invoke-interface {v10, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v1, "C(rememberCoroutineScope)476@19869L144:Effects.kt#9igjgp"

    invoke-static {v10, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    const v1, -0x1d58f75c

    .line 1079
    invoke-interface {v10, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {v10, v14}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 1081
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v1

    .line 1082
    sget-object v5, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v5}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v5

    if-ne v1, v5, :cond_4d

    .line 1086
    sget-object v1, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    check-cast v1, Lkotlin/coroutines/CoroutineContext;

    invoke-static {v1, v10}, Landroidx/compose/runtime/EffectsKt;->createCompositionCoroutineScope(Lkotlin/coroutines/CoroutineContext;Landroidx/compose/runtime/Composer;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    .line 1084
    new-instance v5, Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;

    invoke-direct {v5, v1}, Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;-><init>(Lkotlinx/coroutines/CoroutineScope;)V

    .line 1087
    invoke-interface {v10, v5}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    move-object v1, v5

    .line 1080
    :cond_4d
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 1079
    check-cast v1, Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;

    .line 1090
    invoke-virtual {v1}, Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;->getCoroutineScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    const v5, -0x1d58f75c

    .line 271
    invoke-interface {v10, v5}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {v10, v14}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 1092
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v5

    .line 1093
    sget-object v6, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v6}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v6

    if-ne v5, v6, :cond_4e

    .line 271
    invoke-static {}, Landroidx/compose/foundation/relocation/BringIntoViewRequesterKt;->BringIntoViewRequester()Landroidx/compose/foundation/relocation/BringIntoViewRequester;

    move-result-object v5

    .line 1095
    invoke-interface {v10, v5}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 1091
    :cond_4e
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 271
    move-object v14, v5

    check-cast v14, Landroidx/compose/foundation/relocation/BringIntoViewRequester;

    .line 274
    sget-object v5, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v5, Landroidx/compose/ui/Modifier;

    new-instance v6, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$focusModifier$1;

    move-object/from16 p2, v6

    move-object/from16 p3, v3

    move-object/from16 p4, v4

    move-object/from16 p5, p0

    move-object/from16 p6, v8

    move-object/from16 p7, v11

    move-object/from16 p8, v1

    move-object/from16 p9, v14

    move-object/from16 p10, v12

    invoke-direct/range {p2 .. p10}, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$focusModifier$1;-><init>(Landroidx/compose/foundation/text/TextFieldState;Landroidx/compose/ui/text/input/TextInputService;Landroidx/compose/ui/text/input/TextFieldValue;Landroidx/compose/ui/text/input/ImeOptions;Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/foundation/relocation/BringIntoViewRequester;Landroidx/compose/ui/text/input/OffsetMapping;)V

    check-cast v6, Lkotlin/jvm/functions/Function1;

    move-object/from16 v9, v16

    invoke-static {v5, v7, v0, v9, v6}, Landroidx/compose/foundation/text/TextFieldGestureModifiersKt;->textFieldFocusModifier(Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/focus/FocusRequester;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    const v5, -0x3475e07

    invoke-interface {v10, v5}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v5, "318@15664L163"

    invoke-static {v10, v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    const/16 v5, 0x8

    if-eqz v7, :cond_4f

    if-nez v25, :cond_4f

    .line 319
    new-instance v6, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$2;

    invoke-direct {v6, v3}, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$2;-><init>(Landroidx/compose/foundation/text/TextFieldState;)V

    check-cast v6, Lkotlin/jvm/functions/Function1;

    invoke-static {v3, v6, v10, v5}, Landroidx/compose/runtime/EffectsKt;->DisposableEffect(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    :cond_4f
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 328
    invoke-static {}, Landroidx/compose/foundation/text/TouchMode_androidKt;->isInTouchMode()Z

    move-result v6

    if-eqz v6, :cond_50

    .line 330
    sget-object v6, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v6, Landroidx/compose/ui/Modifier;

    invoke-virtual {v11}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->getTouchSelectionObserver$foundation_release()Landroidx/compose/foundation/text/TextDragObserver;

    move-result-object v5

    invoke-static {v6, v5, v7}, Landroidx/compose/foundation/text/TextFieldGestureModifiersKt;->longPressDragGestureFilter(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/text/TextDragObserver;Z)Landroidx/compose/ui/Modifier;

    move-result-object v5

    .line 331
    sget-object v6, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v6, Landroidx/compose/ui/Modifier;

    .line 332
    new-instance v16, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$pointerModifier$1;

    move-object/from16 p2, v16

    move-object/from16 p3, v3

    move-object/from16 p4, v0

    move/from16 p5, v25

    move-object/from16 p6, v11

    move-object/from16 p7, v12

    invoke-direct/range {p2 .. p7}, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$pointerModifier$1;-><init>(Landroidx/compose/foundation/text/TextFieldState;Landroidx/compose/ui/focus/FocusRequester;ZLandroidx/compose/foundation/text/selection/TextFieldSelectionManager;Landroidx/compose/ui/text/input/OffsetMapping;)V

    move-object/from16 p14, v14

    move-object/from16 v14, v16

    check-cast v14, Lkotlin/jvm/functions/Function1;

    invoke-static {v6, v9, v7, v14}, Landroidx/compose/foundation/text/TextFieldPressGestureFilterKt;->tapPressTextFieldModifier(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/interaction/MutableInteractionSource;ZLkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v6

    .line 354
    invoke-interface {v6, v5}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v5

    move-object/from16 p15, v1

    move-object/from16 v16, v9

    const/4 v1, 0x0

    goto :goto_39

    :cond_50
    move-object/from16 p14, v14

    .line 356
    sget-object v5, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v5, Landroidx/compose/ui/Modifier;

    .line 358
    invoke-virtual {v11}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->getMouseSelectionObserver$foundation_release()Landroidx/compose/foundation/text/selection/MouseSelectionObserver;

    move-result-object v6

    .line 357
    invoke-static {v5, v6, v7}, Landroidx/compose/foundation/text/TextFieldGestureModifiersKt;->mouseDragGestureDetector(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/text/selection/MouseSelectionObserver;Z)Landroidx/compose/ui/Modifier;

    move-result-object v5

    .line 361
    invoke-static {}, Landroidx/compose/foundation/text/TextPointerIcon_androidKt;->getTextPointerIcon()Landroidx/compose/ui/input/pointer/PointerIcon;

    move-result-object v6

    move-object/from16 p15, v1

    move-object/from16 v16, v9

    const/4 v1, 0x0

    const/4 v9, 0x0

    const/4 v14, 0x2

    invoke-static {v5, v6, v1, v14, v9}, Landroidx/compose/ui/input/pointer/PointerIconKt;->pointerHoverIcon$default(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/input/pointer/PointerIcon;ZILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v5

    .line 364
    :goto_39
    sget-object v6, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v6, Landroidx/compose/ui/Modifier;

    new-instance v9, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$drawModifier$1;

    invoke-direct {v9, v3, v15, v12}, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$drawModifier$1;-><init>(Landroidx/compose/foundation/text/TextFieldState;Landroidx/compose/ui/text/input/TextFieldValue;Landroidx/compose/ui/text/input/OffsetMapping;)V

    check-cast v9, Lkotlin/jvm/functions/Function1;

    invoke-static {v6, v9}, Landroidx/compose/ui/draw/DrawModifierKt;->drawBehind(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v14

    .line 378
    sget-object v6, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v6, Landroidx/compose/ui/Modifier;

    new-instance v9, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$onPositionedModifier$1;

    invoke-direct {v9, v3, v7, v11}, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$onPositionedModifier$1;-><init>(Landroidx/compose/foundation/text/TextFieldState;ZLandroidx/compose/foundation/text/selection/TextFieldSelectionManager;)V

    check-cast v9, Lkotlin/jvm/functions/Function1;

    invoke-static {v6, v9}, Landroidx/compose/ui/layout/OnGloballyPositionedModifierKt;->onGloballyPositioned(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v17

    .line 399
    instance-of v6, v13, Landroidx/compose/ui/text/input/PasswordVisualTransformation;

    .line 400
    sget-object v9, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v9, Landroidx/compose/ui/Modifier;

    new-instance v28, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$semanticsModifier$1;

    move-object/from16 p2, v28

    move-object/from16 p3, v8

    move-object/from16 p4, v35

    move-object/from16 p5, p0

    move/from16 p6, v7

    move/from16 p7, v6

    move/from16 p8, v25

    move-object/from16 p9, v3

    move-object/from16 p10, v12

    move-object/from16 p11, v11

    move-object/from16 p12, v0

    invoke-direct/range {p2 .. p12}, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$semanticsModifier$1;-><init>(Landroidx/compose/ui/text/input/ImeOptions;Landroidx/compose/ui/text/input/TransformedText;Landroidx/compose/ui/text/input/TextFieldValue;ZZZLandroidx/compose/foundation/text/TextFieldState;Landroidx/compose/ui/text/input/OffsetMapping;Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Landroidx/compose/ui/focus/FocusRequester;)V

    move-object/from16 v0, v28

    check-cast v0, Lkotlin/jvm/functions/Function1;

    const/4 v6, 0x1

    invoke-static {v9, v6, v0}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->semantics(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    .line 491
    sget-object v6, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v6, Landroidx/compose/ui/Modifier;

    if-eqz v7, :cond_51

    if-nez v25, :cond_51

    const/4 v9, 0x1

    goto :goto_3a

    :cond_51
    move v9, v1

    :goto_3a
    move-object/from16 p2, v6

    move-object/from16 p3, v3

    move-object/from16 p4, p0

    move-object/from16 p5, v12

    move-object/from16 p6, v22

    move/from16 p7, v9

    invoke-static/range {p2 .. p7}, Landroidx/compose/foundation/text/TextFieldCursorKt;->cursor(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/text/TextFieldState;Landroidx/compose/ui/text/input/TextFieldValue;Landroidx/compose/ui/text/input/OffsetMapping;Landroidx/compose/ui/graphics/Brush;Z)Landroidx/compose/ui/Modifier;

    move-result-object v9

    .line 493
    new-instance v6, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$3;

    invoke-direct {v6, v11}, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$3;-><init>(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;)V

    check-cast v6, Lkotlin/jvm/functions/Function1;

    const/16 v1, 0x8

    invoke-static {v11, v6, v10, v1}, Landroidx/compose/runtime/EffectsKt;->DisposableEffect(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    .line 497
    new-instance v1, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$4;

    invoke-direct {v1, v4, v3, v15, v8}, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$4;-><init>(Landroidx/compose/ui/text/input/TextInputService;Landroidx/compose/foundation/text/TextFieldState;Landroidx/compose/ui/text/input/TextFieldValue;Landroidx/compose/ui/text/input/ImeOptions;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    and-int/lit8 v4, v33, 0xe

    invoke-static {v8, v1, v10, v4}, Landroidx/compose/runtime/EffectsKt;->DisposableEffect(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    .line 512
    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v1, Landroidx/compose/ui/Modifier;

    .line 516
    invoke-virtual {v3}, Landroidx/compose/foundation/text/TextFieldState;->getOnValueChange()Lkotlin/jvm/functions/Function1;

    move-result-object v4

    xor-int/lit8 v6, v25, 0x1

    move-object/from16 v29, v10

    move/from16 v10, v31

    const/4 v15, 0x1

    if-ne v10, v15, :cond_52

    move/from16 v20, v15

    goto :goto_3b

    :cond_52
    const/16 v20, 0x0

    :goto_3b
    move-object/from16 p2, v1

    move-object/from16 p3, v3

    move-object/from16 p4, v11

    move-object/from16 p5, p0

    move-object/from16 p6, v4

    move/from16 p7, v6

    move/from16 p8, v20

    move-object/from16 p9, v12

    move-object/from16 p10, v2

    .line 512
    invoke-static/range {p2 .. p10}, Landroidx/compose/foundation/text/TextFieldKeyInputKt;->textFieldKeyInput(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/text/TextFieldState;Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Landroidx/compose/ui/text/input/TextFieldValue;Lkotlin/jvm/functions/Function1;ZZLandroidx/compose/ui/text/input/OffsetMapping;Landroidx/compose/foundation/text/UndoManager;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    move-object/from16 v2, p15

    move-object/from16 v12, v32

    .line 526
    invoke-interface {v12, v2}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    .line 527
    invoke-static {v2, v3, v11}, Landroidx/compose/foundation/text/CoreTextFieldKt;->previewKeyEventToDeselectOnBack(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/text/TextFieldState;Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    .line 528
    invoke-interface {v2, v1}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    move-object/from16 v4, v16

    move-object/from16 v6, v27

    .line 529
    invoke-static {v1, v6, v4, v7}, Landroidx/compose/foundation/text/TextFieldScrollKt;->textFieldScrollable(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/text/TextFieldScrollerPosition;Landroidx/compose/foundation/interaction/MutableInteractionSource;Z)Landroidx/compose/ui/Modifier;

    move-result-object v1

    .line 530
    invoke-interface {v1, v5}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    .line 531
    invoke-interface {v1, v0}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    .line 532
    new-instance v1, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$decorationBoxModifier$1;

    invoke-direct {v1, v3}, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$decorationBoxModifier$1;-><init>(Landroidx/compose/foundation/text/TextFieldState;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v1}, Landroidx/compose/ui/layout/OnGloballyPositionedModifierKt;->onGloballyPositioned(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v5

    if-eqz v7, :cond_53

    .line 536
    invoke-virtual {v3}, Landroidx/compose/foundation/text/TextFieldState;->getHasFocus()Z

    move-result v0

    if-eqz v0, :cond_53

    invoke-static {}, Landroidx/compose/foundation/text/TouchMode_androidKt;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_53

    move/from16 v28, v15

    goto :goto_3c

    :cond_53
    const/16 v28, 0x0

    :goto_3c
    if-eqz v28, :cond_54

    .line 538
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v0, Landroidx/compose/ui/Modifier;

    invoke-static {v0, v11}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager_androidKt;->textFieldMagnifier(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    goto :goto_3d

    .line 540
    :cond_54
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v0, Landroidx/compose/ui/Modifier;

    :goto_3d
    move-object/from16 v16, v0

    .line 543
    new-instance v2, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$5;

    move-object v0, v2

    move-object/from16 v1, v26

    move-object/from16 v40, v2

    move/from16 v2, v33

    move-object/from16 v20, v4

    move v4, v10

    move-object/from16 v41, v5

    move-object/from16 v5, v19

    move/from16 v27, v7

    move-object/from16 v7, p0

    move-object/from16 v30, v8

    move-object v8, v13

    move-object/from16 v31, v20

    move/from16 v20, v10

    move-object/from16 v42, v29

    move-object v10, v14

    move-object/from16 p2, v11

    move-object/from16 v11, v17

    move-object v14, v12

    move-object/from16 v29, v31

    move-object/from16 v12, v16

    move-object/from16 v31, v13

    move-object/from16 v13, p14

    move-object/from16 v32, v14

    move-object/from16 v14, p2

    move/from16 v15, v28

    move/from16 v16, v25

    move-object/from16 v17, v21

    invoke-direct/range {v0 .. v18}, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$5;-><init>(Lkotlin/jvm/functions/Function3;ILandroidx/compose/foundation/text/TextFieldState;ILandroidx/compose/ui/text/TextStyle;Landroidx/compose/foundation/text/TextFieldScrollerPosition;Landroidx/compose/ui/text/input/TextFieldValue;Landroidx/compose/ui/text/input/VisualTransformation;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/relocation/BringIntoViewRequester;Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;ZZLkotlin/jvm/functions/Function1;Landroidx/compose/ui/unit/Density;)V

    const v0, -0x705d0edd

    move-object/from16 v2, v40

    move-object/from16 v1, v42

    const/4 v3, 0x1

    invoke-static {v1, v0, v3, v2}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v0

    check-cast v0, Lkotlin/jvm/functions/Function2;

    const/16 v2, 0x1c0

    move-object/from16 v5, p2

    move-object/from16 v3, v41

    invoke-static {v3, v5, v0, v1, v2}, Landroidx/compose/foundation/text/CoreTextFieldKt;->CoreTextFieldRootBox(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_55

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_55
    move-object/from16 v4, v19

    move/from16 v10, v20

    move-object/from16 v6, v21

    move-object/from16 v8, v22

    move/from16 v9, v23

    move-object/from16 v12, v24

    move/from16 v14, v25

    move-object/from16 v15, v26

    move/from16 v13, v27

    move-object/from16 v7, v29

    move-object/from16 v11, v30

    move-object/from16 v5, v31

    move-object/from16 v3, v32

    .line 635
    :goto_3e
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v2

    if-nez v2, :cond_56

    goto :goto_3f

    :cond_56
    new-instance v19, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$6;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v43, v2

    move-object/from16 v2, p1

    move/from16 v16, p16

    move/from16 v17, p17

    move/from16 v18, p18

    invoke-direct/range {v0 .. v18}, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$6;-><init>(Landroidx/compose/ui/text/input/TextFieldValue;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/input/VisualTransformation;Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/graphics/Brush;ZILandroidx/compose/ui/text/input/ImeOptions;Landroidx/compose/foundation/text/KeyboardActions;ZZLkotlin/jvm/functions/Function3;III)V

    move-object/from16 v0, v19

    check-cast v0, Lkotlin/jvm/functions/Function2;

    move-object/from16 v1, v43

    invoke-interface {v1, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :goto_3f
    return-void
.end method

.method private static final CoreTextFieldRootBox(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/Modifier;",
            "Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "I)V"
        }
    .end annotation

    const v0, -0x1399887

    .line 642
    invoke-interface {p3, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object p3

    const-string v1, "C(CoreTextFieldRootBox)P(2,1)642@28247L95:CoreTextField.kt#423gt5"

    invoke-static {p3, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    const-string v2, "androidx.compose.foundation.text.CoreTextFieldRootBox (CoreTextField.kt:637)"

    invoke-static {v0, p4, v1, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_0
    and-int/lit8 v0, p4, 0xe

    or-int/lit16 v0, v0, 0x180

    const v1, 0x2bb5b5d7

    .line 643
    invoke-interface {p3, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v1, "C(Box)P(2,1,3)70@3267L67,71@3339L130:Box.kt#2w3rfo"

    invoke-static {p3, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 1098
    sget-object v1, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/Alignment$Companion;->getTopStart()Landroidx/compose/ui/Alignment;

    move-result-object v1

    shr-int/lit8 v2, v0, 0x3

    and-int/lit8 v3, v2, 0xe

    and-int/lit8 v2, v2, 0x70

    or-int/2addr v2, v3

    const/4 v3, 0x1

    .line 1102
    invoke-static {v1, v3, p3, v2}, Landroidx/compose/foundation/layout/BoxKt;->rememberBoxMeasurePolicy(Landroidx/compose/ui/Alignment;ZLandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v1

    shl-int/lit8 v2, v0, 0x3

    and-int/lit8 v2, v2, 0x70

    const v3, -0x4ee9b9da

    .line 1103
    invoke-interface {p3, v3}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v3, "C(Layout)P(!1,2)74@2915L7,75@2970L7,76@3029L7,77@3041L460:Layout.kt#80mrfh"

    invoke-static {p3, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 1104
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalDensity()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v3

    check-cast v3, Landroidx/compose/runtime/CompositionLocal;

    const v4, 0x789c5f52

    const-string v5, "C:CompositionLocal.kt#9igjgp"

    .line 1105
    invoke-static {p3, v4, v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {p3, v3}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p3}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 1104
    check-cast v3, Landroidx/compose/ui/unit/Density;

    .line 1106
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalLayoutDirection()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v6

    check-cast v6, Landroidx/compose/runtime/CompositionLocal;

    .line 1105
    invoke-static {p3, v4, v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {p3, v6}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {p3}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 1106
    check-cast v6, Landroidx/compose/ui/unit/LayoutDirection;

    .line 1107
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalViewConfiguration()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v7

    check-cast v7, Landroidx/compose/runtime/CompositionLocal;

    .line 1105
    invoke-static {p3, v4, v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {p3, v7}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {p3}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 1107
    check-cast v4, Landroidx/compose/ui/platform/ViewConfiguration;

    .line 1109
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v5}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    move-result-object v5

    .line 1116
    invoke-static {p0}, Landroidx/compose/ui/layout/LayoutKt;->materializerOf(Landroidx/compose/ui/Modifier;)Lkotlin/jvm/functions/Function3;

    move-result-object v7

    shl-int/lit8 v2, v2, 0x9

    and-int/lit16 v2, v2, 0x1c00

    or-int/lit8 v2, v2, 0x6

    .line 1117
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    move-result-object v8

    instance-of v8, v8, Landroidx/compose/runtime/Applier;

    if-nez v8, :cond_1

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 1118
    :cond_1
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 1119
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1120
    invoke-interface {p3, v5}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_0

    .line 1122
    :cond_2
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 1124
    :goto_0
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->disableReusing()V

    .line 1125
    invoke-static {p3}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v5

    .line 1111
    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v8}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    move-result-object v8

    invoke-static {v5, v1, v8}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 1112
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetDensity()Lkotlin/jvm/functions/Function2;

    move-result-object v1

    invoke-static {v5, v3, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 1113
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetLayoutDirection()Lkotlin/jvm/functions/Function2;

    move-result-object v1

    invoke-static {v5, v6, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 1114
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetViewConfiguration()Lkotlin/jvm/functions/Function2;

    move-result-object v1

    invoke-static {v5, v4, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 1126
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->enableReusing()V

    .line 1127
    invoke-static {p3}, Landroidx/compose/runtime/SkippableUpdater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v1

    invoke-static {v1}, Landroidx/compose/runtime/SkippableUpdater;->box-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/SkippableUpdater;

    move-result-object v1

    shr-int/lit8 v3, v2, 0x3

    and-int/lit8 v3, v3, 0x70

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v7, v1, p3, v3}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v1, 0x7ab4aae9

    .line 1128
    invoke-interface {p3, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    shr-int/lit8 v1, v2, 0x9

    const v2, -0x7f65a980

    .line 1129
    invoke-interface {p3, v2}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v2, "C72@3384L9:Box.kt#2w3rfo"

    invoke-static {p3, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v1, v1, 0xa

    const/4 v2, 0x2

    if-ne v1, v2, :cond_4

    .line 1130
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_1

    .line 645
    :cond_3
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    goto :goto_4

    .line 1130
    :cond_4
    :goto_1
    sget-object v1, Landroidx/compose/foundation/layout/BoxScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/BoxScopeInstance;

    shr-int/lit8 v0, v0, 0x6

    and-int/lit8 v0, v0, 0x70

    or-int/lit8 v0, v0, 0x6

    check-cast v1, Landroidx/compose/foundation/layout/BoxScope;

    const v1, 0x5ae1f37f

    invoke-interface {p3, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v1, "C643@28303L33:CoreTextField.kt#423gt5"

    invoke-static {p3, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v0, v0, 0x51

    const/16 v1, 0x10

    if-ne v0, v1, :cond_6

    .line 644
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_2

    :cond_5
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    goto :goto_3

    :cond_6
    :goto_2
    shr-int/lit8 v0, p4, 0x3

    and-int/lit8 v0, v0, 0x70

    or-int/lit8 v0, v0, 0x8

    invoke-static {p1, p2, p3, v0}, Landroidx/compose/foundation/text/ContextMenu_androidKt;->ContextMenuArea(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    :goto_3
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 645
    :goto_4
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 1131
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 1132
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->endNode()V

    .line 1133
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 1134
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 1135
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_7
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object p3

    if-nez p3, :cond_8

    goto :goto_5

    :cond_8
    new-instance v0, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextFieldRootBox$2;

    invoke-direct {v0, p0, p1, p2, p4}, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextFieldRootBox$2;-><init>(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Lkotlin/jvm/functions/Function2;I)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-interface {p3, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :goto_5
    return-void
.end method

.method private static final SelectionToolbarAndHandles(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;ZLandroidx/compose/runtime/Composer;I)V
    .locals 7

    const v0, 0x25552d88

    .line 961
    invoke-interface {p2, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object p2

    const-string v1, "C(SelectionToolbarAndHandles)979@41906L202:CoreTextField.kt#423gt5"

    invoke-static {p2, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    const-string v2, "androidx.compose.foundation.text.SelectionToolbarAndHandles (CoreTextField.kt:960)"

    invoke-static {v0, p3, v1, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_0
    if-eqz p1, :cond_8

    .line 966
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->getState$foundation_release()Landroidx/compose/foundation/text/TextFieldState;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroidx/compose/foundation/text/TextFieldState;->getLayoutResult()Landroidx/compose/foundation/text/TextLayoutResultProxy;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroidx/compose/foundation/text/TextLayoutResultProxy;->getValue()Landroidx/compose/ui/text/TextLayoutResult;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->getState$foundation_release()Landroidx/compose/foundation/text/TextFieldState;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroidx/compose/foundation/text/TextFieldState;->isLayoutResultStale()Z

    move-result v3

    goto :goto_0

    :cond_1
    move v3, v2

    :goto_0
    xor-int/2addr v3, v2

    if-eqz v3, :cond_2

    move-object v1, v0

    :cond_2
    if-nez v1, :cond_3

    goto/16 :goto_1

    .line 967
    :cond_3
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->getValue$foundation_release()Landroidx/compose/ui/text/input/TextFieldValue;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/text/input/TextFieldValue;->getSelection-d9O1mEE()J

    move-result-wide v3

    invoke-static {v3, v4}, Landroidx/compose/ui/text/TextRange;->getCollapsed-impl(J)Z

    move-result v0

    const/4 v3, 0x0

    if-nez v0, :cond_5

    .line 968
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->getOffsetMapping$foundation_release()Landroidx/compose/ui/text/input/OffsetMapping;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->getValue$foundation_release()Landroidx/compose/ui/text/input/TextFieldValue;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/compose/ui/text/input/TextFieldValue;->getSelection-d9O1mEE()J

    move-result-wide v4

    invoke-static {v4, v5}, Landroidx/compose/ui/text/TextRange;->getStart-impl(J)I

    move-result v4

    invoke-interface {v0, v4}, Landroidx/compose/ui/text/input/OffsetMapping;->originalToTransformed(I)I

    move-result v0

    .line 969
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->getOffsetMapping$foundation_release()Landroidx/compose/ui/text/input/OffsetMapping;

    move-result-object v4

    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->getValue$foundation_release()Landroidx/compose/ui/text/input/TextFieldValue;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/compose/ui/text/input/TextFieldValue;->getSelection-d9O1mEE()J

    move-result-wide v5

    invoke-static {v5, v6}, Landroidx/compose/ui/text/TextRange;->getEnd-impl(J)I

    move-result v5

    invoke-interface {v4, v5}, Landroidx/compose/ui/text/input/OffsetMapping;->originalToTransformed(I)I

    move-result v4

    .line 970
    invoke-virtual {v1, v0}, Landroidx/compose/ui/text/TextLayoutResult;->getBidiRunDirection(I)Landroidx/compose/ui/text/style/ResolvedTextDirection;

    move-result-object v0

    sub-int/2addr v4, v2

    .line 971
    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-virtual {v1, v4}, Landroidx/compose/ui/text/TextLayoutResult;->getBidiRunDirection(I)Landroidx/compose/ui/text/style/ResolvedTextDirection;

    move-result-object v1

    const v4, -0x1db4e00a

    invoke-interface {p2, v4}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v4, "972@41583L203"

    invoke-static {p2, v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 972
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->getState$foundation_release()Landroidx/compose/foundation/text/TextFieldState;

    move-result-object v4

    const/16 v5, 0x206

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Landroidx/compose/foundation/text/TextFieldState;->getShowSelectionHandleStart()Z

    move-result v4

    if-ne v4, v2, :cond_4

    .line 973
    invoke-static {v2, v0, p0, p2, v5}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManagerKt;->TextFieldSelectionHandle(ZLandroidx/compose/ui/text/style/ResolvedTextDirection;Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Landroidx/compose/runtime/Composer;I)V

    :cond_4
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 979
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->getState$foundation_release()Landroidx/compose/foundation/text/TextFieldState;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroidx/compose/foundation/text/TextFieldState;->getShowSelectionHandleEnd()Z

    move-result v0

    if-ne v0, v2, :cond_5

    .line 980
    invoke-static {v3, v1, p0, p2, v5}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManagerKt;->TextFieldSelectionHandle(ZLandroidx/compose/ui/text/style/ResolvedTextDirection;Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Landroidx/compose/runtime/Composer;I)V

    .line 988
    :cond_5
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->getState$foundation_release()Landroidx/compose/foundation/text/TextFieldState;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 992
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->isTextChanged$foundation_release()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {v0, v3}, Landroidx/compose/foundation/text/TextFieldState;->setShowFloatingToolbar(Z)V

    .line 993
    :cond_6
    invoke-virtual {v0}, Landroidx/compose/foundation/text/TextFieldState;->getHasFocus()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 994
    invoke-virtual {v0}, Landroidx/compose/foundation/text/TextFieldState;->getShowFloatingToolbar()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->showSelectionToolbar$foundation_release()V

    goto :goto_1

    .line 995
    :cond_7
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->hideSelectionToolbar$foundation_release()V

    goto :goto_1

    .line 999
    :cond_8
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->hideSelectionToolbar$foundation_release()V

    .line 962
    :cond_9
    :goto_1
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_a
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object p2

    if-nez p2, :cond_b

    goto :goto_2

    :cond_b
    new-instance v0, Landroidx/compose/foundation/text/CoreTextFieldKt$SelectionToolbarAndHandles$2;

    invoke-direct {v0, p0, p1, p3}, Landroidx/compose/foundation/text/CoreTextFieldKt$SelectionToolbarAndHandles$2;-><init>(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;ZI)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-interface {p2, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :goto_2
    return-void
.end method

.method public static final TextFieldCursorHandle(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Landroidx/compose/runtime/Composer;I)V
    .locals 9

    const-string v0, "manager"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, -0x5597ad88

    .line 1004
    invoke-interface {p1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object p1

    const-string v1, "C(TextFieldCursorHandle)1005@42951L50,1006@43064L7,1013@43321L205,1007@43081L483:CoreTextField.kt#423gt5"

    invoke-static {p1, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    const-string v2, "androidx.compose.foundation.text.TextFieldCursorHandle (CoreTextField.kt:1003)"

    invoke-static {v0, p2, v1, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 1005
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->getState$foundation_release()Landroidx/compose/foundation/text/TextFieldState;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroidx/compose/foundation/text/TextFieldState;->getShowCursorHandle()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    const v0, 0x44faf204

    .line 1006
    invoke-interface {p1, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v2, "C(remember)P(1):Composables.kt#9igjgp"

    invoke-static {p1, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 1137
    invoke-interface {p1, p0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v3

    .line 1138
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    if-nez v3, :cond_1

    .line 1139
    sget-object v3, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v3}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v3

    if-ne v4, v3, :cond_2

    .line 1006
    :cond_1
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->cursorDragObserver$foundation_release()Landroidx/compose/foundation/text/TextDragObserver;

    move-result-object v4

    .line 1141
    invoke-interface {p1, v4}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 1137
    :cond_2
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 1006
    check-cast v4, Landroidx/compose/foundation/text/TextDragObserver;

    .line 1007
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalDensity()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v3

    check-cast v3, Landroidx/compose/runtime/CompositionLocal;

    const v5, 0x789c5f52

    const-string v6, "C:CompositionLocal.kt#9igjgp"

    .line 1144
    invoke-static {p1, v5, v6}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {p1, v3}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    check-cast v3, Landroidx/compose/ui/unit/Density;

    .line 1007
    invoke-virtual {p0, v3}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->getCursorPosition-tuRUvjQ$foundation_release(Landroidx/compose/ui/unit/Density;)J

    move-result-wide v5

    .line 1010
    sget-object v3, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v3, Landroidx/compose/ui/Modifier;

    .line 1011
    new-instance v7, Landroidx/compose/foundation/text/CoreTextFieldKt$TextFieldCursorHandle$1;

    const/4 v8, 0x0

    invoke-direct {v7, v4, v8}, Landroidx/compose/foundation/text/CoreTextFieldKt$TextFieldCursorHandle$1;-><init>(Landroidx/compose/foundation/text/TextDragObserver;Lkotlin/coroutines/Continuation;)V

    check-cast v7, Lkotlin/jvm/functions/Function2;

    invoke-static {v3, v4, v7}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilterKt;->pointerInput(Landroidx/compose/ui/Modifier;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    .line 1014
    invoke-static {v5, v6}, Landroidx/compose/ui/geometry/Offset;->box-impl(J)Landroidx/compose/ui/geometry/Offset;

    move-result-object v4

    invoke-interface {p1, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {p1, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 1145
    invoke-interface {p1, v4}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v0

    .line 1146
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v2

    if-nez v0, :cond_3

    .line 1147
    sget-object v0, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v0}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v0

    if-ne v2, v0, :cond_4

    .line 1014
    :cond_3
    new-instance v0, Landroidx/compose/foundation/text/CoreTextFieldKt$TextFieldCursorHandle$2$1;

    invoke-direct {v0, v5, v6}, Landroidx/compose/foundation/text/CoreTextFieldKt$TextFieldCursorHandle$2$1;-><init>(J)V

    move-object v2, v0

    check-cast v2, Lkotlin/jvm/functions/Function1;

    .line 1149
    invoke-interface {p1, v2}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 1145
    :cond_4
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    check-cast v2, Lkotlin/jvm/functions/Function1;

    const/4 v0, 0x0

    .line 1014
    invoke-static {v3, v0, v2, v1, v8}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->semantics$default(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    const/4 v4, 0x0

    const/16 v0, 0x180

    move-wide v1, v5

    move-object v5, p1

    move v6, v0

    .line 1008
    invoke-static/range {v1 .. v6}, Landroidx/compose/foundation/text/AndroidCursorHandle_androidKt;->CursorHandle-ULxng0E(JLandroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    :cond_5
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_6
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object p1

    if-nez p1, :cond_7

    goto :goto_0

    :cond_7
    new-instance v0, Landroidx/compose/foundation/text/CoreTextFieldKt$TextFieldCursorHandle$3;

    invoke-direct {v0, p0, p2}, Landroidx/compose/foundation/text/CoreTextFieldKt$TextFieldCursorHandle$3;-><init>(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;I)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-interface {p1, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :goto_0
    return-void
.end method

.method public static final synthetic access$CoreTextFieldRootBox(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Landroidx/compose/foundation/text/CoreTextFieldKt;->CoreTextFieldRootBox(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    return-void
.end method

.method public static final synthetic access$SelectionToolbarAndHandles(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;ZLandroidx/compose/runtime/Composer;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Landroidx/compose/foundation/text/CoreTextFieldKt;->SelectionToolbarAndHandles(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;ZLandroidx/compose/runtime/Composer;I)V

    return-void
.end method

.method public static final synthetic access$notifyTextInputServiceOnFocusChange(Landroidx/compose/ui/text/input/TextInputService;Landroidx/compose/foundation/text/TextFieldState;Landroidx/compose/ui/text/input/TextFieldValue;Landroidx/compose/ui/text/input/ImeOptions;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Landroidx/compose/foundation/text/CoreTextFieldKt;->notifyTextInputServiceOnFocusChange(Landroidx/compose/ui/text/input/TextInputService;Landroidx/compose/foundation/text/TextFieldState;Landroidx/compose/ui/text/input/TextFieldValue;Landroidx/compose/ui/text/input/ImeOptions;)V

    return-void
.end method

.method public static final synthetic access$onBlur(Landroidx/compose/foundation/text/TextFieldState;)V
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/compose/foundation/text/CoreTextFieldKt;->onBlur(Landroidx/compose/foundation/text/TextFieldState;)V

    return-void
.end method

.method public static final synthetic access$tapToFocus(Landroidx/compose/foundation/text/TextFieldState;Landroidx/compose/ui/focus/FocusRequester;Z)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/compose/foundation/text/CoreTextFieldKt;->tapToFocus(Landroidx/compose/foundation/text/TextFieldState;Landroidx/compose/ui/focus/FocusRequester;Z)V

    return-void
.end method

.method public static final bringSelectionEndIntoView(Landroidx/compose/foundation/relocation/BringIntoViewRequester;Landroidx/compose/ui/text/input/TextFieldValue;Landroidx/compose/foundation/text/TextDelegate;Landroidx/compose/ui/text/TextLayoutResult;Landroidx/compose/ui/text/input/OffsetMapping;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/relocation/BringIntoViewRequester;",
            "Landroidx/compose/ui/text/input/TextFieldValue;",
            "Landroidx/compose/foundation/text/TextDelegate;",
            "Landroidx/compose/ui/text/TextLayoutResult;",
            "Landroidx/compose/ui/text/input/OffsetMapping;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 940
    invoke-virtual {p1}, Landroidx/compose/ui/text/input/TextFieldValue;->getSelection-d9O1mEE()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/compose/ui/text/TextRange;->getMax-impl(J)I

    move-result p1

    invoke-interface {p4, p1}, Landroidx/compose/ui/text/input/OffsetMapping;->originalToTransformed(I)I

    move-result p1

    .line 942
    invoke-virtual {p3}, Landroidx/compose/ui/text/TextLayoutResult;->getLayoutInput()Landroidx/compose/ui/text/TextLayoutInput;

    move-result-object p4

    invoke-virtual {p4}, Landroidx/compose/ui/text/TextLayoutInput;->getText()Landroidx/compose/ui/text/AnnotatedString;

    move-result-object p4

    invoke-virtual {p4}, Landroidx/compose/ui/text/AnnotatedString;->length()I

    move-result p4

    if-ge p1, p4, :cond_0

    .line 943
    invoke-virtual {p3, p1}, Landroidx/compose/ui/text/TextLayoutResult;->getBoundingBox(I)Landroidx/compose/ui/geometry/Rect;

    move-result-object p1

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    add-int/lit8 p1, p1, -0x1

    .line 946
    invoke-virtual {p3, p1}, Landroidx/compose/ui/text/TextLayoutResult;->getBoundingBox(I)Landroidx/compose/ui/geometry/Rect;

    move-result-object p1

    goto :goto_0

    .line 950
    :cond_1
    invoke-virtual {p2}, Landroidx/compose/foundation/text/TextDelegate;->getStyle()Landroidx/compose/ui/text/TextStyle;

    move-result-object v0

    .line 951
    invoke-virtual {p2}, Landroidx/compose/foundation/text/TextDelegate;->getDensity()Landroidx/compose/ui/unit/Density;

    move-result-object v1

    .line 952
    invoke-virtual {p2}, Landroidx/compose/foundation/text/TextDelegate;->getFontFamilyResolver()Landroidx/compose/ui/text/font/FontFamily$Resolver;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0x18

    const/4 v6, 0x0

    .line 949
    invoke-static/range {v0 .. v6}, Landroidx/compose/foundation/text/TextFieldDelegateKt;->computeSizeForDefaultText$default(Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/unit/Density;Landroidx/compose/ui/text/font/FontFamily$Resolver;Ljava/lang/String;IILjava/lang/Object;)J

    move-result-wide p1

    .line 954
    new-instance p3, Landroidx/compose/ui/geometry/Rect;

    invoke-static {p1, p2}, Landroidx/compose/ui/unit/IntSize;->getHeight-impl(J)I

    move-result p1

    int-to-float p1, p1

    const/4 p2, 0x0

    const/high16 p4, 0x3f800000    # 1.0f

    invoke-direct {p3, p2, p2, p4, p1}, Landroidx/compose/ui/geometry/Rect;-><init>(FFFF)V

    move-object p1, p3

    .line 957
    :goto_0
    invoke-interface {p0, p1, p5}, Landroidx/compose/foundation/relocation/BringIntoViewRequester;->bringIntoView(Landroidx/compose/ui/geometry/Rect;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_2

    return-object p0

    :cond_2
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final notifyTextInputServiceOnFocusChange(Landroidx/compose/ui/text/input/TextInputService;Landroidx/compose/foundation/text/TextFieldState;Landroidx/compose/ui/text/input/TextFieldValue;Landroidx/compose/ui/text/input/ImeOptions;)V
    .locals 8

    .line 891
    invoke-virtual {p1}, Landroidx/compose/foundation/text/TextFieldState;->getHasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 892
    sget-object v1, Landroidx/compose/foundation/text/TextFieldDelegate;->Companion:Landroidx/compose/foundation/text/TextFieldDelegate$Companion;

    .line 895
    invoke-virtual {p1}, Landroidx/compose/foundation/text/TextFieldState;->getProcessor()Landroidx/compose/ui/text/input/EditProcessor;

    move-result-object v4

    .line 897
    invoke-virtual {p1}, Landroidx/compose/foundation/text/TextFieldState;->getOnValueChange()Lkotlin/jvm/functions/Function1;

    move-result-object v6

    .line 898
    invoke-virtual {p1}, Landroidx/compose/foundation/text/TextFieldState;->getOnImeActionPerformed()Lkotlin/jvm/functions/Function1;

    move-result-object v7

    move-object v2, p0

    move-object v3, p2

    move-object v5, p3

    .line 892
    invoke-virtual/range {v1 .. v7}, Landroidx/compose/foundation/text/TextFieldDelegate$Companion;->onFocus$foundation_release(Landroidx/compose/ui/text/input/TextInputService;Landroidx/compose/ui/text/input/TextFieldValue;Landroidx/compose/ui/text/input/EditProcessor;Landroidx/compose/ui/text/input/ImeOptions;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/text/input/TextInputSession;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/compose/foundation/text/TextFieldState;->setInputSession(Landroidx/compose/ui/text/input/TextInputSession;)V

    goto :goto_0

    .line 901
    :cond_0
    invoke-static {p1}, Landroidx/compose/foundation/text/CoreTextFieldKt;->onBlur(Landroidx/compose/foundation/text/TextFieldState;)V

    :goto_0
    return-void
.end method

.method private static final onBlur(Landroidx/compose/foundation/text/TextFieldState;)V
    .locals 4

    .line 906
    invoke-virtual {p0}, Landroidx/compose/foundation/text/TextFieldState;->getInputSession()Landroidx/compose/ui/text/input/TextInputSession;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 907
    sget-object v1, Landroidx/compose/foundation/text/TextFieldDelegate;->Companion:Landroidx/compose/foundation/text/TextFieldDelegate$Companion;

    invoke-virtual {p0}, Landroidx/compose/foundation/text/TextFieldState;->getProcessor()Landroidx/compose/ui/text/input/EditProcessor;

    move-result-object v2

    invoke-virtual {p0}, Landroidx/compose/foundation/text/TextFieldState;->getOnValueChange()Lkotlin/jvm/functions/Function1;

    move-result-object v3

    invoke-virtual {v1, v0, v2, v3}, Landroidx/compose/foundation/text/TextFieldDelegate$Companion;->onBlur$foundation_release(Landroidx/compose/ui/text/input/TextInputSession;Landroidx/compose/ui/text/input/EditProcessor;Lkotlin/jvm/functions/Function1;)V

    :cond_0
    const/4 v0, 0x0

    .line 909
    invoke-virtual {p0, v0}, Landroidx/compose/foundation/text/TextFieldState;->setInputSession(Landroidx/compose/ui/text/input/TextInputSession;)V

    return-void
.end method

.method private static final previewKeyEventToDeselectOnBack(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/text/TextFieldState;Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;)Landroidx/compose/ui/Modifier;
    .locals 1

    .line 697
    new-instance v0, Landroidx/compose/foundation/text/CoreTextFieldKt$previewKeyEventToDeselectOnBack$1;

    invoke-direct {v0, p1, p2}, Landroidx/compose/foundation/text/CoreTextFieldKt$previewKeyEventToDeselectOnBack$1;-><init>(Landroidx/compose/foundation/text/TextFieldState;Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-static {p0, v0}, Landroidx/compose/ui/input/key/KeyInputModifierKt;->onPreviewKeyEvent(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method

.method private static final tapToFocus(Landroidx/compose/foundation/text/TextFieldState;Landroidx/compose/ui/focus/FocusRequester;Z)V
    .locals 1

    .line 878
    invoke-virtual {p0}, Landroidx/compose/foundation/text/TextFieldState;->getHasFocus()Z

    move-result v0

    if-nez v0, :cond_0

    .line 879
    invoke-virtual {p1}, Landroidx/compose/ui/focus/FocusRequester;->requestFocus()V

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    .line 881
    invoke-virtual {p0}, Landroidx/compose/foundation/text/TextFieldState;->getInputSession()Landroidx/compose/ui/text/input/TextInputSession;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroidx/compose/ui/text/input/TextInputSession;->showSoftwareKeyboard()Z

    :cond_1
    :goto_0
    return-void
.end method
