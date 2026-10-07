.class public Lcom/android/settings/HandyGestureSettings;
.super Landroid/app/Fragment;
.source "HandyGestureSettings.java"


# instance fields
.field public final DB_KEY_DSL_HANDY_CUT_SCREEN_SWITCH_ACTION:Ljava/lang/String;

.field public final DB_KEY_GESTURE_SCREEN_CAPTURE_SWITCH:Ljava/lang/String;

.field private final MSG_DELAY_INIT_QQ_ANIM_EVENT1:I

.field private final MSG_DELAY_INIT_QQ_ANIM_EVENT2:I

.field private final MSG_DELAY_INIT_QQ_ANIM_EVENT3:I

.field private final MSG_DELAY_INIT_QQ_ANIM_EVENT4:I

.field public isDestoryed:Z

.field public isOnPaused:Z

.field private mAnimOwnerActivtiyState:Lcom/android/settings/widget/QQAssetAnimView$OwnerActivtiyState;

.field private mAnimSizeH:I

.field private mAnimSizeW:I

.field private mGestureScreenCapture:I

.field private mHandler:Landroid/os/Handler;

.field private mOffsetBottom:I

.field private mOffsetLeft:I

.field private mOffsetTop:I

.field private mSwitchGestureScreenCapture:Landroid/widget/Switch;

.field private mSwitchHandyGesture:Landroid/widget/Switch;

.field private mSwitchHandyGestureChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private mSwitchHandyGestureScreenCaptureChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private middle_filter_splite_line4:Landroid/view/View;

.field private nbQqanimActionExample1:Lcom/android/settings/widget/QQAssetAnimView;

.field private nbQqanimActionExample2:Lcom/android/settings/widget/QQAssetAnimView;

.field private nbQqanimActionExample3:Lcom/android/settings/widget/QQAssetAnimView;

.field private nbQqanimActionExample4:Lcom/android/settings/widget/QQAssetAnimView;

.field private rl_no_handy_gesture_root4:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 45
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 49
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/HandyGestureSettings;->isOnPaused:Z

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/HandyGestureSettings;->isDestoryed:Z

    .line 65
    const/16 v0, 0x145

    iput v0, p0, Lcom/android/settings/HandyGestureSettings;->mAnimSizeW:I

    .line 67
    const/16 v0, 0xfa

    iput v0, p0, Lcom/android/settings/HandyGestureSettings;->mAnimSizeH:I

    .line 69
    const/16 v0, 0x64

    iput v0, p0, Lcom/android/settings/HandyGestureSettings;->mOffsetLeft:I

    .line 71
    const/16 v0, 0x32

    iput v0, p0, Lcom/android/settings/HandyGestureSettings;->mOffsetTop:I

    .line 73
    const/16 v0, 0x50

    iput v0, p0, Lcom/android/settings/HandyGestureSettings;->mOffsetBottom:I

    .line 76
    const-string v0, "dsl_handy_cut_screen_switch_action"

    iput-object v0, p0, Lcom/android/settings/HandyGestureSettings;->DB_KEY_DSL_HANDY_CUT_SCREEN_SWITCH_ACTION:Ljava/lang/String;

    .line 79
    const-string v0, "enable_magic_screenshot"

    iput-object v0, p0, Lcom/android/settings/HandyGestureSettings;->DB_KEY_GESTURE_SCREEN_CAPTURE_SWITCH:Ljava/lang/String;

    .line 82
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/HandyGestureSettings;->mGestureScreenCapture:I

    .line 84
    const v0, 0x10101

    iput v0, p0, Lcom/android/settings/HandyGestureSettings;->MSG_DELAY_INIT_QQ_ANIM_EVENT1:I

    .line 85
    const v0, 0x10102

    iput v0, p0, Lcom/android/settings/HandyGestureSettings;->MSG_DELAY_INIT_QQ_ANIM_EVENT2:I

    .line 86
    const v0, 0x10103

    iput v0, p0, Lcom/android/settings/HandyGestureSettings;->MSG_DELAY_INIT_QQ_ANIM_EVENT3:I

    .line 87
    const v0, 0x10104

    iput v0, p0, Lcom/android/settings/HandyGestureSettings;->MSG_DELAY_INIT_QQ_ANIM_EVENT4:I

    .line 90
    new-instance v0, Lcom/android/settings/HandyGestureSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/HandyGestureSettings$1;-><init>(Lcom/android/settings/HandyGestureSettings;)V

    iput-object v0, p0, Lcom/android/settings/HandyGestureSettings;->mHandler:Landroid/os/Handler;

    .line 181
    new-instance v0, Lcom/android/settings/HandyGestureSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/HandyGestureSettings$2;-><init>(Lcom/android/settings/HandyGestureSettings;)V

    iput-object v0, p0, Lcom/android/settings/HandyGestureSettings;->mSwitchHandyGestureScreenCaptureChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 191
    new-instance v0, Lcom/android/settings/HandyGestureSettings$3;

    invoke-direct {v0, p0}, Lcom/android/settings/HandyGestureSettings$3;-><init>(Lcom/android/settings/HandyGestureSettings;)V

    iput-object v0, p0, Lcom/android/settings/HandyGestureSettings;->mSwitchHandyGestureChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 360
    new-instance v0, Lcom/android/settings/HandyGestureSettings$4;

    invoke-direct {v0, p0}, Lcom/android/settings/HandyGestureSettings$4;-><init>(Lcom/android/settings/HandyGestureSettings;)V

    iput-object v0, p0, Lcom/android/settings/HandyGestureSettings;->mAnimOwnerActivtiyState:Lcom/android/settings/widget/QQAssetAnimView$OwnerActivtiyState;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/HandyGestureSettings;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/HandyGestureSettings;

    .line 45
    iget v0, p0, Lcom/android/settings/HandyGestureSettings;->mGestureScreenCapture:I

    return v0
.end method


# virtual methods
.method public destroyQQAssetAnimView(Lcom/android/settings/widget/QQAssetAnimView;)V
    .locals 1
    .param p1, "qqAssetAnimView"    # Lcom/android/settings/widget/QQAssetAnimView;

    .line 353
    if-eqz p1, :cond_0

    .line 354
    invoke-virtual {p1}, Lcom/android/settings/widget/QQAssetAnimView;->stopAnimAction()V

    .line 355
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/android/settings/widget/QQAssetAnimView;->setVisibility(I)V

    .line 357
    :cond_0
    return-void
.end method

.method public getDisplayMetrics(Landroid/app/Activity;)Landroid/util/DisplayMetrics;
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .line 255
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 256
    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_0

    .line 258
    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    goto :goto_0

    .line 260
    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 263
    :goto_0
    return-object v0
.end method

.method public initQQAssetAnimViewOne(Landroid/app/Activity;I)V
    .locals 28
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "inum"    # I

    move-object/from16 v0, p0

    .line 293
    move/from16 v1, p2

    iget v2, v0, Lcom/android/settings/HandyGestureSettings;->mAnimSizeW:I

    .line 294
    .local v2, "sizeW":I
    iget v3, v0, Lcom/android/settings/HandyGestureSettings;->mAnimSizeH:I

    .line 295
    .local v3, "sizeH":I
    const/4 v4, 0x0

    .line 296
    .local v4, "qqAssetAnimView":Lcom/android/settings/widget/QQAssetAnimView;
    const/4 v5, 0x0

    .line 297
    .local v5, "qqAssetInfo":[Lcom/android/settings/widget/QQAssetAnimView$QQAssetInfo;
    const/4 v6, 0x5

    const/4 v7, 0x4

    const/4 v8, 0x6

    const/4 v9, 0x3

    const/4 v10, 0x2

    const/4 v11, 0x0

    const/4 v12, 0x1

    if-nez v1, :cond_0

    .line 298
    iget-object v4, v0, Lcom/android/settings/HandyGestureSettings;->nbQqanimActionExample1:Lcom/android/settings/widget/QQAssetAnimView;

    .line 299
    new-array v8, v8, [Lcom/android/settings/widget/QQAssetAnimView$QQAssetInfo;

    new-instance v20, Lcom/android/settings/widget/QQAssetAnimView$QQAssetInfo;

    const-string v14, "QQAnim/handy1"

    const/4 v15, 0x1

    const/16 v16, 0x64

    const/16 v17, 0x0

    const/16 v18, 0xa

    new-instance v13, Landroid/graphics/Point;

    invoke-direct {v13, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    move-object/from16 v19, v13

    move-object/from16 v13, v20

    invoke-direct/range {v13 .. v19}, Lcom/android/settings/widget/QQAssetAnimView$QQAssetInfo;-><init>(Ljava/lang/String;IIIILandroid/graphics/Point;)V

    aput-object v20, v8, v11

    new-instance v13, Lcom/android/settings/widget/QQAssetAnimView$QQAssetInfo;

    const-string v22, "QQAnim/handy1"

    const/16 v23, 0xf

    const/16 v24, 0x64

    const/16 v25, 0x0

    const/16 v26, 0x1

    new-instance v14, Landroid/graphics/Point;

    invoke-direct {v14, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    move-object/from16 v21, v13

    move-object/from16 v27, v14

    invoke-direct/range {v21 .. v27}, Lcom/android/settings/widget/QQAssetAnimView$QQAssetInfo;-><init>(Ljava/lang/String;IIIILandroid/graphics/Point;)V

    aput-object v13, v8, v12

    new-instance v13, Lcom/android/settings/widget/QQAssetAnimView$QQAssetInfo;

    const-string v16, "QQAnim/handy1"

    const/16 v17, 0x1

    const/16 v18, 0x64

    const/16 v19, 0xe

    const/16 v20, 0xa

    new-instance v14, Landroid/graphics/Point;

    invoke-direct {v14, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    move-object v15, v13

    move-object/from16 v21, v14

    invoke-direct/range {v15 .. v21}, Lcom/android/settings/widget/QQAssetAnimView$QQAssetInfo;-><init>(Ljava/lang/String;IIIILandroid/graphics/Point;)V

    aput-object v13, v8, v10

    new-instance v10, Lcom/android/settings/widget/QQAssetAnimView$QQAssetInfo;

    const-string v22, "QQAnim/handy1"

    const/16 v23, 0x1

    const/16 v26, 0xa

    new-instance v13, Landroid/graphics/Point;

    invoke-direct {v13, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    move-object/from16 v21, v10

    move-object/from16 v27, v13

    invoke-direct/range {v21 .. v27}, Lcom/android/settings/widget/QQAssetAnimView$QQAssetInfo;-><init>(Ljava/lang/String;IIIILandroid/graphics/Point;)V

    aput-object v10, v8, v9

    new-instance v9, Lcom/android/settings/widget/QQAssetAnimView$QQAssetInfo;

    const-string v15, "QQAnim/handy1"

    const/16 v16, 0xf

    const/16 v17, 0x64

    const/16 v18, 0x0

    const/16 v19, 0x1

    new-instance v10, Landroid/graphics/Point;

    invoke-direct {v10, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    move-object v14, v9

    move-object/from16 v20, v10

    invoke-direct/range {v14 .. v20}, Lcom/android/settings/widget/QQAssetAnimView$QQAssetInfo;-><init>(Ljava/lang/String;IIIILandroid/graphics/Point;)V

    aput-object v9, v8, v7

    new-instance v7, Lcom/android/settings/widget/QQAssetAnimView$QQAssetInfo;

    const-string v21, "QQAnim/handy1"

    const/16 v22, 0x1

    const/16 v23, 0x64

    const/16 v24, 0xe

    const/16 v25, 0xa

    new-instance v9, Landroid/graphics/Point;

    invoke-direct {v9, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    move-object/from16 v20, v7

    move-object/from16 v26, v9

    invoke-direct/range {v20 .. v26}, Lcom/android/settings/widget/QQAssetAnimView$QQAssetInfo;-><init>(Ljava/lang/String;IIIILandroid/graphics/Point;)V

    aput-object v7, v8, v6

    move-object v5, v8

    goto/16 :goto_0

    .line 307
    :cond_0
    if-ne v1, v12, :cond_1

    .line 308
    iget-object v4, v0, Lcom/android/settings/HandyGestureSettings;->nbQqanimActionExample2:Lcom/android/settings/widget/QQAssetAnimView;

    .line 309
    new-array v8, v8, [Lcom/android/settings/widget/QQAssetAnimView$QQAssetInfo;

    new-instance v20, Lcom/android/settings/widget/QQAssetAnimView$QQAssetInfo;

    const-string v14, "QQAnim/handy2"

    const/4 v15, 0x1

    const/16 v16, 0x64

    const/16 v17, 0x0

    const/16 v18, 0xa

    new-instance v13, Landroid/graphics/Point;

    invoke-direct {v13, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    move-object/from16 v19, v13

    move-object/from16 v13, v20

    invoke-direct/range {v13 .. v19}, Lcom/android/settings/widget/QQAssetAnimView$QQAssetInfo;-><init>(Ljava/lang/String;IIIILandroid/graphics/Point;)V

    aput-object v20, v8, v11

    new-instance v13, Lcom/android/settings/widget/QQAssetAnimView$QQAssetInfo;

    const-string v22, "QQAnim/handy2"

    const/16 v23, 0x12

    const/16 v24, 0x64

    const/16 v25, 0x0

    const/16 v26, 0x1

    new-instance v14, Landroid/graphics/Point;

    invoke-direct {v14, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    move-object/from16 v21, v13

    move-object/from16 v27, v14

    invoke-direct/range {v21 .. v27}, Lcom/android/settings/widget/QQAssetAnimView$QQAssetInfo;-><init>(Ljava/lang/String;IIIILandroid/graphics/Point;)V

    aput-object v13, v8, v12

    new-instance v13, Lcom/android/settings/widget/QQAssetAnimView$QQAssetInfo;

    const-string v16, "QQAnim/handy2"

    const/16 v17, 0x1

    const/16 v18, 0x64

    const/16 v19, 0x11

    const/16 v20, 0xf

    new-instance v14, Landroid/graphics/Point;

    invoke-direct {v14, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    move-object v15, v13

    move-object/from16 v21, v14

    invoke-direct/range {v15 .. v21}, Lcom/android/settings/widget/QQAssetAnimView$QQAssetInfo;-><init>(Ljava/lang/String;IIIILandroid/graphics/Point;)V

    aput-object v13, v8, v10

    new-instance v10, Lcom/android/settings/widget/QQAssetAnimView$QQAssetInfo;

    const-string v22, "QQAnim/handy2"

    const/16 v23, 0x1

    const/16 v26, 0xa

    new-instance v13, Landroid/graphics/Point;

    invoke-direct {v13, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    move-object/from16 v21, v10

    move-object/from16 v27, v13

    invoke-direct/range {v21 .. v27}, Lcom/android/settings/widget/QQAssetAnimView$QQAssetInfo;-><init>(Ljava/lang/String;IIIILandroid/graphics/Point;)V

    aput-object v10, v8, v9

    new-instance v9, Lcom/android/settings/widget/QQAssetAnimView$QQAssetInfo;

    const-string v15, "QQAnim/handy2"

    const/16 v16, 0x12

    const/16 v17, 0x64

    const/16 v18, 0x0

    const/16 v19, 0x1

    new-instance v10, Landroid/graphics/Point;

    invoke-direct {v10, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    move-object v14, v9

    move-object/from16 v20, v10

    invoke-direct/range {v14 .. v20}, Lcom/android/settings/widget/QQAssetAnimView$QQAssetInfo;-><init>(Ljava/lang/String;IIIILandroid/graphics/Point;)V

    aput-object v9, v8, v7

    new-instance v7, Lcom/android/settings/widget/QQAssetAnimView$QQAssetInfo;

    const-string v21, "QQAnim/handy2"

    const/16 v22, 0x1

    const/16 v23, 0x64

    const/16 v24, 0x11

    const/16 v25, 0xf

    new-instance v9, Landroid/graphics/Point;

    invoke-direct {v9, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    move-object/from16 v20, v7

    move-object/from16 v26, v9

    invoke-direct/range {v20 .. v26}, Lcom/android/settings/widget/QQAssetAnimView$QQAssetInfo;-><init>(Ljava/lang/String;IIIILandroid/graphics/Point;)V

    aput-object v7, v8, v6

    move-object v5, v8

    goto/16 :goto_0

    .line 317
    :cond_1
    if-ne v1, v10, :cond_2

    .line 318
    iget-object v4, v0, Lcom/android/settings/HandyGestureSettings;->nbQqanimActionExample3:Lcom/android/settings/widget/QQAssetAnimView;

    .line 319
    new-array v8, v8, [Lcom/android/settings/widget/QQAssetAnimView$QQAssetInfo;

    new-instance v20, Lcom/android/settings/widget/QQAssetAnimView$QQAssetInfo;

    const-string v14, "QQAnim/handy3"

    const/4 v15, 0x1

    const/16 v16, 0x64

    const/16 v17, 0x0

    const/16 v18, 0xa

    new-instance v13, Landroid/graphics/Point;

    invoke-direct {v13, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    move-object/from16 v19, v13

    move-object/from16 v13, v20

    invoke-direct/range {v13 .. v19}, Lcom/android/settings/widget/QQAssetAnimView$QQAssetInfo;-><init>(Ljava/lang/String;IIIILandroid/graphics/Point;)V

    aput-object v20, v8, v11

    new-instance v13, Lcom/android/settings/widget/QQAssetAnimView$QQAssetInfo;

    const-string v22, "QQAnim/handy3"

    const/16 v23, 0x17

    const/16 v24, 0x64

    const/16 v25, 0x0

    const/16 v26, 0x1

    new-instance v14, Landroid/graphics/Point;

    invoke-direct {v14, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    move-object/from16 v21, v13

    move-object/from16 v27, v14

    invoke-direct/range {v21 .. v27}, Lcom/android/settings/widget/QQAssetAnimView$QQAssetInfo;-><init>(Ljava/lang/String;IIIILandroid/graphics/Point;)V

    aput-object v13, v8, v12

    new-instance v13, Lcom/android/settings/widget/QQAssetAnimView$QQAssetInfo;

    const-string v16, "QQAnim/handy3"

    const/16 v17, 0x1

    const/16 v18, 0x64

    const/16 v19, 0x16

    const/16 v20, 0xf

    new-instance v14, Landroid/graphics/Point;

    invoke-direct {v14, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    move-object v15, v13

    move-object/from16 v21, v14

    invoke-direct/range {v15 .. v21}, Lcom/android/settings/widget/QQAssetAnimView$QQAssetInfo;-><init>(Ljava/lang/String;IIIILandroid/graphics/Point;)V

    aput-object v13, v8, v10

    new-instance v10, Lcom/android/settings/widget/QQAssetAnimView$QQAssetInfo;

    const-string v22, "QQAnim/handy3"

    const/16 v23, 0x1

    const/16 v26, 0xa

    new-instance v13, Landroid/graphics/Point;

    invoke-direct {v13, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    move-object/from16 v21, v10

    move-object/from16 v27, v13

    invoke-direct/range {v21 .. v27}, Lcom/android/settings/widget/QQAssetAnimView$QQAssetInfo;-><init>(Ljava/lang/String;IIIILandroid/graphics/Point;)V

    aput-object v10, v8, v9

    new-instance v9, Lcom/android/settings/widget/QQAssetAnimView$QQAssetInfo;

    const-string v15, "QQAnim/handy3"

    const/16 v16, 0x17

    const/16 v17, 0x64

    const/16 v18, 0x0

    const/16 v19, 0x1

    new-instance v10, Landroid/graphics/Point;

    invoke-direct {v10, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    move-object v14, v9

    move-object/from16 v20, v10

    invoke-direct/range {v14 .. v20}, Lcom/android/settings/widget/QQAssetAnimView$QQAssetInfo;-><init>(Ljava/lang/String;IIIILandroid/graphics/Point;)V

    aput-object v9, v8, v7

    new-instance v7, Lcom/android/settings/widget/QQAssetAnimView$QQAssetInfo;

    const-string v21, "QQAnim/handy3"

    const/16 v22, 0x1

    const/16 v23, 0x64

    const/16 v24, 0x16

    const/16 v25, 0xf

    new-instance v9, Landroid/graphics/Point;

    invoke-direct {v9, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    move-object/from16 v20, v7

    move-object/from16 v26, v9

    invoke-direct/range {v20 .. v26}, Lcom/android/settings/widget/QQAssetAnimView$QQAssetInfo;-><init>(Ljava/lang/String;IIIILandroid/graphics/Point;)V

    aput-object v7, v8, v6

    move-object v5, v8

    goto/16 :goto_0

    .line 327
    :cond_2
    if-ne v1, v9, :cond_3

    .line 328
    iget-object v4, v0, Lcom/android/settings/HandyGestureSettings;->nbQqanimActionExample4:Lcom/android/settings/widget/QQAssetAnimView;

    .line 329
    new-array v8, v8, [Lcom/android/settings/widget/QQAssetAnimView$QQAssetInfo;

    new-instance v20, Lcom/android/settings/widget/QQAssetAnimView$QQAssetInfo;

    const-string v14, "QQAnim/handy_gsc"

    const/4 v15, 0x1

    const/16 v16, 0x64

    const/16 v17, 0x0

    const/16 v18, 0xa

    new-instance v13, Landroid/graphics/Point;

    invoke-direct {v13, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    move-object/from16 v19, v13

    move-object/from16 v13, v20

    invoke-direct/range {v13 .. v19}, Lcom/android/settings/widget/QQAssetAnimView$QQAssetInfo;-><init>(Ljava/lang/String;IIIILandroid/graphics/Point;)V

    aput-object v20, v8, v11

    new-instance v13, Lcom/android/settings/widget/QQAssetAnimView$QQAssetInfo;

    const-string v22, "QQAnim/handy_gsc"

    const/16 v23, 0x19

    const/16 v24, 0x64

    const/16 v25, 0x0

    const/16 v26, 0x1

    new-instance v14, Landroid/graphics/Point;

    invoke-direct {v14, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    move-object/from16 v21, v13

    move-object/from16 v27, v14

    invoke-direct/range {v21 .. v27}, Lcom/android/settings/widget/QQAssetAnimView$QQAssetInfo;-><init>(Ljava/lang/String;IIIILandroid/graphics/Point;)V

    aput-object v13, v8, v12

    new-instance v13, Lcom/android/settings/widget/QQAssetAnimView$QQAssetInfo;

    const-string v16, "QQAnim/handy_gsc"

    const/16 v17, 0x1

    const/16 v18, 0x64

    const/16 v19, 0x18

    const/16 v20, 0xf

    new-instance v14, Landroid/graphics/Point;

    invoke-direct {v14, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    move-object v15, v13

    move-object/from16 v21, v14

    invoke-direct/range {v15 .. v21}, Lcom/android/settings/widget/QQAssetAnimView$QQAssetInfo;-><init>(Ljava/lang/String;IIIILandroid/graphics/Point;)V

    aput-object v13, v8, v10

    new-instance v10, Lcom/android/settings/widget/QQAssetAnimView$QQAssetInfo;

    const-string v22, "QQAnim/handy_gsc"

    const/16 v23, 0x1

    const/16 v26, 0xa

    new-instance v13, Landroid/graphics/Point;

    invoke-direct {v13, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    move-object/from16 v21, v10

    move-object/from16 v27, v13

    invoke-direct/range {v21 .. v27}, Lcom/android/settings/widget/QQAssetAnimView$QQAssetInfo;-><init>(Ljava/lang/String;IIIILandroid/graphics/Point;)V

    aput-object v10, v8, v9

    new-instance v9, Lcom/android/settings/widget/QQAssetAnimView$QQAssetInfo;

    const-string v15, "QQAnim/handy_gsc"

    const/16 v16, 0x19

    const/16 v17, 0x64

    const/16 v18, 0x0

    const/16 v19, 0x1

    new-instance v10, Landroid/graphics/Point;

    invoke-direct {v10, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    move-object v14, v9

    move-object/from16 v20, v10

    invoke-direct/range {v14 .. v20}, Lcom/android/settings/widget/QQAssetAnimView$QQAssetInfo;-><init>(Ljava/lang/String;IIIILandroid/graphics/Point;)V

    aput-object v9, v8, v7

    new-instance v7, Lcom/android/settings/widget/QQAssetAnimView$QQAssetInfo;

    const-string v21, "QQAnim/handy_gsc"

    const/16 v22, 0x1

    const/16 v23, 0x64

    const/16 v24, 0x18

    const/16 v25, 0xf

    new-instance v9, Landroid/graphics/Point;

    invoke-direct {v9, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    move-object/from16 v20, v7

    move-object/from16 v26, v9

    invoke-direct/range {v20 .. v26}, Lcom/android/settings/widget/QQAssetAnimView$QQAssetInfo;-><init>(Ljava/lang/String;IIIILandroid/graphics/Point;)V

    aput-object v7, v8, v6

    move-object v5, v8

    .line 338
    :cond_3
    :goto_0
    if-eqz v4, :cond_4

    .line 339
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/android/settings/widget/QQAssetAnimView;->initAnimParam([Lcom/android/settings/widget/QQAssetAnimView$QQAssetInfo;Ljava/lang/String;)V

    .line 340
    invoke-virtual {v4, v12}, Lcom/android/settings/widget/QQAssetAnimView;->setLoop(Z)V

    .line 341
    invoke-virtual {v4, v12}, Lcom/android/settings/widget/QQAssetAnimView;->setAutoSize(Z)V

    .line 342
    iget-object v6, v0, Lcom/android/settings/HandyGestureSettings;->mAnimOwnerActivtiyState:Lcom/android/settings/widget/QQAssetAnimView$OwnerActivtiyState;

    invoke-virtual {v4, v6}, Lcom/android/settings/widget/QQAssetAnimView;->setOnOwnerActivtiyStateCallback(Lcom/android/settings/widget/QQAssetAnimView$OwnerActivtiyState;)V

    .line 343
    invoke-virtual {v4}, Lcom/android/settings/widget/QQAssetAnimView;->restartSelfPauseAnim()V

    .line 344
    invoke-virtual {v4, v11}, Lcom/android/settings/widget/QQAssetAnimView;->setVisibility(I)V

    .line 346
    :cond_4
    return-void
.end method

.method public initWidthHeightOffset(Landroid/app/Activity;)V
    .locals 7
    .param p1, "activity"    # Landroid/app/Activity;

    .line 271
    invoke-virtual {p0, p1}, Lcom/android/settings/HandyGestureSettings;->getDisplayMetrics(Landroid/app/Activity;)Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 272
    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07015d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 273
    .local v1, "sizeW":I
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07015c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 274
    .local v2, "sizeH":I
    iget v3, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v4, 0x40200000    # 2.5f

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    iget v3, v0, Landroid/util/DisplayMetrics;->density:F

    sub-float v3, v4, v3

    .line 275
    .local v3, "iFloatDensity":F
    :goto_0
    iget v4, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v4, v4

    const/high16 v5, 0x42000000

    const/high16 v6, 0x40c00000    # 6.0f

    mul-float/2addr v6, v3

    add-float/2addr v5, v6

    mul-float/2addr v4, v5

    const/high16 v5, 0x42c80000    # 100.0f

    div-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, p0, Lcom/android/settings/HandyGestureSettings;->mAnimSizeH:I

    .line 276
    iget v4, p0, Lcom/android/settings/HandyGestureSettings;->mAnimSizeH:I

    mul-int/2addr v4, v1

    div-int/2addr v4, v2

    iput v4, p0, Lcom/android/settings/HandyGestureSettings;->mAnimSizeW:I

    .line 278
    iget v4, p0, Lcom/android/settings/HandyGestureSettings;->mAnimSizeW:I

    mul-int/lit16 v4, v4, 0x82

    div-int/lit16 v4, v4, 0x28a

    iput v4, p0, Lcom/android/settings/HandyGestureSettings;->mOffsetLeft:I

    .line 280
    iget v4, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v5, 0x40000000    # 2.0f

    cmpl-float v4, v4, v5

    const/high16 v6, 0x3e800000

    if-lez v4, :cond_1

    goto :goto_1

    :cond_1
    iget v4, v0, Landroid/util/DisplayMetrics;->density:F

    sub-float/2addr v5, v4

    const/high16 v4, 0x3f400000    # 0.75f

    mul-float/2addr v5, v4

    add-float/2addr v6, v5

    :goto_1
    move v3, v6

    .line 281
    iget v4, p0, Lcom/android/settings/HandyGestureSettings;->mAnimSizeH:I

    mul-int/lit16 v4, v4, 0x8a

    div-int/lit16 v4, v4, 0x1f4

    int-to-float v4, v4

    .line 282
    .local v4, "fOffset":F
    const v5, 0x3f333333

    const/high16 v6, 0x3f000000    # 0.5f

    mul-float/2addr v6, v3

    sub-float/2addr v5, v6

    .line 283
    .local v5, "ioffset":F
    mul-float v6, v4, v5

    float-to-int v6, v6

    iput v6, p0, Lcom/android/settings/HandyGestureSettings;->mOffsetTop:I

    .line 284
    const/high16 v6, 0x3f800000    # 1.0f

    sub-float v6, v5, v6

    mul-float/2addr v6, v4

    float-to-int v6, v6

    iput v6, p0, Lcom/android/settings/HandyGestureSettings;->mOffsetBottom:I

    .line 285
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "icicle"    # Landroid/os/Bundle;

    .line 123
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 124
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 129
    invoke-virtual {p0}, Lcom/android/settings/HandyGestureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 130
    .local v0, "activity":Landroid/app/Activity;
    const/4 v1, 0x0

    const v2, 0x7f0d012e

    invoke-virtual {p1, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 132
    .local v2, "parent":Landroid/view/View;
    const v3, 0x7f0a028b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/settings/widget/QQAssetAnimView;

    iput-object v3, p0, Lcom/android/settings/HandyGestureSettings;->nbQqanimActionExample1:Lcom/android/settings/widget/QQAssetAnimView;

    .line 133
    const v3, 0x7f0a028c

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/settings/widget/QQAssetAnimView;

    iput-object v3, p0, Lcom/android/settings/HandyGestureSettings;->nbQqanimActionExample2:Lcom/android/settings/widget/QQAssetAnimView;

    .line 134
    const v3, 0x7f0a028d

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/settings/widget/QQAssetAnimView;

    iput-object v3, p0, Lcom/android/settings/HandyGestureSettings;->nbQqanimActionExample3:Lcom/android/settings/widget/QQAssetAnimView;

    .line 135
    const v3, 0x7f0a028e

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/settings/widget/QQAssetAnimView;

    iput-object v3, p0, Lcom/android/settings/HandyGestureSettings;->nbQqanimActionExample4:Lcom/android/settings/widget/QQAssetAnimView;

    .line 136
    const v3, 0x7f0a043e

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Switch;

    iput-object v3, p0, Lcom/android/settings/HandyGestureSettings;->mSwitchGestureScreenCapture:Landroid/widget/Switch;

    .line 137
    const v3, 0x7f0a043d

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Switch;

    iput-object v3, p0, Lcom/android/settings/HandyGestureSettings;->mSwitchHandyGesture:Landroid/widget/Switch;

    .line 138
    const v3, 0x7f0a036f

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iput-object v3, p0, Lcom/android/settings/HandyGestureSettings;->rl_no_handy_gesture_root4:Landroid/view/ViewGroup;

    .line 139
    const v3, 0x7f0a0277

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/HandyGestureSettings;->middle_filter_splite_line4:Landroid/view/View;

    .line 141
    invoke-virtual {p0}, Lcom/android/settings/HandyGestureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/settings/HandyGestureSettings;->initWidthHeightOffset(Landroid/app/Activity;)V

    .line 143
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/settings/SettingsApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "enable_magic_screenshot"

    const/4 v5, -0x1

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/settings/HandyGestureSettings;->mGestureScreenCapture:I

    .line 144
    iget v3, p0, Lcom/android/settings/HandyGestureSettings;->mGestureScreenCapture:I

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_1

    iget v3, p0, Lcom/android/settings/HandyGestureSettings;->mGestureScreenCapture:I

    if-ne v3, v4, :cond_0

    goto :goto_0

    .line 151
    :cond_0
    iget-object v3, p0, Lcom/android/settings/HandyGestureSettings;->rl_no_handy_gesture_root4:Landroid/view/ViewGroup;

    const/16 v6, 0x8

    invoke-virtual {v3, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 152
    iget-object v3, p0, Lcom/android/settings/HandyGestureSettings;->middle_filter_splite_line4:Landroid/view/View;

    const/4 v6, 0x4

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 146
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/android/settings/HandyGestureSettings;->mSwitchGestureScreenCapture:Landroid/widget/Switch;

    invoke-virtual {v3, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 147
    iget-object v3, p0, Lcom/android/settings/HandyGestureSettings;->mSwitchGestureScreenCapture:Landroid/widget/Switch;

    iget v6, p0, Lcom/android/settings/HandyGestureSettings;->mGestureScreenCapture:I

    if-ne v6, v4, :cond_2

    move v6, v4

    goto :goto_1

    :cond_2
    move v6, v5

    :goto_1
    invoke-virtual {v3, v6}, Landroid/widget/Switch;->setChecked(Z)V

    .line 148
    iget-object v3, p0, Lcom/android/settings/HandyGestureSettings;->mSwitchGestureScreenCapture:Landroid/widget/Switch;

    iget-object v6, p0, Lcom/android/settings/HandyGestureSettings;->mSwitchHandyGestureScreenCaptureChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v3, v6}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 155
    :goto_2
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/settings/SettingsApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "dsl_handy_cut_screen_switch_action"

    invoke-static {v3, v6, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 156
    .local v3, "iRet":I
    iget-object v6, p0, Lcom/android/settings/HandyGestureSettings;->mSwitchHandyGesture:Landroid/widget/Switch;

    invoke-virtual {v6, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 157
    iget-object v1, p0, Lcom/android/settings/HandyGestureSettings;->mSwitchHandyGesture:Landroid/widget/Switch;

    if-ne v3, v4, :cond_3

    goto :goto_3

    :cond_3
    move v4, v5

    :goto_3
    invoke-virtual {v1, v4}, Landroid/widget/Switch;->setChecked(Z)V

    .line 158
    iget-object v1, p0, Lcom/android/settings/HandyGestureSettings;->mSwitchHandyGesture:Landroid/widget/Switch;

    iget-object v4, p0, Lcom/android/settings/HandyGestureSettings;->mSwitchHandyGestureChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v1, v4}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 160
    const v1, 0x7f0a0376

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iget v4, p0, Lcom/android/settings/HandyGestureSettings;->mOffsetLeft:I

    iget v6, p0, Lcom/android/settings/HandyGestureSettings;->mOffsetBottom:I

    invoke-virtual {v1, v4, v5, v5, v6}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 161
    const v1, 0x7f0a0377

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iget v4, p0, Lcom/android/settings/HandyGestureSettings;->mOffsetLeft:I

    iget v6, p0, Lcom/android/settings/HandyGestureSettings;->mOffsetBottom:I

    invoke-virtual {v1, v4, v5, v5, v6}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 162
    const v1, 0x7f0a0378

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iget v4, p0, Lcom/android/settings/HandyGestureSettings;->mOffsetLeft:I

    iget v6, p0, Lcom/android/settings/HandyGestureSettings;->mOffsetBottom:I

    invoke-virtual {v1, v4, v5, v5, v6}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 163
    const v1, 0x7f0a0379

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iget v4, p0, Lcom/android/settings/HandyGestureSettings;->mOffsetLeft:I

    div-int/lit8 v4, v4, 0x2

    invoke-virtual {v1, v5, v5, v4, v5}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 165
    const v1, 0x7f0a0372

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iget v4, p0, Lcom/android/settings/HandyGestureSettings;->mOffsetTop:I

    invoke-virtual {v1, v5, v4, v5, v5}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 166
    const v1, 0x7f0a0373

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iget v4, p0, Lcom/android/settings/HandyGestureSettings;->mOffsetTop:I

    invoke-virtual {v1, v5, v4, v5, v5}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 167
    const v1, 0x7f0a0374

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iget v4, p0, Lcom/android/settings/HandyGestureSettings;->mOffsetTop:I

    invoke-virtual {v1, v5, v4, v5, v5}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 168
    const v1, 0x7f0a0375

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iget v4, p0, Lcom/android/settings/HandyGestureSettings;->mOffsetTop:I

    div-int/lit8 v4, v4, 0xa

    iget v6, p0, Lcom/android/settings/HandyGestureSettings;->mOffsetTop:I

    mul-int/lit8 v6, v6, 0x9

    div-int/lit8 v6, v6, 0xa

    invoke-virtual {v1, v5, v4, v5, v6}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 170
    iget-object v1, p0, Lcom/android/settings/HandyGestureSettings;->mHandler:Landroid/os/Handler;

    const v4, 0x10101

    const-wide/16 v5, 0xa

    invoke-virtual {v1, v4, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 171
    iget-object v1, p0, Lcom/android/settings/HandyGestureSettings;->mHandler:Landroid/os/Handler;

    const v4, 0x10102

    const-wide/16 v5, 0x96

    invoke-virtual {v1, v4, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 172
    iget-object v1, p0, Lcom/android/settings/HandyGestureSettings;->mHandler:Landroid/os/Handler;

    const v4, 0x10103

    const-wide/16 v5, 0xc8

    invoke-virtual {v1, v4, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 173
    iget-object v1, p0, Lcom/android/settings/HandyGestureSettings;->mHandler:Landroid/os/Handler;

    const v4, 0x10104

    const-wide/16 v5, 0x1

    invoke-virtual {v1, v4, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 175
    return-object v2
.end method

.method public onDestroyView()V
    .locals 1

    .line 200
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    .line 202
    iget-object v0, p0, Lcom/android/settings/HandyGestureSettings;->nbQqanimActionExample1:Lcom/android/settings/widget/QQAssetAnimView;

    invoke-virtual {p0, v0}, Lcom/android/settings/HandyGestureSettings;->destroyQQAssetAnimView(Lcom/android/settings/widget/QQAssetAnimView;)V

    .line 203
    iget-object v0, p0, Lcom/android/settings/HandyGestureSettings;->nbQqanimActionExample2:Lcom/android/settings/widget/QQAssetAnimView;

    invoke-virtual {p0, v0}, Lcom/android/settings/HandyGestureSettings;->destroyQQAssetAnimView(Lcom/android/settings/widget/QQAssetAnimView;)V

    .line 204
    iget-object v0, p0, Lcom/android/settings/HandyGestureSettings;->nbQqanimActionExample3:Lcom/android/settings/widget/QQAssetAnimView;

    invoke-virtual {p0, v0}, Lcom/android/settings/HandyGestureSettings;->destroyQQAssetAnimView(Lcom/android/settings/widget/QQAssetAnimView;)V

    .line 205
    iget-object v0, p0, Lcom/android/settings/HandyGestureSettings;->nbQqanimActionExample4:Lcom/android/settings/widget/QQAssetAnimView;

    invoke-virtual {p0, v0}, Lcom/android/settings/HandyGestureSettings;->destroyQQAssetAnimView(Lcom/android/settings/widget/QQAssetAnimView;)V

    .line 206
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 250
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 251
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/HandyGestureSettings;->isOnPaused:Z

    .line 252
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 238
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 239
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/HandyGestureSettings;->isOnPaused:Z

    .line 240
    iget-object v0, p0, Lcom/android/settings/HandyGestureSettings;->nbQqanimActionExample1:Lcom/android/settings/widget/QQAssetAnimView;

    invoke-virtual {v0}, Lcom/android/settings/widget/QQAssetAnimView;->forceRestartSelfPauseAnim()V

    .line 241
    iget-object v0, p0, Lcom/android/settings/HandyGestureSettings;->nbQqanimActionExample2:Lcom/android/settings/widget/QQAssetAnimView;

    invoke-virtual {v0}, Lcom/android/settings/widget/QQAssetAnimView;->forceRestartSelfPauseAnim()V

    .line 242
    iget-object v0, p0, Lcom/android/settings/HandyGestureSettings;->nbQqanimActionExample3:Lcom/android/settings/widget/QQAssetAnimView;

    invoke-virtual {v0}, Lcom/android/settings/widget/QQAssetAnimView;->forceRestartSelfPauseAnim()V

    .line 243
    iget v0, p0, Lcom/android/settings/HandyGestureSettings;->mGestureScreenCapture:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/settings/HandyGestureSettings;->mGestureScreenCapture:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 244
    :cond_0
    iget-object v0, p0, Lcom/android/settings/HandyGestureSettings;->nbQqanimActionExample4:Lcom/android/settings/widget/QQAssetAnimView;

    invoke-virtual {v0}, Lcom/android/settings/widget/QQAssetAnimView;->forceRestartSelfPauseAnim()V

    .line 246
    :cond_1
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .line 232
    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 234
    return-void
.end method
